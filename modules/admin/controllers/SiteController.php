<?php
namespace app\modules\admin\controllers;

use qiyu\ControllerAdmin;

class SiteController extends ControllerAdmin
{
    public function actionIndex()
    {
        return $this->render('//admin/site/index.tpl', ['url' => ['static' => 'http://tbq_static.com']]);
    }

    public function actionMain()
    {
        return $this->render('//admin/site/main.tpl', ['url' => ['static' => 'http://tbq_static.com']]);
    }
}
