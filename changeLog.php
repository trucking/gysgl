<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-15
 * Time: ����8:23
 */
include_once('inc.php');
$content['username'];
$content = array();
$content['list'][1]=array(  'changeUser'=>'����',
                            'changeDate'=>'2016-01-01',
                            'changeType'=>'������',
                            'supplier'=>'���Ĳ�����1',
                            'certificate'=>'Ӫҵִ��',
                            'dueTime'=>'2017-01-01');
$smarty->assign('content',$content);
$smarty->display('changelog.tpl');