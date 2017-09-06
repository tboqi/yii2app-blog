<?php
namespace app\modules\admin\controllers;

use qiyu\Controller;

class SiteController extends Controller
{
    public function actionIndex()
    {
        return $this->render('//admin/site/index.tpl', ['test' => 'smarty']);
    }
}
