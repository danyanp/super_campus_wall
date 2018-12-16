<?php

namespace app\admin\controller;

use app\admin\common\Base;


class Adminadd extends Base
{

    public function index()
    {
        return $this ->fetch('adminadd');
        //
    }


}
