/**
 * Created by Administrator on 16-10-21.
 */
$(".title").click(function(){
    $(this).parent().siblings(".content").toggle();
});

$("#freezeSup").siblings(".content").hide();

$("#exitSup").siblings(".content").hide();

$("#result").hide();

$("#search").click(function(){
    $supName = $("#supName").val();
    if($supName == ''){
        $("#result").text("程序员小李友情提示：输点东西上去吧，要不真什么也找不到。").show();
        return false;
    }else{
//        $url = 'searchSup.php';
//        $.ajax({
//           type:"POST",
//            url:$url,
//            dataType:"json",
//            data:{sup:$supName},
//            contentType: "application/x-www-form-urlencoded; charset=utf-8",
//            success: function(data){
//                alert(data.test);
//            },
//            error:function(data){
//                alert(data);
//            }
//        });
        window.location.href("supplierResult.php?supName="+$supName);
    }
});

$("#supName").focus(function(){
    $("#result").hide();
});

$(".change").click(function(){
    $id = $(this).attr("id");
    $.post(
        './ajax/changeSup.php'
    );
});

$(".freeze").click(function(){
    $id = $(this).attr("id");
    $.post(
        './ajax/freeze.php',
        {id : $id},
        function(data){
            window.location.reload();
        }
    );
});

$(".exit").click(function(){
    $id = $(this).attr("id");
    $.post(
        './ajax/exit.php',
        {id : $id},
        function(data){
            window.location.reload();
        }
    );
});

$(".recover").click(function(){
    $id = $(this).attr("id");
    $.post(
        './ajax/recover.php',
        {id : $id},
        function(data){
            window.location.reload();
        }
    );
});