<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {

    public function _initLoader() {
        $loader = Zend_Loader_Autoloader::getInstance();
        $loader->registerNamespace('Blog_');
    }

    public function _initSession() {
        $session = new Zend_Session_Namespace('Blog');
        Zend_Registry::set('session', $session);
    }

    public function _initConfig() {
        $config = new Zend_Config($this->getApplication()->getOptions(), true);
        Zend_Registry::set('config', $config);
    }

    protected function _initDoctype() {
        $this->bootstrap('view');
        $view = $this->getResource('view');
        $view->doctype('HTML5');
    }

}
