<?php

class Application_Model_Categoria {

    public function apagar($idcategoria) {
        // Verificar se pode apagar categoria

        $val = new Zend_Validate_Db_NoRecordExists(array(
            'table' => 'post',
            'field' => 'idcategoria'
        ));

        if (!$val->isValid($idcategoria)) {
            throw new Application_Model_Exception('A categoria não pode ser apagada pois existem Posts');
        }
        
        $tb = new Application_Model_DbTable_Categoria();
        $tb->delete('idcategoria = ' . $idcategoria);
    }

    public function atualizar(Application_Model_Vo_Categoria $categoria) {
        $tb = new Application_Model_DbTable_Categoria();

        $tb->update(array(
            'categoria' => $categoria->getCategoria(),
                ), 'idcategoria = ' . $categoria->getIdcategoria());
    }

    public function salvar(Application_Model_Vo_Categoria $categoria) {
        $tb = new Application_Model_DbTable_Categoria();

        $tb->insert(array(
            'categoria' => $categoria->getCategoria(),
        ));

        $categoria->setIdcategoria($tb->getAdapter()->lastInsertId());
    }

}
