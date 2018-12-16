<?php

namespace app\admin\controller;
use think\Session;
use app\admin\common\Base;
use app\index\model\Admin;
use think\Request;
class Login extends Base
{
    public function index(){
        $this->arlogin();
        return $this->fetch('login');
    }

    //$requset = new Request
    public function check(Request $request)
    {
        $code = 1;
        //获取数据
        $data = $request->param();
        $username = $data['username'];
        $password = md5($data['password']);
        //在数据库中查询，以用户为条件
        $map = ['name' => $username];
        $admin = Admin::get($map);
        //将用户名和密码分开验证
        if (is_null($admin)) {
            $msg = '用户名不存在';
        } elseif ($admin->password != $password) {
            $msg = '登陆失败';
        } else {
            //都通过，更改状态
            $code = 0;
            //刷新数据表
            $msg = '登录成功';
            $admin->setInc('login_count');
            $admin->save(['last_time' => time()]);
            //将用户登录信息保存在session中,供其他控制器进行判断
            Session::set('user_name', $username);
            Session::set('user_info', $data);

        }
        return ['code' => $code, 'msg' => $msg];
    }




}
