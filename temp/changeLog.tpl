{<include file="head.tpl">}
<div class="title">修改记录</div>

{<if $content['list']>}
<table class="rwtxList">
    <tr>
        <th>修改人</th>
        <th>修改日期</th>
        <th>修改操作</th>
        <th>供应商</th>
        <th>资质</th>
        <th>到期时间</th>
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
<p>没有修改记录</p>

{</if>}
</div>

</body>
</html>
