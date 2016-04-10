<?php

// lembrar que deve ser protected
function _initAcl() {
    $acl = new Zend_Acl;
    $config = Zend_Registry::get('config');

    foreach ($config->acl->roles as $role => $parent) {
        if ($parent) {
            $acl->addRole(new Zend_Acl_Role($role), $parent);
        } else {
            $acl->addRole(new Zend_Acl_Role($role));
        }
    }
    foreach ($config->acl->resources as $r) {
        $acl->add(new Zend_Acl_Resource($r));
    }
    if (isset($config->acl->allow)) {
        foreach ($config->acl->allow as $role => $privilege) {
            foreach ($privilege as $p) {
                $privilege = explode('.', $p);
                $acl->allow($role, $privilege[0], $privilege[1]);
            }
        }
    }
    if (isset($config->acl->deny)) {
        foreach ($config->acl->deny as $role => $privilege) {
            foreach ($privilege as $p) {
                $privilege = explode('.', $p);
                $acl->deny($role, $privilege[0], $privilege[1]);
            }
        }
    }
    Zend_Registry::set('acl', $acl);
}
