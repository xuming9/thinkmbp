<?php

/**
 * User: 徐铭
 * Date: 2016-10-14
 * Time: 23:27
 * Description: 用户模型
 */


namespace app\home\model;

use think\Model;

class UsUser extends Model
{
    //模型表名
    protected $table = 'us_user';

    public function login($username = '', $password = '', $status = 'E') {
        //后期需要处理$username和$password的字符,防注入

        $map = array(
            'username'=>$username,
            'password'=>$password,
            'status'=>$status
        );

        $user = $this->db()->where($map)->find();
        if ($user){
            return $user->toArray();
        }else{
            return null;
        }


    }


    //数据库缓存
    protected $field = array(
        'id',
        'userName',
        'name',
        'password',
        'email',
        'deptId',
        'phone',
        'status',
        'createTime',
        'createUser',
        '_pk' => 'id',
        '_type' => array(
            'id' => 'int',
            'userName' => 'varchar',
            'name' => 'varchar',
            'password' => 'varchar',
            'email' => 'varchar',
            'deptId' => 'int',
            'phone' => 'varchar',
            'status' => 'varchar',
            'createTime' => 'datetime',
            'createUser' => 'int',
        )
    );


}