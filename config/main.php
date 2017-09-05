<?php
$params = array_merge(
    require (__DIR__ . '/../../common/config/params.php'),
    require (__DIR__ . '/../../common/config/params-local.php'),
    require (__DIR__ . '/params.php'),
    require (__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-blog',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'blog\controllers',
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-blog',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-blog', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the blog
            'name' => 'advanced-blog',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        'view' => [
            'renderers' => [
                'tpl' => [
                    'class' => 'yii\smarty\ViewRenderer',
                    //'cachePath' => '@runtime/Smarty/cache',
                ],
            ],
        ],
    ],
    'params' => $params,
    'modules' => [
        'admin' => [
            'class' => 'app\modules\admin\Admin',
            'defaultRoute' => 'site/index',
            // 'defaultController' => 'site',
        ],
    ],
];
