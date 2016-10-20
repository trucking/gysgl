{<include file="head.tpl">}
<div class="title">到期资质列表</div>
{<if $content['list']>}
<table class="rwtxList">
    <tr>
        <th>编号</th>
        <th>名称</th>
        <th>资质</th>
        <th>到期时间</th>
        <th>上一次更新时间</th>
        <th>操作</th>
    </tr>
    {<foreach $content['list'] as $key=>$item>}
    <tr>
        <td>{<$item['supplier_uid']>}</td>
        <td>{<$item['supplier_name']>}</td>
        <td>{<$item['certificate']>}</td>
        <td>{<$item['due_time']>}</td>
        <td>{<$item['update_time']>}</td>
        <td style="width: 40px;">
            <a href="certificateChange.php?id={<$item['id']>}">更新</a>
        </td>
    </tr>
    {</foreach>}
</table>
{<else>}
<p>30天内没有资质即将到期</p>
{</if>}
</div>

</body>
</html>
