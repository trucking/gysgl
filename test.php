<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-9-29
 * Time: 下午3:02
 */
/*try{
    include_once('class/database.class.php');
    $a = new database();
    $value = array(
        'mission_no'=>'xx1',
        'mission_maintainthing'=>'你说是啥就是啥',
        'mission_name'=>'我也不知道',
        'mission_type'=>'仪表维护',
        'mission_project'=>'信息部',
        'mission_lasttime'=>'2016-10-01',
        'mission_thistime'=>'2016-11-01',
        'mission_cycle'=>30,
        'mission_remindtime'=>'2016-10-20',
        'mission_user'=>'liyanwei'
    );
    $table = 'rwtx_missionlist';
    $condition = 'mission_sysno = 1';

    $a->delete($table,$condition);
}catch (Exception $e)
{
    echo $e->getMessage();
}*/


/*$conn = mysql_connect('127.0.0.1','root','wqdxyf5305');
mysql_select_db('TD_OA',$conn);
$sql = 'select * from rwtx_missionlist';
$obj = mysql_query($sql,$conn);
$result = mysql_fetch_array($obj);
var_dump($result);*/
include_once('inc.php');
echo date('Y-m-d');
