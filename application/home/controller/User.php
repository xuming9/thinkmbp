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

class User extends common{

    public function findUsers(){
        $UsUser = model('UsUser');

//        $options=[
//            'page'=>$_GET['page'],
//            'path'=>url('visitLog')
//        ];

//        $visitList = $visit->db()->select();
        $userList = $UsUser->db()->select();
//        $page = $visitList->paginate(10);
        $this->assign('userList',$userList);
//        $this->assign('page',$page);
        return $this->fetch();
    }

    public function addUser(){
        return $this->fetch();
    }
    public function insertUser(){
        $data = array(
            'userName' => $_POST['userName'],
            'name' => $_POST['name'],
            'deptId' => $_POST['deptId'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone']
        );

            dump($data);

        $user = model('UsUser');
        echo $user->addUser($data);

        return $this->fetch('addUser');
    }
}