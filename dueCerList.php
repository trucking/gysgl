<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-14
 * Time: ÏÂÎç3:32
 */
include_once('./inc.php');
$obj = new certification();
$content['list'] = $obj->getDueTimeCer();
//$content = array();
$smarty->assign('content',$content);
$smarty->display('dueCerList.tpl');
