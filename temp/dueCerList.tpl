{<include file="head.tpl">}
<div class="title">���������б�</div>
<div class="user">{<$content['username']>}</div>
{<if $content['list']>}
<table class="rwtxList">
    <tr>
        <th>���</th>
        <th>����</th>
        <th>����</th>
        <th>����ʱ��</th>
        <th>��һ�θ���ʱ��</th>
        <th>����</th>
    </tr>
    {<foreach $content['list'] as $key=>$item>}
    <tr>
        <td id="">{<$item['supplier_uid']>}</td>
        <td class="supName">{<$item['supplier_name']>}</td>
        <td class="cerName">{<$item['certificate']>}</td>
        <td class="dueTime">{<$item['due_time']>}</td>
        <td>{<$item['update_time']>}</td>
        <td style="width: 40px;">
            <a id={<$item['id']>}>����</a>
        </td>
    </tr>
    {</foreach>}
</table>
{<else>}
<p>30����û�����ʼ�������</p>
{</if>}
</div>
<div class="tanchu">
    <div class="supName">��Ӧ������</div>
    <div class="cerName">�������ƣ�</div>
    <div class="dueTime">����ʱ��</div>
    <div class="newTime">
        �µĵ���ʱ�䣺<input type="text" name="newTime" id="newTime">
        <button class="update">����</button>
        <button class="close">�ر�</button>
    </div>
    <div class="msg"></div>
</div>
</body>
<script src="./temp/js/updateCer.js"></script>
</html>
