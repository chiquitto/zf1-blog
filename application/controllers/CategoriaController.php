<?php

class CategoriaController extends Zend_Controller_Action {

    public function indexAction() {
        $tb = new Application_Model_DbTable_Categoria();
        $this->view->categorias = $tb->fetchAll();
    }
    
    public function createAction() {
        $form = new Application_Form_Categoria();
        
        if ($this->getRequest()->isPost()) {
            $values = $this->getAllParams();
            if ($form->isValid($values)) {
                $values = $form->getValues();
                
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

}
