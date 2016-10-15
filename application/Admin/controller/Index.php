<?php
namespace app\Admin\controller;

class Index
{
    public function index()
    {
        $ip=$_SERVER['REMOTE_ADDR'];
        $url = $_SESSION[''];
        echo $ip;
    }
    public function login(){
        $this->fetch();
    }
}
