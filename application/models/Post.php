<?php

class Application_Model_Post {

    public function apagar($idpost) {
        $tb = new Application_Model_DbTable_Post();
        $tb->delete('idpost = ' . $idpost);
    }

    public function atualizar(Application_Model_Vo_Post $post) {
        $tb = new Application_Model_DbTable_Post();

        $tb->update(array(
            'idcategoria' => $post->getIdcategoria(),
            'titulo' => $post->getTitulo(),
            'texto' => $post->getTexto(),
                ), 'idpost = ' . $post->getIdpost());
    }

    public function salvar(Application_Model_Vo_Post $post) {
        $tb = new Application_Model_DbTable_Post();

        $tb->insert(array(
            'idcategoria' => $post->getIdcategoria(),
            'idadmin' => $post->getIdadmin(),
            'titulo' => $post->getTitulo(),
            'texto' => $post->getTexto(),
        ));

        $post->setIdpost($tb->getAdapter()->lastInsertId());
    }

}
