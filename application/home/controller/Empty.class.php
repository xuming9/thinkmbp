<?php
/**
 * Created by PhpStorm.
 * User: 徐铭
 * Date: 2016-10-13
 * Time: 20:25
 */

namespace app\home\controller;
use think\Controller;

class EmptyController extends Controller
{
    public function _empty(){
        return '404';
    }
}