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
//smarty��������
$smarty->assign('content',$content);
$smarty->display('index.tpl');
