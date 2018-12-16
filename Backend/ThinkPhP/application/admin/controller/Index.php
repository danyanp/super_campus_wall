<?php
namespace app\admin\controller;
use app\admin\common\Base;

use app\admin\model\Admin;
use think\Request;
use think\Session;
class Index  extends Base
{
    public function index()
    {
        $this->islogin();
       return $this -> fetch('index');
    }
    public function logout()
    {
        Session::delete('user_name');
        Session::delete('user_info');
        if(is_null(session('user_name'))){
            $code = 0;
            $msg ='退出成功';
        }else{
            $code = 1;
            $msg = '退出失败';
        }
        return['code' =>$code,'msg' =>$msg];
    }
     public function welcome()
    {
       return $this -> fetch('welcome');
    }

    //管理员管理
    public function adminlist()
    {
        //1.读取admin管理员信息
       $admin= Admin::get(['name'=>'admin']);
       //return $admin;
        //2.将管理员信息赋值给模板
        //3.渲染模板
        return $this -> fetch('adminlist',['admin'=>$admin]);
    }
    public function adminedit(Request $request)
    {
        $admin = Admin::get($request->param('id'));
        return $this -> fetch('adminedit',['admin'=>$admin]);
    }

}
