{<include file="head.tpl">}
<p class="title">维护日志</p>
    <table class="rwtxList" id="" border="1">
        <tr class="">
            <th>维护时间</th>
            <th>维护人</th>
            <th>任务编号</th>
            <th>（设备/仪表/工艺）名称</th>
            <th>任务名称</th>
            <th>类型</th>
            <th>上次维护时间</th>
            <th>维护所需物品</th>
            <th>备注</th>
        </tr>
        {<foreach $content['log'] as $key=>$item>}
        <tr>
            <td>{<$item['maintain_time']>}</td>
            <td>{<$content['username']>}</td>
            <td>{<$item['mission_no']>}</td>
            <td>{<$item['mission_maintainthing']>}</td>
            <td>{<$item['mission_name']>}</td>
            <td>{<$item['mission_type']>}</td>
            <td>{<$item['mission_lasttime']>}</td>
            <td>{<$item['mission_goodsname']>}</td>
            <td>{<$item['mission_remark']>}</td>
        </tr>
        {</foreach>}
    </table>
</div>
</div>