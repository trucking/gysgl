<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-21
 * Time: 下午7:19
 */
include_once ('./incNoAuth.php');
header("Content-type: text/json ; charset=GB2312");
$supName = '大同李氏包材厂';//trim($_POST['sup']);
$obj = new supplier();
$id = 2;//$obj->getSupplierIdByName($supName);

if(empty($id)){
    echo $result = 0;
    exit;
}
$result = $obj->getSupplierInfo($id);
var_dump($result);
if(empty($result)){
    $result = 0;
}
var_dump($result);
echo json_encode($result);