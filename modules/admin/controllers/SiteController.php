<?php
namespace app\modules\admin\controllers;

use qiyu\ControllerAdmin;

class SiteController extends ControllerAdmin
{
    public function actionIndex()
    {
        return $this->render('//admin/site/index.tpl');
    }
}
