<?php
namespace app\modules\admin\controllers;

use backend\models\Menu;
use qiyu\ControllerAdmin;
use Yii;

class SiteController extends ControllerAdmin
{
    public function actionIndex()
    {
        $menu = new Menu();
        $menu = $menu->getLeftMenuList();
        $user_id = Yii::$app->user->identity->getId();
        $user_info = Yii::$app->authManager->getRolesByUser($user_id);
        // var_dump($menu);exit;

        return $this->render('//admin/site/index.tpl', [
            'url' => ['static' => 'http://tbq_static.com'],
            'menu' => $menu,
        ]);
    }

    public function actionMain()
    {
        return $this->render('//admin/site/main.tpl', [
            'url' => ['static' => 'http://tbq_static.com'],
        ]);
    }
}
