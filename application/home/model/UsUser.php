<?php

/**
 * User: 徐铭
 * Date: 2016-10-14
 * Time: 23:27
 * Description: 用户模型
 */


namespace app\home\model;

use think\Model;
use app\home\utils\DateUtils;

class UsUser extends Model
{
    //模型表名
    protected $table = 'us_user';

    //用户登录验证,验证成功返回用户实例,否则返回null
    public function login($username = '', $password = '', $status = 'E') {
        //后期需要处理$username和$password的字符,防注入

        $map = array(
            'username'=>$username,
            'password'=>$password,
            'status'=>$status
        );

        $user = $this->db()->where($map)->find();
        if ($user){
            $_SESSION['user']=$user;
            $_SESSION['$lastTime']=time();
            return $user->toArray();
        }else{
            return null;
        }

    }

    //新增用户
    public function addUser($data){
        if($data){
            $userName = $data['userName'];
            $count=$this->findUserByName($userName);
            dump($count);
            if ($count===0){
                $data['status']='E';
                $data['createTime']= DateUtils::getNow();
                echo $this->save($data);
                return 'OK';
            }else{
                return '用户名已存在';
            }
        }else{
            return '无数据需要保存';
        }
    }

    //查询用户是否存在,不存在返回0,
    public function findUserByName($userName=''){
//        $user = $this->db()->where('userName',$userName)->find();
//        if ($user){
//            return $user->count();
//        }else{
//            return 0;
//        }
        return $this->db()->where('userName',$userName)->count();
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