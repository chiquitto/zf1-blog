<?php

class Application_Form_Categoria extends Zend_Form {

    public function init() {
        $this->setMethod('post');

        

        $submit = new Zend_Form_Element_Submit('submit', array(
            'label' => 'Salvar'
        ));
        $this->addElement($submit);
    }

}
