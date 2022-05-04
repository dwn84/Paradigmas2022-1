<?php
class mvcControlller{

    public function plantilla(){
        include "views/templates.php";
    }

    public function direccionarPaginas(){
        if(!isset($_GET["action"])){
            $enlaces = 0;
        }else{
            $enlaces = $_GET["action"];
        }
        $cargarpagina = modeloPaginas::url($enlaces);
        include $cargarpagina;
    }

}