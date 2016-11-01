<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-21
 * Time: 下午7:19
 */
include_once ('./incNoAuth.php');
header("Content-type: text/json ; charset=utf-8");
$supName = '大同李氏包材厂';//trim($_POST['sup']);
$obj = new supplier();
$id = 2;//$obj->getSupplierIdByName($supName);

if(empty($id)){
    echo $result = 0;
    exit;
}
$result = $obj->getSupplierInfo($id);
//var_dump($result);
if(empty($result)){
    $result = 0;
}
$result = array('test'=>'中文','date'=>1);
echo json_encode($result);