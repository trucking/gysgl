<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-20
 * Time: ÏÂÎç10:25
 */
try{
    include_once('./incNoAuth.php');
    header("Content-type: text/json; charset=gb2312");

    $arr['newTime'] = trim($_POST['newTime']);
    $arr['id'] = trim($_POST['id']);
    $arr['user'] = trim($_POST['user']);
    $arr['changeDate'] = date('Y-m-d');
    $arr['type'] = '¸üĞÂ';
    $obj = new certification();
    $objSup = new supplier();
    $result = $obj->getInfoById($arr['id']);
    $arr['supplier'] = $objSup->getSupplierNameById($result[0]['supplier_id']);
    $arr['certificate'] = $result[0]['certificate'];
    $obj->updateDueTime($arr['id'],$arr['newTime']);
    $obj = new changeLog($arr);
    //$result['result'] = $obj->addLog();
    $result['newTime'] = $arr['newTime'];
    echo json_encode($result);

}catch(Exception $e){
    echo $e->getMessage();
};
