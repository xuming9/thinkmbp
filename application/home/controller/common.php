<?php

/**
 * User: 徐铭
 * Date: 2016-10-16
 * Time: 13:38
 * Description:
 */
namespace app\home\controller;

use think\Controller;
use think\Session;

/**
 * Class common
 * @package app\home\controller
 * 控制器父类,构造方法充当过滤器的一部分功能
 */
class common extends Controller
{

    function __construct() {
        parent::__construct();
        $this->checkLogin();;
    }

    /**
     * 验证用户是否登录
     */
    protected function checkLogin() {
        //验证是否登录成功
        if (!Session::has('login_user') || !Session::get('login_user')) {
            echo 'no user';
            echo APP_PATH;
            Session::clear();
            return $this->redirect('index/login');
        }
        //验证是否超时:30分钟无操作
        if (!Session::has('last_time') || time()-Session::get('last_time')>1800) {
            echo 'no time';

            Session::clear();
            return $this->redirect('index/login');
        }
        Session::set('last_time', time());
    }

    /**
     * 空操作
     */
    public function _empty() {
        abort(404, '页面不存在啊，别乱入啊！');
    }

    /**
     * 退出登录
     */
    protected function logout() {
        Session::clear();
        return $this->redirect('index/login');
    }
}