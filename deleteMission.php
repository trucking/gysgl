<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-8-22
 * Time: обнГ3:24
 */
include_once('inc.php');
$missionId = $_GET['mission_sysno'];
//$sql = 'DELETE from rwtx_missionlist where mission_sysno = '.$missionId;
//$exeresult = exequery($connection,$sql);
$ressult = Database::delete('rwtx_missionlist','mission_sysno = '.$missionId);
if($result)
    echo "и╬ЁЩЁи╧╕";
else
    echo "и╬ЁЩй╖╟э";

