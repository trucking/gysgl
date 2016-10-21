<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-15
 * Time: ÏÂÎç8:45
 */

class changeLog {
    private $user;
    private $changeDate;
    private $type;
    private $supplier;
    private $certificate;
    private $dueDate;
    private $changeLogInfo;

    function __construct($arr)
    {
        if(!is_array($arr)){
            throw new Exception("item is must array!");
        }else{
            $this->user         = $arr['user'];
            $this->changeDate   = $arr['changeDate'];
            $this->type         = $arr['type'];
            $this->supplier     = $arr['supplier'];
            $this->certificate  = $arr['certificate'];
            $this->dueDate      = $arr['newTime'];
            $this->chageLogInfo = $arr;
        }
    }

    public function addLog()
    {
        $val = $this->changeLogInfo;
        return Database::insert('gysgl_changelog',$val);
    }

    public function listLog()
    {
        $result = Database::select('*','gysgl_changelog');
        $objSup = new supplier();
        foreach($result as $k=>$v)
        {
            foreach($v as $key=>$val)
            {
                $result[$k]['supplier'] = $objSup->getSupplierNameById($val);
            }
        }
    }

    public function searchLogBySup($supplierId)
    {

    }
}
