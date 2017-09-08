<?php
namespace app\modules\admin\controllers;

use common\models\User;
use qiyu\Controller;
use Yii;

class UserController extends Controller
{
    public function actionResetPassword()
    {
        $request = Yii::$app->request;
        if ($request->isPost) {
            $userId = Yii::$app->user->getId();
            $user = User::findOne($userId);
            if (!empty($request->post('newPassword')) && $request->post('newPassword') == $request->post('newPassword2') && $user->validatePassword($request->post('oldPassword'))) {
                $user->setPassword($request->post('newPassword'));
                $user->setPassword($request->post('newPassword'));
                // $user->removePasswordResetToken();
                $user->save(false);
                Yii::$app->session->setFlash('success', 'New password saved.');
                return $this->goHome();
            }
        } else {
            return $this->render('//admin/user/resetPassword.tpl');
        }
    }
}
