{<include file="head.tpl">}
<p class="title">ά����־</p>
    <table class="rwtxList" id="" border="1">
        <tr class="">
            <th>ά��ʱ��</th>
            <th>ά����</th>
            <th>������</th>
            <th>���豸/�Ǳ�/���գ�����</th>
            <th>��������</th>
            <th>����</th>
            <th>�ϴ�ά��ʱ��</th>
            <th>ά��������Ʒ</th>
            <th>��ע</th>
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