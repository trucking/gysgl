<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-31
 * Time: 上午11:05
 */

include_once('./inc.php');
$supName = trim($_GET['supName']);
$supObj = new supplier();
$supId = $supObj->getSupplierIdByName($supName);

$content['info'] = $supObj->getSupplierInfo($supId);
//smarty类输出结果

$smarty->assign('content',$content);
$smarty->display('supplierResult.tpl');