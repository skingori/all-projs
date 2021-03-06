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

class ReferenceValues extends ParentModel{

	public $oldRefId = 0;
	public $multy;

	public static function model($className=__CLASS__){
		return parent::model($className);
	}

	public function tableName(){
		return '{{apartment_reference_values}}';
	}

	public function behaviors(){
		$arr = array();
		$arr['ERememberFiltersBehavior'] = array(
			'class' => 'application.components.behaviors.ERememberFiltersBehavior',
			'defaults' => array(),
			'defaultStickOnClear' => false
		);
		$arr['AutoTimestampBehavior'] = array(
			'class' => 'zii.behaviors.CTimestampBehavior',
			'createAttribute' => null,
			'updateAttribute' => 'date_updated',
		);

		return $arr;
	}

	public function rules(){
		return array(
			array('reference_category_id', 'required'),
			array('title', 'i18nRequired', 'except'=>'multiply'),
			array('multy', 'required', 'on'=>'multiply'),
			array('reference_category_id, sorter, for_sale, for_rent', 'numerical', 'integerOnly'=>true),
			array('title', 'i18nLength', 'max'=>255),
			array($this->getI18nFieldSafe(), 'safe'),
		);
	}

    public function i18nFields(){
        return array(
            'title' => 'varchar(255) not null default ""',
		);
	}

	public function relations(){
		Yii::app()->getModule('referencecategories');
		return array(
			'category' => array(self::BELONGS_TO, 'ReferenceCategories', 'reference_category_id',
					'order' => 'category.sorter ASC',
					'select' => 'category.title_'.Yii::app()->language,
				),
		);
	}

	public function attributeLabels()
	{
		return array(
			'title' => tt('Reference value'),
			'multy' => tt('Reference value'),
			'reference_category_id' => tt('Reference category'),
            'for_sale' => tt('For sale'),
            'for_rent' => tt('For rent')
		);
	}

	public function search(){
		$criteria=new CDbCriteria;

		$criteria->compare($this->getTableAlias().'.title_'.Yii::app()->language, $this->{'title_'.Yii::app()->language},true);
		$criteria->compare($this->getTableAlias().'.reference_category_id', $this->reference_category_id);

		$criteria->with = array('category');
		$criteria->order = 'category.sorter ASC, t.sorter ASC';

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'pagination'=>array(
				'pageSize'=>param('adminPaginationPageSize', 20),
			),
		));
	}

	public function afterFind(){
		$this->oldRefId = $this->reference_category_id;
		parent::afterFind();
	}

	public function beforeSave(){
		if($this->reference_category_id != $this->oldRefId && $this->oldRefId != 0 && !$this->isNewRecord){
			$sql = 'UPDATE '.$this->tableName().' SET sorter=sorter-1 WHERE sorter > "'.$this->sorter.'" AND reference_category_id="'.$this->oldRefId.'"';
			Yii::app()->db->createCommand($sql)->execute();
		}

		if($this->isNewRecord || ($this->reference_category_id != $this->oldRefId && $this->oldRefId != 0)){
			$sql = 'SELECT MAX(sorter) FROM '.$this->tableName().' WHERE reference_category_id = "'.$this->reference_category_id.'"';
			$maxSorter = Yii::app()->db
				->createCommand($sql)
				->queryScalar();
			$this->sorter = $maxSorter+1;
		}

		return parent::beforeSave();
	}

	public function afterDelete(){
		$sql = 'DELETE FROM {{apartment_reference}} WHERE reference_value_id="'.$this->id.'"';
		Yii::app()->db->createCommand($sql)->execute();

		return parent::afterDelete();
	}

    public static function returnForStatusHtml($data, $for_field, $tableId = '', $onclick = 1, $ignore = 0){
        if($ignore && $data->id == $ignore){
            return '';
        }
        $url = Yii::app()->controller->createUrl("activate",
            array(
                'id' => $data->id,
                'action' => ($data->$for_field == 1 ? 'deactivate' : 'activate'),
                'field' => $for_field
            ));
        $img = CHtml::image(
			Yii::app()->theme->baseUrl.'/images/'.($data->$for_field ? '' : 'in').'active.png',
            Yii::t('common', $data->$for_field ? 'Inactive' : 'Active'),
            array('title' => Yii::t('common', $data->$for_field ? 'Deactivate' : 'Activate'))
        );
        $options = array();
        if($onclick){
            $options = array(
                'onclick' => 'ajaxSetStatus(this, "'.$tableId.'"); return false;',
            );
        }
        return '<div align="center">'.CHtml::link($img, $url, $options).'</div>';
    }

	public static function getTitleById($id){
		$sql = "SELECT title_".Yii::app()->language." FROM {{apartment_reference_values}} WHERE id=:id";
		$command=Yii::app()->db->createCommand($sql);
		$command->bindParam(":id", $id);
		return $command->queryScalar();
	}

	public static function getDependency(){
        return new CDbCacheDependency('SELECT MAX(date_updated) FROM {{apartment_reference_values}}');
    }

}