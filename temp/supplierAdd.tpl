{<include file="head.tpl">}

<P></P>

<form name="missionAdd" method="post" action="supplierAddTo.php">
    <p>��Ӧ�̱�ţ�<input type="text" name="supplierNo"></p>
    <div id="supplierName">��Ӧ�����ƣ�<input type="text" name="supplierName"></div>
    <p>���ͣ�
        {<foreach $content['type'] as $key=>$item>}
        <input type="radio" name="supplierType" value="{<$key>}">{<$item>}
        {</foreach>}
    </p>
    <p>
        ����2��
        {<foreach $content['type2'] as $key=>$item>}
        <input type="radio" name="supplierType2" value="{<$key>}">{<$item>}
        {</foreach>}
    </p>

    <p>���̵�ַ��<input type="text" name="address"></p>
    <p>������Ʒ��<input type="text" name="goods"></p>
    <div class="certificate">
        <p>�������ʣ�</p>
        <table class="cerList">
            <tr>
                <th>�������ƣ�</th>
                <th>����ʱ�䣺</th>
                <th>����ʱ��</th>
            </tr>
            <tr id="cer">
                <td><input type="text" name="certificate[]" id="cer1"></td>
                <td><input type="text" name="dueTime[]" id="dt1"></td>
                <td><input type="text" name="updateTime[]" id="dt1"></td>
            </tr>
        </table>
        <input type="button" name = "add" class="add" id="add" value="���һ��">
    </div>
    <p>��ע��<input type="text" name="remark"></p>
    <input type="submit" value="���">
</form>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        var $i = 2;

        $("#add").click(function(){
            var $inHtml = '<tr id="tr"'+$i+'">' +
                    '<td><input type="text" name="certificate[]"></td>' +
                    '<td><input type="text" name="dueTime[]"></td>' +
                    '<td><input type="text" name="updateTime[]"></td>' +
                    '<td>' +
                    '<div class= "del">' +
                    '<img height="10px" src = "./temp/images/del.jpg">' +
                    '</div></td>' +
                    '</tr>';
            $("#cer").append($inHtml);
            $i++;
        });
        $(".del").live("click",function(){
            $(this).parent().parent().remove();
        });
    });
</script>



