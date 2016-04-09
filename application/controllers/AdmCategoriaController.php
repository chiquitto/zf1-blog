<?php

class AdmCategoriaController extends Zend_Controller_Action {

    public function indexAction() {
        $tb = new Application_Model_DbTable_Categoria();
        $this->view->categorias = $tb->fetchAll();
    }

    public function createAction() {
        $form = new Application_Form_Categoria();

        if ($this->getRequest()->isPost()) {
            $values = $this->getAllParams();
            if ($form->isValid($values)) {
                $model = new Application_Model_Categoria();

                $vo = new Application_Model_Vo_Categoria();
                $vo->setCategoria($form->getValue('categoria'));

                $model->salvar($vo);

                $flashMessenger = $this->_helper->FlashMessenger;
                $flashMessenger->addMessage('Categoria salva!');

                $this->_helper->redirector->gotoSimpleAndExit('index');
            }
        }

        $this->view->form = $form;
    }

    public function deleteAction() {
        $idcategoria = (int) $this->getParam('idcategoria');
        $model = new Application_Model_Categoria();

        $flashMessenger = $this->_helper->FlashMessenger;

        try {
            $model->apagar($idcategoria);
            $flashMessenger->addMessage('Categoria apagada!');
        } catch (Application_Model_Exception $exc) {
            $flashMessenger->addMessage($exc->getMessage());
        }

        $this->_helper->redirector->gotoSimpleAndExit('index');
    }

    public function updateAction() {
        $flashMessenger = $this->_helper->FlashMessenger;

        $idcategoria = (int) $this->getParam('idcategoria');
        $tb = new Application_Model_DbTable_Categoria();
        $categoriaRow = $tb->fetchRow('idcategoria = ' . $idcategoria);

        if (!$categoriaRow) {
            $flashMessenger->addMessage('Categoria inexistente!');
            $this->_helper->redirector->gotoSimpleAndExit('index');
        }

        $form = new Application_Form_Categoria();
        $form->setIdcategoria($idcategoria);

        if ($this->getRequest()->isPost()) {
            $values = $this->getAllParams();
            if ($form->isValid($values)) {
                $model = new Application_Model_Categoria();

                $vo = new Application_Model_Vo_Categoria();
                $vo->setIdcategoria($form->getValue('idcategoria'));
                $vo->setCategoria($form->getValue('categoria'));

                $model->atualizar($vo);

                $flashMessenger->addMessage('Categoria atualizada!');

                $this->_helper->redirector->gotoSimpleAndExit('index');
            }
        } else {
            $form->populate(array(
                'idcategoria' => $categoriaRow->idcategoria,
                'categoria' => $categoriaRow->categoria,
            ));
        }

        $this->view->form = $form;
    }

}
