<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-15
 * Time: 下午8:23
 */
include_once('inc.php');
$content['username'];
$content = array();
$content['list'][1]=array(  'changeUser'=>'张三',
                            'changeDate'=>'2016-01-01',
                            'changeType'=>'更新了',
                            'supplier'=>'包材测试商1',
                            'certificate'=>'营业执照',
                            'dueTime'=>'2017-01-01');
$smarty->assign('content',$content);
$smarty->display('changelog.tpl');