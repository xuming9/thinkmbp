<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// [ 应用入口文件 ]


define('APP_DEBUG',true);       //debug模式,开发阶段开启
//define('APP_AUTO_BUILD',true);  //开启自动生成
define('BIND_MODULE','home');   //自动绑定类
//define('BUILD_DIR_SECURE',false);
// 定义应用目录
//define('APP_PATH', __DIR__ . '/application');
define('APP_PATH', './application/');



// 加载框架引导文件
//require __DIR__ . '/thinkphp/start.php';
require './thinkphp/start.php';

