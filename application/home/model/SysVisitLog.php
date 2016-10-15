<?php
/**
 * User: 徐铭
 * Date: 2016-10-12
 * Time: 20:32
 * Description: 访问日志模型
 */
namespace app\home\model;

use think\Model;


/**
 * Class VisitLogModel
 * @package app\home\model
 * 访问日志
 */
class SysVisitLog extends Model
{
//    protected  $tablePrefix='sys_';

//    protected $trueTableName='sys_visit_log';

//    protected $trueTableName = 'my_user';

    protected $field = array(
        'id',
        'ip',
        'province',
        'city',
        'url',
        'createTime',
        '_pk' => 'id',
        '_type' => array(
            'id' => 'int',
            'ip' => 'varchar',
            'province' => 'varchar',
            'city' => 'varchar',
            'url' => 'varchar',
            'createTime' => 'datetime'
        )
    );

    //保存访客信息
    public function saveVisit()
    {
        $map =  array(
            'ip' => $_SERVER["REMOTE_ADDR"],
            'url' => $_SERVER["REQUEST_URI"],
            'createTime' => date('Y-m-d H:i:s')
        );

       $this->save($map);
    }


}

?>