{<include file="head.tpl">}
<div class="title">供应商列表</div>
    <p>
        中间商：{<$content['midNum']>}&nbsp;家
        生产商：{<$content['proNum']>}&nbsp;家
        包材供应商：{<$content['bcNum']>}&nbsp;家
        原料供应商：{<$content['ylNum']>}&nbsp;家
    </p>
    {<if $content['list']>}
    <table class="rwtxList">
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>类别</th>
            <th>类别2</th>
            <th>地址</th>
            <th>所购物品</th>
            <th>操作</th>
        </tr>
    {<foreach $content['list'] as $key=>$item>}
        <tr>
            <td>{<$item['uid']>}</td>
            <td>{<$item['name']>}</td>
            <td>{<$item['type']>}</td>
            <td>{<$item['type2']>}</td>
            <td>{<$item['address']>}</td>
            <td>{<$item['goods']>}</td>
            <td style="width: 40px;">
                <a href="supplierChange.php?id={<$item['id']>}">修改</a>
            </td>
        </tr>
    {</foreach>}
    </table>
    <p>共{<$content['num']>}条第
        {<for $val=1 to $content['page']>}
        <a href="index.php?page={<$val>}">{<$val>}</a>
        {</for>}
        页
    </p>
    {<else>}
    <p>还没有供应商哦，是不是可以考虑加一个呢？</p>
    <a href="supplierAdd.php">添加供应商</a>
    {</if>}
</div>

</body>
</html>
