{<include file="head.tpl">}

<P></P>

<form name="missionAdd" method="post" action="supplierAddTo.php">
    <p>供应商编号：<input type="text" name="supplierNo"></p>
    <div id="supplierName">供应商名称：<input type="text" name="supplierName"></div>
    <p>类型：
        {<foreach $content['type'] as $key=>$item>}
        <input type="radio" name="supplierType" value="{<$key>}">{<$item>}
        {</foreach>}
    </p>
    <p>
        类型2：
        {<foreach $content['type2'] as $key=>$item>}
        <input type="radio" name="supplierType2" value="{<$key>}">{<$item>}
        {</foreach>}
    </p>

    <p>厂商地址：<input type="text" name="address"></p>
    <p>所够物品：<input type="text" name="goods"></p>
    <div class="certificate">
        <p>厂商资质：</p>
        <table class="cerList">
            <tr>
                <th>资质名称：</th>
                <th>到期时间：</th>
                <th>更新时间</th>
            </tr>
            <tr id="cer">
                <td><input type="text" name="certificate[]" id="cer1"></td>
                <td><input type="text" name="dueTime[]" id="dt1"></td>
                <td><input type="text" name="updateTime[]" id="dt1"></td>
            </tr>
        </table>
        <input type="button" name = "add" class="add" id="add" value="添加一行">
    </div>
    <p>备注：<input type="text" name="remark"></p>
    <input type="submit" value="添加">
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



