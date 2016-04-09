<?php

class IndexController extends Zend_Controller_Action
{

    public function indexAction()
    {
        $select = Zend_Db_Table::getDefaultAdapter()
                ->select()
                ->from('post')
                ->joinInner('categoria', 'categoria.idcategoria = post.idcategoria', array('categoria'))
                ->order('idpost desc');
        
        $idcategoria = (int) $this->getParam('idcategoria');
        if ($idcategoria > 0) {
            $select->where('post.idcategoria = ?', $idcategoria);
        }
        
        $posts = $select
                ->query()
                ->fetchAll()
        ;
        $this->view->posts = $posts;
    }
    
    public function categoriasAction()
    {
        $catTb = new Application_Model_DbTable_Categoria();
        $this->view->categorias = $catTb->fetchAll();
    }
    
    public function postAction() {
        $idpost = (int) $this->getParam('idpost');
        
        $post = Zend_Db_Table::getDefaultAdapter()
                ->select()
                ->from('post')
                ->joinInner('categoria', 'categoria.idcategoria = post.idcategoria', array('categoria'))
                ->where('idpost = ?', $idpost)
                ->order('idpost desc')
                ->query()
                ->fetch()
        ;
        $this->view->post = $post;
    }


}

