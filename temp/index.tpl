{<include file="head.tpl">}
<div class="list">
    <div class="titlebar"  id="enableSup">
        <div class="title">在用供应商列表</div>
    </div>
    <div class="content">
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
        {<else>}
        <p>还没有供应商哦，是不是可以考虑加一个呢？</p>
        <a href="supplierAdd.php">添加供应商</a>
        {</if>}
    </div>
</div>
<div class="list">
    <div class="titlebar"  id="freezeSup">
        <div class="title">冻结供应商列表</div>
    </div>
    <div class="content">
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

        {<else>}
        <p>还没有供应商哦，是不是可以考虑加一个呢？</p>
        <a href="supplierAdd.php">添加供应商</a>
        {</if>}
    </div>
</div>
<div class="list">
    <div class="titlebar"  id="exitSup">
        <div class="title">退出供应商列表</div>
    </div>
    <div class="content">
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

        {<else>}
        <p>还没有供应商哦，是不是可以考虑加一个呢？</p>
        <a href="supplierAdd.php">添加供应商</a>
        {</if>}
    </div>
</div>
<script src="./temp/js/index.js"></script>
</body>
</html>
