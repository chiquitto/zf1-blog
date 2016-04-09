<?php

class AdmPostController extends Zend_Controller_Action {

    public function indexAction() {
        $posts = Zend_Db_Table::getDefaultAdapter()
                ->select()
                ->from('post')
                ->joinInner('categoria', 'categoria.idcategoria = post.idcategoria', array('categoria'))
                ->order('idpost desc')
                ->query()
                ->fetchAll()
        ;
        $this->view->posts = $posts;
    }

    public function createAction() {
        $form = new Application_Form_Post();

        if ($this->getRequest()->isPost()) {
            $values = $this->getAllParams();
            if ($form->isValid($values)) {
                $model = new Application_Model_Post();

                $vo = new Application_Model_Vo_Post();
                $vo->setIdcategoria($form->getValue('idcategoria'));
                $vo->setIdadmin(1);
                $vo->setTitulo($form->getValue('titulo'));
                $vo->setTexto($form->getValue('texto'));

                $model->salvar($vo);

                $flashMessenger = $this->_helper->FlashMessenger;
                $flashMessenger->addMessage('Post salvo!');

                $this->_helper->redirector->gotoSimpleAndExit('index');
            }
        }

        $this->view->form = $form;
    }

    public function deleteAction() {
        $idpost = (int) $this->getParam('idpost');
        $model = new Application_Model_Post();

        $flashMessenger = $this->_helper->FlashMessenger;

        try {
            $model->apagar($idpost);
            $flashMessenger->addMessage('Post apagado!');
        } catch (Application_Model_Exception $exc) {
            $flashMessenger->addMessage($exc->getMessage());
        }

        $this->_helper->redirector->gotoSimpleAndExit('index');
    }

    public function updateAction() {
        $flashMessenger = $this->_helper->FlashMessenger;

        $idpost = (int) $this->getParam('idpost');
        $tb = new Application_Model_DbTable_Post();
        $postRow = $tb->fetchRow('idpost = ' . $idpost);

        if (!$postRow) {
            $flashMessenger->addMessage('Post inexistente!');
            $this->_helper->redirector->gotoSimpleAndExit('index');
        }

        $form = new Application_Form_Post();

        if ($this->getRequest()->isPost()) {
            $values = $this->getAllParams();
            if ($form->isValid($values)) {
                $model = new Application_Model_Post();

                $vo = new Application_Model_Vo_Post();
                $vo->setIdpost($form->getValue('idpost'));
                $vo->setIdcategoria($form->getValue('idcategoria'));
                $vo->setTitulo($form->getValue('titulo'));
                $vo->setTexto($form->getValue('texto'));

                $model->atualizar($vo);

                $flashMessenger->addMessage('Post atualizada!');

                $this->_helper->redirector->gotoSimpleAndExit('index');
            }
        } else {
            $form->populate(array(
                'idpost' => $postRow->idpost,
                'idcategoria' => $postRow->idcategoria,
                'titulo' => $postRow->titulo,
                'texto' => $postRow->texto,
            ));
        }

        $this->view->form = $form;
    }

}
