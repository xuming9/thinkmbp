<?php

/**
 * User: 徐铭
 * Date: 2016-10-16
 * Time: 2:06
 * Description:
 */

namespace app\home\controller;

use app\home\model\UsUser;
use think\Controller;
use think\Request;

class User extends common{

    function __construct() {
        parent::__construct();
    }

    /**
     * @return mixed 查询所有用户
     */
    public function findUsers(){
        $UsUser = model('UsUser');
        $userList = $UsUser->db()->select();
        $this->assign('userList',$userList);
        return $this->fetch();
    }

    /**
     * @return mixed 跳转至添加用户页面
     */
    public function addUser(){
//        $this->assign('now',time());
        return $this->fetch();
    }

    /**
     * @return mixed 普通方式创建用户
     */
    public function insertUser(){
        $data = array(
            'userName' => $_POST['userName'],
            'name' => $_POST['name'],
            'deptId' => $_POST['deptId'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone']
        );

        $user = model('UsUser');
        $result = $user->addUser($data);
        echo '<br/>'.$result;
        if($result === config('__OK__')){
            $this->display('addUser');
        }else{
            $this->error( '','',$result,0);
        }

        return $this->fetch('addUser');

    }

    /**
     * @return mixed ajax创建用户
     */
    public function ajax_insertUser(){// 是否为 Ajax 请求
        $request = Request::instance();
        if(var_export($request->isAJax(), true)){
            $data =array(
                "userName"=>$_POST['userName'],
                "name"=>$_POST['name'],
                "deptId"=>$_POST['deptId'],
                "email"=>$_POST['email'],
                "phone"=>$_POST['phone']
            );
            $user = model('UsUser');
            $result = $user->addUser($data);
            $this->result('','',$result);
//            return $this->fetch();
        }else{
            $this->result('','','非法请求,保存失败');
        }
    }

    /**
     * 删除用户
     */
    public function ajax_deleteUser(){
        $request = Request::instance();
        if(var_export($request->isAJax(), true)){

            $userIdList=$_POST['userIdList'];


            $user = model('UsUser');
            foreach($userIdList as $userId){
                $user->disableUser($userId);
            }

            $this->result('','','失效'.count($userIdList).'个用户');
        }else{
            $this->result('','','非法请求,保存失败');
        }


    }
}