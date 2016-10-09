<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-9
 * Time: ÏÂÎç1:55
 */
include_once('database.class.php');

class supplier {
    private $supplierId;
    private $supplierUid;
    private $supplierName;
    private $supplierType;
    private $supplierAddress;
    private $supplierGoods;
    private $supplierCerId;
    private $supplierIsAble;

    function __construct()
    {

    }

    public function addSupplier($uid,$name,$type,$address = '',$goods,$cerId='',$isAble = 1)
    {
        $arr['uid']     = $uid ;
        $arr['name']    = $name;
        $arr['type']    = $type;
        $arr['address'] = $address;
        $arr['goods']   = $goods;
        $arr['cerId']   = $cerId;
        $arr['isAble']  = $isAble;
        return Database::insert('gysgl_supplier',$arr);
    }

    public function unableSupplier($id)
    {
        $item['isable'] = 0;
        $condition = 'id = '.$id;
        return Database::update('gysgl_supplier',$item,$condition);
    }

    public function getSupplierIdByUid($uid)
    {
        $condition = 'uid = '.$uid;
        $id = Database::select('id','gysgl_supplier',$condition);
        $this->$supplierId = $id;
        return $id;
    }

    public function getSupplierIdByName($name)
    {
        $condition = 'name = '.$name;
        $id = Database::select('id','gysgl_supplier',$condition);
        $this->$supplierId = $id;
        return $id;
    }

    public function getSupplierList()
    {
        $item = 'uid,name,type,address,goods,certification';
        $condition = 'isable = 0';
        return Database::select($item,'gysgl_supplier',$condition);
    }
} 