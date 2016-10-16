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
//        $loginUser = $_SESSION['login_user'];
//        if(!$loginUser||!$loginUser['name']){
//            echo 'no user';
//            return $this->redirect('index/login');
//        }
        if (!Session::has('login_user') || !Session::get('login_user')) {
            $this->logout();
        }
        //验证是否过期:无操作30分钟后过期
//        $lastTime = $_SESSION['last_time'];
//        if (!$lastTime || time() - $lastTime > 1800) {
//            echo 'no time';
//            //$this->logout();
//        }

        if (!Session::has('last_time') || time()-Session::get('last_time')>1800) {
            $this->logout();
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
        return redirect('../index/login');
    }
}