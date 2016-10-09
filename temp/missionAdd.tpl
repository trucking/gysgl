{<include file="head.tpl">}
<script type="text/javascript">
    function changeMissionThing()
    {
        objMissionType = document.getElementById("missionType");
        valMissionType = objMissionType.value;

        if(valMissionType == "设备维护")
        {
            innerVal = "设备名称：<input type=\"text\" name=\"missionThing\">";
            document.getElementById("missionThing").innerHTML = innerVal;
            //alert(document.getElementById("missionThing").text);
        }else if(valMissionType == "仪表维护")
        {
            innerVal = "仪表名称：<input type=\"text\" name=\"missionThing\">";
            document.getElementById("missionThing").innerHTML = innerVal;
        }else if(valMissionType == "工艺维护")
        {
            innerVal = "工艺步骤：<input type=\"text\" name=\"missionThing\">";
            document.getElementById("missionThing").innerHTML = innerVal;
        }
    }

</script>
<P></P>

<form name="missionAdd" method="post" action="missionAddTo.php">
    <p>任务类型：
        <select name="missionType" id="missionType" onchange="changeMissionThing()">
            <option value="设备维护">设备维护</option>
            <option value="仪表维护">仪表维护</option>
            <option value="工艺维护">工艺维护</option>
        </select>
    </p>
    <p>任务编号：<input type="text" name="missionNo"></p>
    <div id="missionThing">设备名称：<input type="text" name="missionThing"></div>
    <p>任务内容：<input type="text" name="missionName"></p>

    <p>上次维护时间：<input type="text" name="lastTime"></p>
    <p>下次维护时间：<input type="text" name="thisTime"></p>
    <p>任务周期：<input type="text" name="missionCycle"></p>
    <p>提醒时间：<input type="text" name="remindTime"></p>
    <p>所需物品：<input type="text" name="missionGoods"></p>
    <p>备注：<input type="text" name="remark"></p>
    <input type="submit" value="提交">
</form>
</div>



