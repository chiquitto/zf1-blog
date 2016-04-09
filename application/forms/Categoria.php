<?php

class Application_Form_Categoria extends Zend_Form {

    public function init() {
        $this->setMethod('post');

        $idcategoria = new Zend_Form_Element_Hidden('idcategoria');
        $this->addElement($idcategoria);

        $categoriaNaoRepetidoVal = new Zend_Validate_Db_NoRecordExists(array(
            'table' => 'categoria',
            'field' => 'categoria'
        ));

        $categoria = new Zend_Form_Element_Text('categoria', array(
            'label' => 'Nome da categoria',
            'required' => true,
        ));
        $categoria->addValidator($categoriaNaoRepetidoVal);
        $this->addElement($categoria);

        $submit = new Zend_Form_Element_Submit('submit', array(
            'label' => 'Salvar'
        ));
        $this->addElement($submit);
    }

}
