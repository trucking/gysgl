{<include file="head.tpl">}
<div class="title">���������б�</div>
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
        <td>{<$item['supplier_uid']>}</td>
        <td>{<$item['supplier_name']>}</td>
        <td>{<$item['certificate']>}</td>
        <td>{<$item['due_time']>}</td>
        <td>{<$item['update_time']>}</td>
        <td style="width: 40px;">
            <a href="certificateChange.php?id={<$item['id']>}">����</a>
        </td>
    </tr>
    {</foreach>}
</table>
{<else>}
<p>30����û�����ʼ�������</p>
{</if>}
</div>

</body>
</html>
