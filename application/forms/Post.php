<?php

class Application_Form_Post extends Zend_Form {

    public function init() {
        $this->setMethod('post');

        $idpost = new Zend_Form_Element_Hidden('idpost');
        $this->addElement($idpost);
        
        $idcategoria = new Zend_Form_Element_Select('idcategoria', array(
            'label' => 'Categoria',
            'required' => true,
        ));
        
        $categoriaTb = new Application_Model_DbTable_Categoria();
        $categorias = $categoriaTb->fetchAll(null, 'categoria');
        $options = array('Selecione uma categoria');
        foreach($categorias as $categoria) {
            $options[$categoria['idcategoria']] = $categoria['categoria'];
        }
        $idcategoria->setMultiOptions($options);
        
        $idcategoria->addFilter(new Zend_Filter_Null());
        $this->addElement($idcategoria);
        
        $titulo = new Zend_Form_Element_Text('titulo', array(
            'label' => 'Título',
            'required' => true,
        ));
        $this->addElement($titulo);
        
        $texto = new Zend_Form_Element_Textarea('texto', array(
            'label' => 'Texto',
            'required' => true,
        ));
        $this->addElement($texto);

        $submit = new Zend_Form_Element_Submit('submit', array(
            'label' => 'Salvar'
        ));
        $this->addElement($submit);
    }

}
