/**
 * Created by Administrator on 16-10-21.
 */
$(".title").click(function(){
    $(this).parent().siblings(".content").toggle();
});
$("#freezeSup").siblings(".content").hide();
$("#exitSup").siblings(".content").hide();

