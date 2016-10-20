<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-9
 * Time: ÏÂÎç1:53
 */
include_once('./inc.php');
$supplier = new supplier();

$content['type'] = $supplier->getAllType();
$content['type2'] = $supplier->getAllType2();
$smarty->assign('content',$content);
$smarty->display('supplierAdd.tpl');