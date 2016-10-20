<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-9
 * Time: 下午9:57
 */
include_once('inc.php');

$uid = $_POST['supplierNo'];
$name = $_POST['supplierName'];
$type = $_POST['supplierType'];
$type2 = $_POST['supplierType2'];
$address = $_POST['address'];
$goods = $_POST['goods'];
$remark = $_POST['remark'];
//由于Post过来的certificate是数组且不能确定用户输入的个数，所以对数组遍历一次，
//到期时间和更新时间同理
//$i是一个计数器，用于计算需要插入的证件的个数
$i = 0;
foreach($_POST['certificate'] as $key=>$val)
{
    $certificate[$i] = $val;
    $i++;
}
$i = 0;
foreach($_POST['dueTime'] as $key=>$val)
{
    $dueTime[$i] =$val;
    $i++;
}
$i = 0;
foreach($_POST['updateTime'] as $key=>$val)
{
    $updateTime[$i] =$val;
    $i++;
}

$supplier = new supplier();
$result = $supplier->addSupplier($uid,$name,$type,$type2,$address,$goods,$remark);
$cerVal['supplier_id'] = $supplier->getSupplierIdByUid($uid);
$cerObj = new certification();
//将certificate信息逐条加入sutocer表中
for($j=0;$j<$i;$j++)
{
    $cerVal['certificate'] = $certificate[$j];
    $cerVal['due_time'] = $dueTime[$j];
    $cerVal['update_time'] = $updateTime[$j];
    $cerObj->addCer($cerVal);
}

if($result){
    echo "添加成功";
}else{
    echo "添加错误";
}