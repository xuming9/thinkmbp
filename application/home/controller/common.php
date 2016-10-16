<?php

/**
 * User: 徐铭
 * Date: 2016-10-16
 * Time: 13:38
 * Description:
 */
namespace app\home\controller;

use think\console\command\make\Controller;
use think\Session;

class common extends Controller{

    function __construct() {
        parent::__construct();
        $this->checkLogin();;
    }

    /**
     * 验证用户是否登录
     */
    protected function checkLogin(){
        //验证是否登录成功
        if(!Session::has('user')||!Session::get('user')){
            $this->view('index/login');
        }
        //验证是否过期:无操作30分钟后过期
        $lastTime = Session::get('lastTime');
        if(!$lastTime||time() - $lastTime > 1800){
            $this->logout();
        }
        Session::set('lastTime',time());
    }

    /**
     * 空操作
     */
    public function _empty()
    {
        abort(404,'页面不存在啊，别乱入啊！');
    }

    /**
     * 退出登录
     */
    protected function logout(){
        Session::clear();
        $this->redirect('../index/login');
    }
}