<?php
include_once('./inc.php');

$supObj = new supplier();
$arrZy = $supObj->getSupplierList();
$arrFz = $supObj->getSupplierListOfFz();
$arrEx = $supObj->getSupplierListEx();
$content['midNum'] = $supObj->midNum;
$content['proNum'] = $supObj->proNum;
$content['bcNum'] = $supObj->bcNum;
$content['ylNum'] = $supObj->ylNum;
$content['zy']['list'] = $arrZy;
$content['fz']['list'] = $arrFz;
$content['ex']['list'] = $arrEx;
$arrZs['type'];
//smarty��������
$smarty->assign('content',$content);
$smarty->display('index.tpl');
