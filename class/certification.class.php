<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-9
 * Time: 下午9:02
 */
include_once('database.class.php');
class certification {
    private $list;
    //提前提醒天数
    private $day = 30;
    public function addCer($val)
    {
        return Database::insert('gysgl_sutoce',$val);
    }

    public function getDueTimeCer()
    {
        $item = '*';
        $table = 'gysgl_sutoce';
        $condition = 'due_time < DATE_ADD(now(),INTERVAL '.$this->day.' day)';
        $result = Database::select($item,$table,$condition);
        $objSup = new supplier();
        foreach($result as $k=>$v)
        {
            $result[$k]['supplier_name'] = $objSup->getSupplierNameById($result[$k]['supplier_id']);
            $result[$k]['supplier_uid'] = $objSup->getSupplierUidById($result[$k]['supplier_id']);
        }
        return $result;
    }

    public function arrToStr($arr)
    {
        $str = '';
        foreach($arr as $key=>$val)
        {
            $str .= $val.',';
        }
        return $str;
    }

    public function strToarr($str)
    {
        $arr = array();
        $arr = explode(',',$str);
        array_pop($arr);
        return $arr;
    }

    public function updateDueTime($id,$newTime)
    {
        $item['due_time'] = $newTime;
        $item['update_time'] = date('Y-m-d');
        $condition = 'id = '.$id;
        $result = Database::update('gysgl_sutoce',$item,$condition);

        return $result;
    }

    public function getInfoById($id)
    {
        $item = '*';
        $table = 'gysgl_sutoce';
        $condition = 'id = '.$id;
        return Database::select($item,$table,$condition);
    }
} 