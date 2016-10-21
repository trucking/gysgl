{<include file="head.tpl">}
<div class="title">到期资质列表</div>
<div class="user">{<$content['username']>}</div>
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
        <td id="">{<$item['supplier_uid']>}</td>
        <td class="supName">{<$item['supplier_name']>}</td>
        <td class="cerName">{<$item['certificate']>}</td>
        <td class="dueTime">{<$item['due_time']>}</td>
        <td>{<$item['update_time']>}</td>
        <td style="width: 40px;">
            <a id={<$item['id']>}>更新</a>
        </td>
    </tr>
    {</foreach>}
</table>
{<else>}
<p>30天内没有资质即将到期</p>
{</if>}
</div>
<div class="tanchu">
    <div class="supName">供应商名称</div>
    <div class="cerName">资质名称：</div>
    <div class="dueTime">到期时间</div>
    <div class="newTime">
        新的到期时间：<input type="text" name="newTime" id="newTime">
        <button class="update">更新</button>
        <button class="close">关闭</button>
    </div>
    <div class="msg"></div>
</div>
</body>
<script src="./temp/js/updateCer.js"></script>
</html>
