<?php $tmp = 'title_' . Yii::app()->language; ?>
<div class="rowold">
    <div class=""><?php echo tt('Apartment title', 'apartments') ?>:</div>
    <div>
        <?php echo CHtml::textField('Apartment['.$tmp.']', $model->$tmp, array('class' => 'width220', 'id' => 'ap_find_title')); ?>
    </div>
</div>