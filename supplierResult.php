<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-31
 * Time: ����11:05
 */

include_once('./inc.php');
$supName = trim($_GET['supName']);
$supObj = new supplier();
$supId = $supObj->getSupplierIdByName($supName);

$content['info'] = $supObj->getSupplierInfo($supId);
//smarty��������

$smarty->assign('content',$content);
$smarty->display('supplierResult.tpl');