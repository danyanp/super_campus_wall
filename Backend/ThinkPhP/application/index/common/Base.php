<?php
namespace app\index\common;

use think\Controller;
use think\Session;

class Base extends Controller
{
    protected function _initialize()
    {
        parent::_initialize();
        define('USERNAME',Session::get('user_name'));
    }
    protected function islogin(){
        if (is_null(USERNAME)){
            $this->error('未登录','login/index');

        }
    }
    protected function arlogin(){
        if (!is_null(USERNAME)){
            $this->error('不要重复登录','index/index');

        }

}}