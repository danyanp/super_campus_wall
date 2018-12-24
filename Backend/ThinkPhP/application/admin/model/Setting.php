<?php

namespace app\admin\model;

use think\Model;

class Setting extends Model
{
    //
    public void getName(){
    	return $this->get(1);
    }


}
