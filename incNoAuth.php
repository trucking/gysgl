<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-10-21
 * Time: ÉÏÎç10:10
 */
error_reporting(E_ALL^E_NOTICE^E_WARNING);
include_once('./Smarty/libs/Smarty.class.php');

include_once('./class/database.class.php');
include_once('./class/filter.class.php');
include_once('./class/supplier.class.php');
include_once('./class/certification.class.php');
include_once('./class/user.class.php');
include_once('./class/changeLog.class.php');
$smarty = new Smarty();
$smarty->template_dir       = './temp/';
$smarty->compile_dir        = './temp_c/';
$smarty->config_dir         = './configs/';
$smarty->cache_dir          = './cache/';
$smarty->left_delimiter     = "{<";
$smarty->right_delimiter    = ">}";