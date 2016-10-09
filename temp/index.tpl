{<include file="head.tpl">}
<div class="title">供应商管理</div>

    {<if $content['list']>}
    <table class="rwtxList">
        <tr>
            <th>任务编号</th>
            <th>任务名称</th>
            <th>任务类别</th>
            <th>所属部门</th>
            <th>上次维护时间</th>
            <th>本次维护时间</th>
            <th>维护周期</th>
            <th>提醒时间</th>
            <th>维护用品</th>
            <th>备注</th>
            <th>操作</th>
        </tr>
    {<foreach $content['list'] as $key=>$item>}
        <tr>
            <td>{<$item['mission_no']>}</td>
            <td>{<$item['mission_name']>}</td>
            <td>{<$item['mission_type']>}</td>
            <td>{<$content['deptName']>}</td>
            <td>{<$item['mission_lasttime']>}</td>
            <td>{<$item['mission_thistime']>}</td>
            <td>{<$item['mission_cycle']>}天</td>
            <td>{<$item['mission_remindtime']>}</td>
            <td>{<$item['mission_goodsname']>}</td>
            <td>{<$item['mission_remark']>}</td>
            <td style="width: 40px;">
                <a href="whrz.php?mission_sysno={<$item['mission_sysno']>}" onclick="window.location.reload()">维护</a>
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
