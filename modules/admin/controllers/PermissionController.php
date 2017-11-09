<?php

namespace app\modules\admin\controllers;

use blog\models\AuthItem;
use blog\models\AuthItemChild;
use blog\models\Menu;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

/**
 * PermissionController implements the CRUD actions for AuthItemChild model.
 */
class PermissionController extends \qiyu\ControllerPlus
{
    public $enableCsrfValidation = false;

    //给角色配置权限
    public function actionSet($id)
    {
        $auth = Yii::$app->authManager;
        $Permission = $auth->getPermissionsByRole($id);
        $items = AuthItem::find()->joinWith('permissionName')->where(['type' => '2'])->all();
        $menu = Menu::find()->where(['parent' => '0'])->all();
        if (Yii::$app->request->post()) {
            $post = Yii::$app->request->post();
            $parent = $auth->createRole($post['parent']); //创建角色对象
            if (!empty($post['permission'])) {
                $auth->removeChildren($parent);
                foreach ($post['permission'] as $v) {
                    $child = $auth->createPermission($v); //创建权限对象
                    $auth->addChild($parent, $child); //重新增加对应权限
                }
            } else {
                $auth->removeChildren($parent); //权限节点全不选择，清除对应权限
            }
            return $this->redirect(['permission/set', 'id' => $parent->name]);
        } else {
            return $this->render('set', [
                'Permission' => $Permission,
                'items' => $items,
                'id' => $id,
                'menu' => $menu,
            ]);
        }
    }

    /**
     * Lists all AuthItemChild models.
     * @return mixed
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => AuthItemChild::find(),
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single AuthItemChild model.
     * @param string $parent
     * @param string $child
     * @return mixed
     */
    public function actionView($parent, $child)
    {
        return $this->render('view', [
            'model' => $this->findModel($parent, $child),
        ]);
    }

    /**
     * Creates a new AuthItemChild model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new AuthItemChild();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'parent' => $model->parent, 'child' => $model->child]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing AuthItemChild model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $parent
     * @param string $child
     * @return mixed
     */
    public function actionDelete($parent, $child)
    {
        $this->findModel($parent, $child)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the AuthItemChild model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $parent
     * @param string $child
     * @return AuthItemChild the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($parent, $child)
    {
        if (($model = AuthItemChild::findOne(['parent' => $parent, 'child' => $child])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionUpdate()
    {
        return '未完成';
    }
}
