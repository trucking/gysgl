{<include file="head.tpl">}
<div class="title">��Ӧ�̹���</div>

    {<if $content['list']>}
    <table class="rwtxList">
        <tr>
            <th>������</th>
            <th>��������</th>
            <th>�������</th>
            <th>��������</th>
            <th>�ϴ�ά��ʱ��</th>
            <th>����ά��ʱ��</th>
            <th>ά������</th>
            <th>����ʱ��</th>
            <th>ά����Ʒ</th>
            <th>��ע</th>
            <th>����</th>
        </tr>
    {<foreach $content['list'] as $key=>$item>}
        <tr>
            <td>{<$item['mission_no']>}</td>
            <td>{<$item['mission_name']>}</td>
            <td>{<$item['mission_type']>}</td>
            <td>{<$content['deptName']>}</td>
            <td>{<$item['mission_lasttime']>}</td>
            <td>{<$item['mission_thistime']>}</td>
            <td>{<$item['mission_cycle']>}��</td>
            <td>{<$item['mission_remindtime']>}</td>
            <td>{<$item['mission_goodsname']>}</td>
            <td>{<$item['mission_remark']>}</td>
            <td style="width: 40px;">
                <a href="whrz.php?mission_sysno={<$item['mission_sysno']>}" onclick="window.location.reload()">ά��</a>
            </td>
        </tr>
    {</foreach>}
    </table>
    <p>��{<$content['num']>}����
        {<for $val=1 to $content['page']>}
        <a href="index.php?page={<$val>}">{<$val>}</a>
        {</for>}
        ҳ
    </p>
    {<else>}
    <p>��û�й�Ӧ��Ŷ���ǲ��ǿ��Կ��Ǽ�һ���أ�</p>
    <a href="supplierAdd.php">��ӹ�Ӧ��</a>
    {</if>}
</div>

</body>
</html>
