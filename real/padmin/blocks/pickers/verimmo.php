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
 *Lista de immos con formulario de busqueda.
 *Sirve para "Mis, Mi equipo, todos".
 *Returns html into var html_out
 *@package blocks_admin
 **/

$PHP_SELF = $_SERVER['PHP_SELF'];
if (preg_match("/verimmo.php/i",$PHP_SELF)) {
	Header("HTTP/1.0 404 Not Found");
	die();
}

require_once(_DirINCLUDES."class_immo.php");
require_once(_DirINCLUDES."forms/forms.php");
require_once(_DirINCLUDES."class_pklist.php");
require_once(_DirINCLUDES."class_lovs.php");

$lovs= new lovs;
$lovs->getLovs('_LST_ORDER',_IDIOMA, true);
$lovs->getLovs('_LST_PRICE',_IDIOMA, true, "#");
$lovs->getLovs('_LST_TP_STATE',_IDIOMA);
$lovs->getLovs('_LST_TP_PROPIEDAD',_IDIOMA);
$lovs->getLovs('_LST_TP_SERVICIO',_IDIOMA);
$lovs->getLovs('_LST_TP_OFERTA',_IDIOMA);
$lovs->getLovs('_LST_DT_VAL',_IDIOMA);


global $pk;  // Picker control name
global $pos; // Position of the list field to send as a text to picker

global $keywords;
global $from;
global $view;


$id_org=$this->auth["id_org"];
$id_position=$this->auth["id_position"];

if (!isset($from)) $from=0;

$immo= new immo;

$form = new htmlform("form1","picker.php","GET",""._FIND."");
//$form->num_cols=2;
$form->add_textbox("ref_immo",""._REF_IMMO.":",10,10);
$form->add_static_listbox("tp_state",""._TP_STATE.":",";"._ANY.",".$form->convert(""._LST_TP_STATE.""));
$form->add_static_listbox("tp_propiedad",""._TP_PROPIEDAD.":",";"._ANY.",".$form->convert(""._LST_TP_PROPIEDAD.""));
$form->add_static_listbox("ind_oferta",""._IND_OFERTA.":",";"._ANY.",".$form->convert(""._LST_TP_OFERTA.""));
$form->add_static_listbox("tp_servicio",""._TP_SERVICIO.":",";"._ANY.",".$form->convert(""._LST_TP_SERVICIO.""));
$form->add_static_listbox("ind_isvalid",""._DT_VAL.":",";"._ANY.",".$form->convert(""._LST_DT_VAL.""));

$result=$immo->array_pob_zona($id_org,true);
$this->onload.="initDynamicOptionLists();";
$this->file_script="jscripts/dol.js";
$form->add_link_2listbox(""._TXT_POBLACION.":",""._TXT_ZONA.":","txt_poblacion","txt_zona",$result,""._ANY."");

$form->add_static_listbox("precio_min",_PRICE_MIN.":",_LST_PRICE, "#");
$form->add_static_listbox("order_by",""._ORDERBY.":","tp_servicio;"._TP_SERVICIO.",dt_create;"._TP_STATE.",tp_state;"._DT_CREATE.",dt_valid;"._DT_VALID.",precio;"._PRECIO.",ref_immo;"._REF_IMMO.",txt_poblacion;"._TXT_POBLACION.",tp_propiedad;"._TP_PROPIEDAD."");
$form->add_static_listbox("precio_max",""._PRICE_MAX.":",""._LST_PRICE."");
$form->add_static_listbox("in_order",_ORDER.":",_LST_ORDER, "#");
$form->add_hidden("data");
$form->fields["order_by"]->col=2;
$form->fields["in_order"]->col=2;
$form->fields["tp_state"]->col=2;
$form->fields["ind_oferta"]->col=2;
$form->fields["ind_isvalid"]->col=2;

if (!$form->process()){
	if (isset($keywords)) {parse_str(preg_replace("/,/","&",$keywords),$fields);
	while (list($key,$value)=each($fields)) $form->fields[$key]->value = $value;
	}
	$form->fields["data"]->value = $this->txt_encrypt("pg=verimmo&view=$view&pk=$pk&pos=$pos&from=0");
} else {
	reset($form->fields);
	$keyword="";
	while (list($key,$value)=each($form->fields)){
		if ($key!=="data" && $value->value!="") {
			$fields[$key]=$value->value;
			if ($keywords=="") $keywords="$key=".$value->value; else $keywords=$keywords.",$key=".$value->value;
		}
	}
}

$order_by=$form->fields["order_by"]->value." ".$form->fields["in_order"]->value;
$this->html_out .=$form->draw();


if (isset($fields)){
	if ($immo->ver_immos($fields,$id_org,$id_position, $view,$from,20,$order_by)){
	 $fields=$immo->select_array();
	 $list = new pklist;     
     $this->html_out .= $list->print_list($fields, $from,20,"pg=verimmo&view=$view","keywords=$keywords",$pk, $pos, $immo->found_rows());
	} else $this->add_msg($immo->txt_error);
}

?>
