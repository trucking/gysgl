<?php
include_once('./inc.php');
$everyPageNum = 14 ;
//��ȡ���������������С�ڽ��������
if(isset($_GET['page'])){
    $page = $_GET['page'];
}else{
    $page = 1;
}
$condition = 'mission_remindtime <= now()
                    and mission_user = \''.$content['userID'].'\'

                order by mission_remindtime asc';

$content['list'] = Database::select('*','rwtx_missionlist',$condition);
//smarty��������
$smarty->assign('content',$content);
$smarty->display('index.tpl');
