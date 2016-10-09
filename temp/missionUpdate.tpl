{<include file="head.tpl">}
<form name="missionAdd" method="post" action="missionUpdateTo.php?mission_sysno={<$content['mission_sysno']>} ">

    <p>任务编号：<input type="text" name="missionNo" value="{<$content['mission_no']>}"></p>
    <div id="missionThing">名称：<input type="text" name="missionThing" value="{<$content['mission_maintainthing']>}"></div>
    <p>任务类型：
        <select name="missionType" id="missionType" onchange="changeMissionThing()">
            <option value="设备维护">设备维护</option>
            <option value="仪表维护">仪表维护</option>
            <option value="工艺维护">工艺维护</option>
        </select>
    </p>
    <p>任务内容：<input type="text" name="missionName" value="{<$content['mission_name']>}"></p>

    <p>上次维护时间：<input type="text" name="lastTime" value="{<$content['mission_lasttime']>}"></p>
    <p>下次维护时间：<input type="text" name="thisTime" value="{<$content['mission_thistime']>}"></p>
    <p>任务周期：<input type="text" name="missionCycle" value="{<$content['mission_cycle']>}"></p>
    <p>提醒时间：<input type="text" name="remindTime" value="{<$content['mission_remindtime']>}"></p>
    <p>所需物品：<input type="text" name="missionGoods" value="{<$content['mission_goodsname']>}"></p>
    <p>备注：<input type="text" name="remark" value="{<$content['mission_remark']>}"></p>
    <input type="submit" value="提交" onclick="javascript:window.location.href='missionList.php'">
</form>
</div>



