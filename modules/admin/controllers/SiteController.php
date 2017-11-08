<?php
namespace app\modules\admin\controllers;

use backend\models\Menu;
use qiyu\ControllerAdmin;
use Yii;

class SiteController extends ControllerAdmin
{
    public function beforeAction($action)
    {
        return parent::beforeAction($action);
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    public function actionIndex()
    {
        $menu = new Menu();
        $menu = $menu->getLeftMenuList();
        $userId = Yii::$app->user->identity->getId();
        $userInfo = Yii::$app->authManager->getRolesByUser($userId);
        // var_dump($userInfo);exit;

        return $this->render('//admin/site/index.tpl', [
            'url' => ['static' => 'http://tbq_static.com'],
            'menu' => $menu,
            'userInfo' => [
                'role' => key($userInfo),
                'id' => Yii::$app->user->identity->getId(),
                'name' => Yii::$app->user->identity->username,
            ],
        ]);
    }

    public function actionMain()
    {
        return $this->render('//admin/site/main.tpl', [
            'url' => ['static' => 'http://tbq_static.com'],
        ]);
    }
}
