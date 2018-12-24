<?php

namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\User as UserModel;

class Setting extends Controller
{

    public function index()
    {
        $model = new UserModel();
        $list = $model->getList();
        return $this->fetch('memberlist', compact('list'));
    }
}
