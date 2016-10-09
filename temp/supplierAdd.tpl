{<include file="head.tpl">}
<script type="text/javascript">

</script>
<P></P>

<form name="missionAdd" method="post" action="">
    <p>供应商编号：<input type="text" name="supplierNo"></p>
    <div id="supplierName">供应商名称：<input type="text" name="supplierName"></div>
    <p>类型：
        <input type="radio" name="supplierType" value="0" checked>包材供应商
        <input type="radio" name="supplierType" value="1">原料供应商
    </p>

    <p>厂商地址：<input type="text" name="address"></p>
    <p>所够物品：<input type="text" name="goods"></p>
    <p>厂商资质：
        <input type="checkbox" name="certification">资质1
        <input type="checkbox" name="certification">资质2
        <input type="checkbox" name="certification">资质3
    </p>

    <p>备注：<input type="text" name="remark"></p>
    <input type="submit" value="添加">
</form>
</div>



