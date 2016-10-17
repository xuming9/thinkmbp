<?php

/**
 * User: 徐铭
 * Date: 2016-10-16
 * Time: 2:06
 * Description:
 */

namespace app\home\controller;

use think\Controller;
use app\home\controller\common;

class Setting extends Common{

    function __construct() {
        parent::__construct();
    }

    /**
     * @return mixed 查询所有访问数据
     * 分页方式等数据大了需要重新处理
     */
    public function visitLog(){
//        $visit = model('SysVisitLog');
//        $options=[
//            'page'=>$_GET['page'],
//            'path'=>url('visitLog')
//        ];

//        $visitList = $visit->db()->select();
        $visitList = model('SysVisitLog')->selectVisit();
//        $page = $visitList->paginate(10);
        $this->assign('visitList',$visitList);
//        $this->assign('page',$page);
        return $this->fetch();
    }
}