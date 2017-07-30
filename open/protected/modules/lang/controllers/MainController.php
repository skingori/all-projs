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

class MainController extends ModuleUserController {
	public $modelName = 'Lang';

    public function actionAjaxTranslate(){
        if(!Yii::app()->request->isAjaxRequest)
            throw404();

        $fromLang = Yii::app()->request->getPost('fromLang');
        $fields = Yii::app()->request->getPost('fields');
		$errors = false;
		$translateField = array();
		
        if(!$fromLang || !$fields)
            throw new CException('Lang no req data');

        $translate = new MyMemoryTranslated();
        $fromVal = $fields[$fromLang];
		
        foreach($fields as $lang=>$val){
            if($lang == $fromLang)
                continue;
			
			if ($answer = $translate->translateText($fromVal, $fromLang, $lang))
				$translateField[$lang] = $answer;
			else
				$errors = true;
        }

		if ($errors) {
			echo json_encode(array(
				'result' => 'no',
				'fields' => ''
			));
		}
        else {
			echo json_encode(array(
				'result' => 'ok',
				'fields' => $translateField
			));
		}
        Yii::app()->end();
    }
	
	public function actionTranslateAll() {
		exit;
		
		$sql = 'SELECT id, translation_ar FROM {{translate_message}}';
		$res = Yii::app()->db->createCommand($sql)->queryAll();
		
		if (!empty($res)) {
			$res = CHtml::listData($res, 'id', 'translation_ar');
						
			foreach($res as $id => $message) {
				$translate = new YandexTranslater();
				
				$from = $translate->detectText($message);
				
				if ($from != 'ar') {
					$messageAr = $translate->translateText($message, $from, 'ar', true);
					if (is_array($messageAr) && !empty($messageAr)) {
						$messageAr = $messageAr[0];
					}
					
					if ($messageAr) {
						$sql = 'UPDATE {{translate_message}} SET translation_ar=:translation_ar WHERE id=:id';
						Yii::app()->db->createCommand($sql)->execute(
							array(
								':translation_ar' => $messageAr,
								':id' => $id,
							)
						);
					}
				}
			}
		}
		
		echo 'ok';
		exit;
	}
}