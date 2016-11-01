{<include file="head.tpl">}
<div class="content">
    <div class="info">
        <div class="infoTitle">供应商编号：</div>
        <div class="infoContent">{<$content['info']['UID']>}</div>
        <div class="state">
            {<if $content['info']['isable'] == 1>}
            <img src="./temp/images/zy.gif">
            {<else if $content['info']['isable'] == 0>}
            <img src="./temp/images/exit.gif">
            {<else if $content['info']['isable'] == 2>}
            <img src="./temp/images/freeze.gif">
            {</if>}
        </div>
    </div>
    <div class="info">
        <div class="infoTitle">供应商名称：</div>
        <div class="infoContent">{<$content['info']['name']>}</div>
    </div>
    <div class="info">
        <div class="infoTitle">类型：</div>
        <div class="infoContent">{<$content['info']['type']>}</div>
    </div>
    <div class="info">
        <div class="infoTitle">类型：</div>
        <div class="infoContent">{<$content['info']['type2']>}</div>
    </div>
    <div class="info">
        <div class="infoTitle">厂商地址：</div>
        <div class="infoContent">{<$content['info']['address']>}</div>
    </div>
    <div class="info">
        <div class="infoTitle">所购物品：</div>
        <div class="infoContent">{<$content['info']['goods']>}</div>
    </div>
    <div class="info">
        <div class="infoTitle">
            厂商资质：
        </div>
        <div class="infoContent">
            <table class="rwtxList">
                <tr>
                    <th>资质名称</th>
                    <th>到期时间</th>
                    <th>更新时间</th>
                </tr>
                {<foreach $content['info']['cer'] as $key=>$item>}
                <tr>
                    <td>{<$item['certificate']>}</td>
                    <td>{<$item['due_time']>}</td>
                    <td>{<$item['update_time']>}</td>
                </tr>
                {</foreach>}
            </table>
        </div>
    </div>
    <div class="info">
        <div class="infoTitle">备注：</div>
        <div class="infoContent">{<$content['info']['remark']>}</div>
    </div>
</div>
