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

class Index extends Controller
{

    //访问首页时自动记录IP
    public function index()
    {
//        $visit = model('SysVisitLog');
//        $visit->save($visit->getVisitData());
        model('SysVisitLog')->saveVisit();
        return $this->fetch();
    }

    //跳转至登录页面
    public function login()
    {

        return $this->fetch();
    }

    //通过登录页面跳转至后台首页
    public function admin()
    {
        $username = input('post.username');
        $password = input('post.password');

        $user = model('UsUser')->login($username,$password);

        if($user){
            return $this->fetch();
        }else{
            $error = '帐号密码错误';
            $this->assign('error',$error);
            return $this->fetch('login');
        }


    }
}
