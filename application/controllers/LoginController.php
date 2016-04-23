<?php

class LoginController extends Blog_Controller_Action {

    public function indexAction() {
        $form = new Application_Form_Login();
        
        if ($this->getRequest()->isPost()) {
            $values = $this->getAllParams();
            if ($form->isValid($values)) {
                // autenticacao do usuario
            }
        }
        
        $this->view->form = $form;
    }

    public function logoutAction() {
        
    }

}
