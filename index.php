<?php
include_once('./inc.php');

$supObj = new supplier();
$arr= $supObj->getSupplierList();
$content['midNum'] = $supObj->midNum;
$content['proNum'] = $supObj->proNum;
$content['bcNum'] = $supObj->bcNum;
$content['ylNum'] = $supObj->ylNum;
$content['list'] = $arr;
$arr['type'];
//smarty类输出结果
$smarty->assign('content',$content);
$smarty->display('index.tpl');
