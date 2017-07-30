<?php
/* * ********************************************************************************************
 *								Open Real Estate
 *								----------------
 * 	version				:	V1.18.1
 * 	copyright			:	(c) 2016 Monoray
 * 							http://monoray.net
 *							http://monoray.ru
 *
 * 	website				:	http://open-real-estate.info/en
 *
 * 	contact us			:	http://open-real-estate.info/en/contact-us
 *
 * 	license:			:	http://open-real-estate.info/en/license
 * 							http://open-real-estate.info/ru/license
 *
 * This file is part of Open Real Estate
 *
 * ********************************************************************************************* */
class CustomEventHandler {
    static function handleMissingTranslation($event) {
        if( in_array($event->category, array('YiiDebug.yii-debug-toolbar', 'yii-debug-toolbar')) ){
            return false;
        }
        TranslateMessage::missingTranslation($event->category, $event->message);
    }
}