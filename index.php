<?php
include_once('./inc.php');
$everyPageNum = 14 ;
//提取任务表中提醒日期小于今天的任务
if(isset($_GET['page'])){
    $page = $_GET['page'];
}else{
    $page = 1;
}
$condition = 'mission_remindtime <= now()
                    and mission_user = \''.$content['userID'].'\'

                order by mission_remindtime asc';

$content['list'] = Database::select('*','rwtx_missionlist',$condition);
//smarty类输出结果
$smarty->assign('content',$content);
$smarty->display('index.tpl');
