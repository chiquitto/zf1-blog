<?php

class Application_Model_Vo_Post {

    private $idpost;
    private $idcategoria;
    private $idadmin;
    private $titulo;
    private $texto;

    function getIdpost() {
        return $this->idpost;
    }

    function getIdcategoria() {
        return $this->idcategoria;
    }

    function getIdadmin() {
        return $this->idadmin;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getTexto() {
        return $this->texto;
    }

    function setIdpost($idpost) {
        $this->idpost = $idpost;
    }

    function setIdcategoria($idcategoria) {
        $this->idcategoria = $idcategoria;
    }

    function setIdadmin($idadmin) {
        $this->idadmin = $idadmin;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setTexto($texto) {
        $this->texto = $texto;
    }

}
