<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-9
 * Time: ����9:57
 */
include_once('inc.php');

$uid = $_POST['supplierNo'];
$name = $_POST['supplierName'];
$type = $_POST['supplierType'];
$type2 = $_POST['supplierType2'];
$address = $_POST['address'];
$goods = $_POST['goods'];
$remark = $_POST['remark'];
//����Post������certificate�������Ҳ���ȷ���û�����ĸ��������Զ��������һ�Σ�
//����ʱ��͸���ʱ��ͬ��
//$i��һ�������������ڼ�����Ҫ�����֤���ĸ���
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
//��certificate��Ϣ��������sutocer����
for($j=0;$j<$i;$j++)
{
    $cerVal['certificate'] = $certificate[$j];
    $cerVal['due_time'] = $dueTime[$j];
    $cerVal['update_time'] = $updateTime[$j];
    $cerObj->addCer($cerVal);
}

if($result){
    echo "��ӳɹ�";
}else{
    echo "��Ӵ���";
}