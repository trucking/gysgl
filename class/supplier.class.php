<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-9
 * Time: 下午1:55
 */
include_once('database.class.php');
include_once('certificate.class.php');

class supplier {
    private $type = array('1'=>'包材供应商','2'=>'原料供应商');
    private $type2 = array('1'=>'生产商','2'=>'中间商');
    private $isAble = array(1=>'正常','2'=>'冻结','0'=>'退出');
    private $supplierId;
    private $supplierUid;
    private $supplierName;
    private $supplierType;
    private $supplierAddress;
    private $supplierGoods;
    private $supplierCerId;
    private $supplierIsAble;
    public $midNum;
    public $proNum;
    public $ylNum;
    public $bcNum;

    function __construct()
    {
        $item = 'count(\'id\')';
        $condition = 'isable = 1 and type2 = 2';
        $result = Database::select($item,'gysgl_supplier',$condition);
        $this->midNum = $result[0]['count(\'id\')'];
        $condition = 'isable = 1 and type2 = 1';
        $result = Database::select($item,'gysgl_supplier',$condition);
        $this->proNum = $result[0]['count(\'id\')'];
        $condition = 'isable = 1 and type = 1';
        $result = Database::select($item,'gysgl_supplier',$condition);
        $this->bcNum = $result[0]['count(\'id\')'];
        $condition = 'isable = 1 and type = 2';
        $result = Database::select($item,'gysgl_supplier',$condition);
        $this->ylNum = $result[0]['count(\'id\')'];
    }

    public function addSupplier($uid,$name,$type,$type2,$address = '',$goods,$remark='',$isAble = 1)
    {
        $arr['uid']     = $uid ;
        $arr['name']    = $name;
        $arr['type']    = $type;
        $arr['type2']   = $type2;
        $arr['address'] = $address;
        $arr['goods']   = $goods;
        $arr['remark']  = $remark;
        $arr['isable']  = $isAble;
        return Database::insert('gysgl_supplier',$arr);
    }

    public function tcSupplier($id)
    {
        $item['isable'] = 0;
        $condition = 'id = '.$id;
        return Database::update('gysgl_supplier',$item,$condition);
    }

    public function djSupplier($id)
    {
        $item['isable'] = 2;
        $condition = 'id = '.$id;
        return Database::update('gysgl_supplier',$item,$condition);
    }

    public function reSupplier($id)
    {
        $item['isable'] = 1;
        $condition = 'id = '.$id;
        return Database::update('gysgl_supplier',$item,$condition);
    }

    public function getSupplierIdByUid($uid)
    {
        $condition = 'uid = \''.$uid.'\'';
        $id = Database::select('id','gysgl_supplier',$condition);
        $this->supplierId = $id[0]['id'];
        return $id[0]['id'];
    }

    public function getSupplierIdByName($name)
    {
        $condition = 'name = \''.$name.'\'';
        $id = Database::select('id','gysgl_supplier',$condition);
        $this->supplierId = $id;
        return $id[0]['id'];
    }

    public function getSupplierNameById($id)
    {
        $condition = 'id ='.$id;
        $name = Database::select('name','gysgl_supplier',$condition);
        return $this->supplierName = $name[0]['name'];
    }

    public function getSupplierUidById($id)
    {
        $condition = 'id ='.$id;
        $name = Database::select('uid','gysgl_supplier',$condition);
        return $this->supplierName = $name[0]['uid'];
    }

    public function getSupplierList()
    {
        $item = 'id,uid,name,type,type2,address,goods';
        $condition = 'isable = 1';
        $result = Database::select($item,'gysgl_supplier',$condition);
        foreach($result as $k=>$v)
        {
            foreach($v as $key=>$val)
            {
                if($key == 'type')
                {
                    $result[$k]['type'] = $this->typeNumToType($val);
                }
                if($key == 'type2')
                {
                    $result[$k]['type2'] = $this->type2NumToType($val);
                }
            }
        }

        return $result;

    }

    public function getSupplierListOfFz()
    {
        $item = 'id,uid,name,type,type2,address,goods';
        $condition = 'isable = 2';
        $result = Database::select($item,'gysgl_supplier',$condition);
        foreach($result as $k=>$v)
        {
            foreach($v as $key=>$val)
            {
                if($key == 'type')
                {
                    $result[$k]['type'] = $this->typeNumToType($val);
                }
                if($key == 'type2')
                {
                    $result[$k]['type2'] = $this->type2NumToType($val);
                }
            }
        }

        return $result;

    }

    public function getSupplierListEx()
    {
        $item = 'id,uid,name,type,type2,address,goods';
        $condition = 'isable = 0';
        $result = Database::select($item,'gysgl_supplier',$condition);
        foreach($result as $k=>$v)
        {
            foreach($v as $key=>$val)
            {
                if($key == 'type')
                {
                    $result[$k]['type'] = $this->typeNumToType($val);
                }
                if($key == 'type2')
                {
                    $result[$k]['type2'] = $this->type2NumToType($val);
                }
            }
        }

        return $result;

    }

    public function getAllType()
    {
        $type = $this->type;
        return $type;
    }

    public function getAllType2()
    {
        $type = $this->type2;
        return $type;
    }

    public function typeNumToType($num)
    {
        $arr = $this->type;
        foreach($arr as $k=>$v)
        {
            if($num == $k)
            {
                $type = $v;
            }
        }
        return $type;
    }

    public function type2NumToType($num)
    {
        $arr = $this->type2;
        foreach($arr as $k=>$v)
        {
            if($num == $k)
            {
                $type = $v;
            }
        }
        return $type;
    }

    public function getSupplierInfo($id)
    {
        $item = '*';
        $table = 'gysgl_supplier';
        $condition = 'id = '.$id;
        $result = Database::select($item,$table,$condition);
        $result[0]['type'] = $this->typeNumToType($result[0]['type']);
        $result[0]['type2'] = $this->type2NumToType($result[0]['type2']);
        $cerObj = new certification();
        $result[0]['cer'] = $cerObj->getListBysupId($id);
        return $result[0];
    }
} 