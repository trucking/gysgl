<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="GB2312">
    <link rel="stylesheet" type="text/css" href="./temp/css/rwtx.css" />
</head>
<script type="text/javascript" src="/general/rwtx//temp/js/jquery.min.js"></script>
<body>

<div class="title">
    �������

</div>
<table class="rwtxList">
    <tr>
        <th colspan="5">���ţ�
            <select class="" name="missionProject" id="missionProject">
                <option value="7ACA���ͳ���">7ACA���ͳ���</option>
                <option value="7ACA��������">7ACA��������</option>
                <option value="����ά�ᷢ��һ����">����ά�ᷢ��һ����</option>
                <option value="����ά�ᷢ�Ͷ�����">����ά�ᷢ�Ͷ�����</option>
                <option value="����ά������һ����">����ά������һ����</option>
                <option value="����ά������������">����ά������������</option>
                <option value="����ά��ڷ��޾�����">����ά��ڷ��޾�����</option>
                <option value="����ά��ڷ�����">����ά��ڷ�����</option>
                <option value="ͷ��ԭ��һ����">ͷ��ԭ��һ����</option>
                <option value="ͷ��ԭ�϶�����">ͷ��ԭ�϶�����</option>
                <option value="ͷ���޾�һ����">ͷ���޾�һ����</option>
                <option value="ˮ������">ˮ������</option>
                <option value="���ǳ���">���ǳ���</option>
                <option value="��¯����">��¯����</option>
                <option value="��ˮ������">��ˮ������</option>
                <option value="�ۺϳ���">�ۺϳ���</option>
                <option value="��Ϣ��">��Ϣ��</option>
            </select>
        </th>
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
                    var missionProject = document.getElementById("missionProject");
                    window.location.href = "missionSummaryByProject.php?missionType="+select.value+"&missionProject="+missionProject.value;
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
        <th>ά����</th>
    </tr>
    {<foreach $content['list'] as $key=>$item>}
    <tr id="{<$item['mission_sysno']>}">
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
        <td class="">{<$item['mission_user']>}</td>
    </tr>
    {</foreach>}
</table>
</div>