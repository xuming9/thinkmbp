<?php

/**
 * Created by PhpStorm.
 * User: 徐铭
 * Date: 2016-10-13
 * Time: 21:00
 */
namespace app\home\controller;


use app\home\model\SysVisitLog;
use app\home\model\UsUser;
use think\Controller;
use think\Session;

class Index extends Controller
{


    /**
     * @return mixed
     * 记录访客信息
     */
    public function index()
    {
//        $visit = model('SysVisitLog');
//        $visit->save($visit->getVisitData());
        model('SysVisitLog')->saveVisit();
        return $this->fetch();
    }

    /**
     * @return mixed
     * 跳转至登录页面
     */
    public function login()
    {

        $this->assign('error','ok');
        return $this->fetch();
    }

    public function loginoo(){
        return $this->fetch();
    }

    /**
     * @return mixed
     * 验证登录
     */
    public function admin()
    {
        $username = input('post.username');
        $password = input('post.password');

        $user = model('UsUser')->login($username,$password);
//        dump($user);
        if($user){
//            $_SESSION['login_user']=$user;
//            $_SESSION['last_time']=time();
            Session::set('login_user',$user);
            Session::set('last_time',time());
//            dump($_SESSION);
            return $this->fetch();
        }else{
            $error = '帐号密码错误';
            $this->assign('error',$error);
            return $this->fetch('login');
        }


    }

    /**
     * 退出登录
     */
    public function logout(){
        Session::clear();
        return $this->redirect('login');
    }
}
