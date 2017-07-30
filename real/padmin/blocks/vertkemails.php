<?php
/**
 * ReOS is a vertical software for real estates.
 * Copyright 2010 IT ELAZOS S.L.
 *
 * This file is part of ReOS v2.x.x.
 *
 * ReOS is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * ReOS is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with ReOS.  If not, see <http://www.gnu.org/licenses/>.
 **/

/**
 * Lista de textos de los emails enviados en el ticketing.
 * Returns html into var html_out
 * @package blocks_admin
 **/

$PHP_SELF = $_SERVER['PHP_SELF'];
if (preg_match("/vertkemails.php/i",$PHP_SELF)) {
	Header("HTTP/1.0 404 Not Found");
	die();
}

global $nm;

$link_add[0]["href"]="pg=edttkemail&view=Add";
$link_add[0]["txt"]=""._ADD_VAL."";

$this->html_out .= $this->pgtitle($nm,true, $link_add);

if ($this->query("select SQL_CALC_FOUND_ROWS concat(id_msgtext,'&cod_lang=',cod_lang) id, id_msgtext cod, cod_lang,  txt_subject from ".$this->prefix."_tk_msgtext order by id_msgtext;")){
	$found=$this->found_rows();	
	$this->print_list($this->select_array(), 0,$found,"","pg=edttkemail&id_msgtext=",NULL,"",$found);
}else $this->add_msg(""._ERROR_DATS."");

?>
