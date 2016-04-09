<?php

class LoginController extends Blog_Controller_Action {

    public function indexAction() {
        $form = new Application_Form_Login();

        if ($this->getRequest()->isPost()) {
            $values = $this->getAllParams();
            if ($form->isValid($values)) {

                $authDB = new Zend_Auth_Adapter_DbTable(
                        Zend_Db_Table_Abstract::getDefaultAdapter()
                );
                $authDB->setTableName('admin');
                $authDB->setIdentityColumn('email');
                $authDB->setCredentialColumn('senha');
                $authDB->setIdentity($form->getValue('email'));
                $authDB->setCredential($form->getValue('senha'));

                $auth = Zend_Auth::getInstance();
                $autenticar = $auth->authenticate($authDB);

                if ($autenticar->isValid()) {
                    $autenticacao = $authDB->getResultRowObject(null, array('senha'));
                    $auth->getStorage()->write($autenticacao);

                    $this->_helper->redirector->gotoSimpleAndExit('index', 'post');
                } else {
                    echo 'Login ou senha incorretos';
                    exit;
                }
            }
        }

        $this->view->form = $form;
    }

}
