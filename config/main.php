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
                    'levels' => ['error', 'warning', 'info', 'trace'], //'profile'
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
        'authManager' => [
            'class' => 'qiyu\DbManager', // 使用数据库管理配置文件
            "defaultRoles" => ["guest"],
        ],
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=10.0.75.1;dbname=yiiblog',
            'username' => 'root',
            'password' => 'root',
            'charset' => 'utf8',
        ],
        'view' => [
            'renderers' => [
                'tpl' => [
                    'class' => 'qiyu\ViewRender',
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
    "aliases" => [
        "@mdm/admin" => "@vendor/mdmsoft/yii2-admin",
    ],
];
