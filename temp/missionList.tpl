{<include file="head.tpl">}
<div class="title">
    �����б�

</div>
<table class="rwtxList">
    <tr>
    <th colspan="5">���ţ�{<$content['deptName']>}</th>
    <th colspan="6">
        ���ͣ�
        <select class="" name="missionType" id="missionType">
            <option value="ȫ��">ȫ��</option>
            <option value="�豸ά��">�豸ά��</option>
            <option value="����ά��">����ά��</option>
            <option value="�Ǳ�ά��">�Ǳ�ά��</option>
        </select>
        <script>
            function submitType()
            {
                var select = document.getElementById("missionType");
                window.location.href = "missionList.php?missionType="+select.value;
            }

        </script>
        <input type="button" class="SmallButton" onclick="submitType()" value="��ѯ"></input>
    </th>
    </tr>
    <tr>
        <th>���</th>
        <th>{<$content['maintainThingTitle']>}</th>
        <th>��������</th>
        <th>��������</th>
        <th>�ϴ�ά��ʱ��</th>
        <th>����ά��ʱ��</th>
        <th>ά������</th>
        <th>��������</th>
        <th>������Ʒ</th>
        <th>��ע</th>
        <th>����</th>
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
        <td class="">{<$item['mission_cycle']>}��</td>
        <td class="">{<$item['mission_remindtime']>}</td>
        <td class="">{<$item['mission_goodsname']>}</td>
        <td class="">{<$item['mission_remark']>}</td>
        <td style="width: 95px;">
            <a href="whrz.php?mission_sysno={<$item['mission_sysno']>}" onclick="window.location.reload()">ά��</a>
            <a href="missionUpdate.php?mission_sysno={<$item['mission_sysno']>}">�༭</a>
            <a href="deleteMission.php?mission_sysno={<$item['mission_sysno']>}">ɾ��</a>
        </td>
    </tr>
    {</foreach>}
</table>
</div>