{<include file="head.tpl">}
<div class="title">
    任务列表

</div>
<table class="rwtxList">
    <tr>
    <th colspan="5">部门：{<$content['deptName']>}</th>
    <th colspan="6">
        类型：
        <select class="" name="missionType" id="missionType">
            <option value="全部">全部</option>
            <option value="设备维护">设备维护</option>
            <option value="工艺维护">工艺维护</option>
            <option value="仪表维护">仪表维护</option>
        </select>
        <script>
            function submitType()
            {
                var select = document.getElementById("missionType");
                window.location.href = "missionList.php?missionType="+select.value;
            }

        </script>
        <input type="button" class="SmallButton" onclick="submitType()" value="查询"></input>
    </th>
    </tr>
    <tr>
        <th>编号</th>
        <th>{<$content['maintainThingTitle']>}</th>
        <th>任务名称</th>
        <th>任务类型</th>
        <th>上次维修时间</th>
        <th>本次维修时间</th>
        <th>维护周期</th>
        <th>提醒日期</th>
        <th>所需物品</th>
        <th>备注</th>
        <th>操作</th>
    </tr>
    {<foreach $content['list'] as $key=>$item>}
    <tr
        {<if $item['color']==-1>}class="trGreen"{</if>}
        {<if $item['color']==0>}class="trYellow"{</if>}
        {<if $item['color']==1>}class="trRed"{</if>}

        id="{<$item['mission_sysno']>}">
        <td class="">{<$item['mission_no']>}</td>
        <td class="">{<$item['mission_maintainthing']>}</td>
        <td class="">{<$item['mission_name']>}</td>
        <td class="">{<$item['mission_type']>}</td>
        <td class="">{<$item['mission_lasttime']>}</td>
        <td class="">{<$item['mission_thistime']>}</td>
        <td class="">{<$item['mission_cycle']>}天</td>
        <td class="">{<$item['mission_remindtime']>}</td>
        <td class="">{<$item['mission_goodsname']>}</td>
        <td class="">{<$item['mission_remark']>}</td>
        <td style="width: 95px;">
            <a href="whrz.php?mission_sysno={<$item['mission_sysno']>}" onclick="window.location.reload()">维护</a>
            <a href="missionUpdate.php?mission_sysno={<$item['mission_sysno']>}">编辑</a>
            <a href="deleteMission.php?mission_sysno={<$item['mission_sysno']>}">删除</a>
        </td>
    </tr>
    {</foreach>}
</table>
</div>