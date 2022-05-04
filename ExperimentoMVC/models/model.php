<?php

class modeloPaginas{
    public static function url($cod){
        switch($cod){
            case 0:
                $modulo = "inicio"; 
                break;
            case 1:
                $modulo = "nosotros"; 
                break;
            case 2:
                $modulo = "servicios"; 
                break;
            case 3:
                $modulo = "contactenos"; 
                break;
            default:
                $modulo = "inicio"; 
                break;                
        }
        $ruta = "views/$modulo.php";
        return $ruta;
    }

}

?>