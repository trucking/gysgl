{<include file="head.tpl">}
<div class="title">�޸ļ�¼</div>

{<if $content['list']>}
<table class="rwtxList">
    <tr>
        <th>�޸���</th>
        <th>�޸�����</th>
        <th>�޸Ĳ���</th>
        <th>��Ӧ��</th>
        <th>����</th>
        <th>����ʱ��</th>
    </tr>
    {<foreach $content['list'] as $key=>$item>}
    <tr>
        <td>{<$item['changeUser']>}</td>
        <td>{<$item['changeDate']>}</td>
        <td>{<$item['changeType']>}</td>
        <td>{<$item['supplier']>}</td>
        <td>{<$item['certificate']>}</td>
        <td>{<$item['dueTime']>}</td>

    </tr>
    {</foreach>}
</table>
{<else>}
<p>û���޸ļ�¼</p>

{</if>}
</div>

</body>
</html>
