{<include file="head.tpl">}
<div class="list">
    <div class="titlebar"  id="enableSup">
        <div class="title">���ù�Ӧ���б�</div>
    </div>
    <div class="content">
        <p>
            �м��̣�{<$content['midNum']>}&nbsp;��
            �����̣�{<$content['proNum']>}&nbsp;��
            ���Ĺ�Ӧ�̣�{<$content['bcNum']>}&nbsp;��
            ԭ�Ϲ�Ӧ�̣�{<$content['ylNum']>}&nbsp;��
        </p>
        {<if $content['list']>}
        <table class="rwtxList">
            <tr>
                <th>���</th>
                <th>����</th>
                <th>���</th>
                <th>���2</th>
                <th>��ַ</th>
                <th>������Ʒ</th>
                <th>����</th>
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
                    <a href="supplierChange.php?id={<$item['id']>}">�޸�</a>
                </td>
            </tr>
        {</foreach>}
        </table>
        {<else>}
        <p>��û�й�Ӧ��Ŷ���ǲ��ǿ��Կ��Ǽ�һ���أ�</p>
        <a href="supplierAdd.php">��ӹ�Ӧ��</a>
        {</if>}
    </div>
</div>
<div class="list">
    <div class="titlebar"  id="freezeSup">
        <div class="title">���ṩӦ���б�</div>
    </div>
    <div class="content">
        <p>
            �м��̣�{<$content['midNum']>}&nbsp;��
            �����̣�{<$content['proNum']>}&nbsp;��
            ���Ĺ�Ӧ�̣�{<$content['bcNum']>}&nbsp;��
            ԭ�Ϲ�Ӧ�̣�{<$content['ylNum']>}&nbsp;��
        </p>
        {<if $content['list']>}
        <table class="rwtxList">
            <tr>
                <th>���</th>
                <th>����</th>
                <th>���</th>
                <th>���2</th>
                <th>��ַ</th>
                <th>������Ʒ</th>
                <th>����</th>
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
                    <a href="supplierChange.php?id={<$item['id']>}">�޸�</a>
                </td>
            </tr>
            {</foreach>}
        </table>

        {<else>}
        <p>��û�й�Ӧ��Ŷ���ǲ��ǿ��Կ��Ǽ�һ���أ�</p>
        <a href="supplierAdd.php">��ӹ�Ӧ��</a>
        {</if>}
    </div>
</div>
<div class="list">
    <div class="titlebar"  id="exitSup">
        <div class="title">�˳���Ӧ���б�</div>
    </div>
    <div class="content">
        <p>
            �м��̣�{<$content['midNum']>}&nbsp;��
            �����̣�{<$content['proNum']>}&nbsp;��
            ���Ĺ�Ӧ�̣�{<$content['bcNum']>}&nbsp;��
            ԭ�Ϲ�Ӧ�̣�{<$content['ylNum']>}&nbsp;��
        </p>
        {<if $content['list']>}
        <table class="rwtxList">
            <tr>
                <th>���</th>
                <th>����</th>
                <th>���</th>
                <th>���2</th>
                <th>��ַ</th>
                <th>������Ʒ</th>
                <th>����</th>
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
                    <a href="supplierChange.php?id={<$item['id']>}">�޸�</a>
                </td>
            </tr>
            {</foreach>}
        </table>

        {<else>}
        <p>��û�й�Ӧ��Ŷ���ǲ��ǿ��Կ��Ǽ�һ���أ�</p>
        <a href="supplierAdd.php">��ӹ�Ӧ��</a>
        {</if>}
    </div>
</div>
<script src="./temp/js/index.js"></script>
</body>
</html>
