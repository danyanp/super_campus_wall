<?php

namespace app\admin\model;
use think\Model;

class Admin extends Model
{
    //创建获取器方法，实现时间的转换
    public function getLastTimeAttr($val){
        return date('Y/m/d',$val);
    }
}
