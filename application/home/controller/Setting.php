<?php

/**
 * User: 徐铭
 * Date: 2016-10-16
 * Time: 2:06
 * Description:
 */

namespace app\home\controller;

use think\Controller;

class Setting extends Common{

    public function visitLog(){
        $visit = model('SysVisitLog');

//        $options=[
//            'page'=>$_GET['page'],
//            'path'=>url('visitLog')
//        ];

//        $visitList = $visit->db()->select();
        $visitList = $visit->db()->select();
//        $page = $visitList->paginate(10);
        $this->assign('visitList',$visitList);
//        $this->assign('page',$page);
        return $this->fetch();
    }
}