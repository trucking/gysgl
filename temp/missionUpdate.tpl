{<include file="head.tpl">}
<form name="missionAdd" method="post" action="missionUpdateTo.php?mission_sysno={<$content['mission_sysno']>} ">

    <p>�����ţ�<input type="text" name="missionNo" value="{<$content['mission_no']>}"></p>
    <div id="missionThing">���ƣ�<input type="text" name="missionThing" value="{<$content['mission_maintainthing']>}"></div>
    <p>�������ͣ�
        <select name="missionType" id="missionType" onchange="changeMissionThing()">
            <option value="�豸ά��">�豸ά��</option>
            <option value="�Ǳ�ά��">�Ǳ�ά��</option>
            <option value="����ά��">����ά��</option>
        </select>
    </p>
    <p>�������ݣ�<input type="text" name="missionName" value="{<$content['mission_name']>}"></p>

    <p>�ϴ�ά��ʱ�䣺<input type="text" name="lastTime" value="{<$content['mission_lasttime']>}"></p>
    <p>�´�ά��ʱ�䣺<input type="text" name="thisTime" value="{<$content['mission_thistime']>}"></p>
    <p>�������ڣ�<input type="text" name="missionCycle" value="{<$content['mission_cycle']>}"></p>
    <p>����ʱ�䣺<input type="text" name="remindTime" value="{<$content['mission_remindtime']>}"></p>
    <p>������Ʒ��<input type="text" name="missionGoods" value="{<$content['mission_goodsname']>}"></p>
    <p>��ע��<input type="text" name="remark" value="{<$content['mission_remark']>}"></p>
    <input type="submit" value="�ύ" onclick="javascript:window.location.href='missionList.php'">
</form>
</div>



