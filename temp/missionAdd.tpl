{<include file="head.tpl">}
<script type="text/javascript">
    function changeMissionThing()
    {
        objMissionType = document.getElementById("missionType");
        valMissionType = objMissionType.value;

        if(valMissionType == "�豸ά��")
        {
            innerVal = "�豸���ƣ�<input type=\"text\" name=\"missionThing\">";
            document.getElementById("missionThing").innerHTML = innerVal;
            //alert(document.getElementById("missionThing").text);
        }else if(valMissionType == "�Ǳ�ά��")
        {
            innerVal = "�Ǳ����ƣ�<input type=\"text\" name=\"missionThing\">";
            document.getElementById("missionThing").innerHTML = innerVal;
        }else if(valMissionType == "����ά��")
        {
            innerVal = "���ղ��裺<input type=\"text\" name=\"missionThing\">";
            document.getElementById("missionThing").innerHTML = innerVal;
        }
    }

</script>
<P></P>

<form name="missionAdd" method="post" action="missionAddTo.php">
    <p>�������ͣ�
        <select name="missionType" id="missionType" onchange="changeMissionThing()">
            <option value="�豸ά��">�豸ά��</option>
            <option value="�Ǳ�ά��">�Ǳ�ά��</option>
            <option value="����ά��">����ά��</option>
        </select>
    </p>
    <p>�����ţ�<input type="text" name="missionNo"></p>
    <div id="missionThing">�豸���ƣ�<input type="text" name="missionThing"></div>
    <p>�������ݣ�<input type="text" name="missionName"></p>

    <p>�ϴ�ά��ʱ�䣺<input type="text" name="lastTime"></p>
    <p>�´�ά��ʱ�䣺<input type="text" name="thisTime"></p>
    <p>�������ڣ�<input type="text" name="missionCycle"></p>
    <p>����ʱ�䣺<input type="text" name="remindTime"></p>
    <p>������Ʒ��<input type="text" name="missionGoods"></p>
    <p>��ע��<input type="text" name="remark"></p>
    <input type="submit" value="�ύ">
</form>
</div>



