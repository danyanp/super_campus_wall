<?php
namespace app\index\controller;

use app\index\common\Base;
use app\index\model\Admin;
use think\Request;
use think\Session;

class Index extends Base
{
    public function index()
    {
         if(is_null(session('user_name'))){
             $a = 1;
         }else{
             $a = 0;
         }
        return $this->fetch('index',['a'=>$a]);
    }

}
