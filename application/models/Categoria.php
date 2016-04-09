<?php

class Application_Model_Categoria {

    public function salvar(Application_Model_Vo_Categoria $categoria) {
        $tb = new Application_Model_DbTable_Categoria();
        
        $tb->insert(array(
            'categoria' => $categoria->getCategoria(),
        ));
        
        $categoria->setIdcategoria($tb->getAdapter()->lastInsertId());
    }

}
