<?php

/**
 * User: 徐铭
 * Date: 2016-10-17
 * Time: 21:54
 * Description:
 */
namespace app\home\controller;

use think\Controller;

class Test extends Controller{

    public function ajaxTable(){
        return $this->fetch();
    }
}