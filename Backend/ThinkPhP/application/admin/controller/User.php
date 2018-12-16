<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\model\User as UserModel;
use think\paginator\driver\Layui;
class User extends Controller
{
    public function index()
    {
        //
        $model = new UserModel();
        $list = $model->getList();
        return $this->fetch('memberlist', compact('list'));
    }

}
