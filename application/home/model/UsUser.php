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


    /**
     * 用户登录验证,验证成功返回用户实例,否则返回null
     * @param string $username 用户名
     * @param string $password 密码
     * @return array|null 用户实例
     */
    public function login($username = '', $password = '') {
        //后期需要处理$username和$password的字符,防注入

        $map = array(
            'username'=>$username,
            'password'=>$password,
            'status'=>'E'
        );

        $user = $this->db()->where($map)->find();
        if ($user){
            return $user->toArray();
        }else{
            return null;
        }

    }

    /**
     * 新增用户
     * @param $data
     * @return 错误信息,成功则返回OK
     */
    public function addUser($data){
        if($data){
            $userName = $data['userName'];
            $count=$this->findUserByName($userName);
            if ($count===0){
                $data['status']='E';
                $data['createTime']= DateUtils::getNow();
                $this->save($data);
                return config('__OK__');
            }else{
                return '用户名已存在';
            }
        }else{
            return '无数据需要保存';
        }
    }


    /**
     * 通过用户名,查询用户数量
     * @param string $userName 用户名
     * @return int 用户数量
     */
    public function findUserByName($userName=''){
//        $user = $this->db()->where('userName',$userName)->find();
//        if ($user){
//            return $user->count();
//        }else{
//            return 0;
//        }
        return $this->db()->where('userName',$userName)->count();
    }

    public function disableUser($id=-1){
        $this->db()->where('id',$id)->update(['status' => 'D']);
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