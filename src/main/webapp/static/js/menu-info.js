//关注
function guanzhu(that,user_id,_token,isMutual){
    var action = $.trim($(that).attr("data-action"));

    if(action=="add"){
        $(that).html("已关注");
        /*if(res.data.rel==1){
            $(that).html("已关注");
        }else if(res.data.rel==3){
            if(isMutual==1){
                $(that).html("互相关注");
            }else{
                $(that).html("已关注");
            }
        }*/
        $(that).attr("data-action","cancel");
        $(that).addClass("hasgz");
    }else{
        $(that).attr("data-action","add");
        $(that).html("<span class='addicon'>＋</span> 关注");
        $(that).removeClass("hasgz");
    }

    /*$.ajax({
        url: '/user/addDelFriend',
        type:'post',
        data: {
            'user_id': user_id,
            'action' : action,
            "_token" : _token
        },
        success: function (res) {
            if(res.errcode == 0){
                if(action=="add"){
                    if(res.data.rel==1){
                        $(that).html("已关注");
                    }else if(res.data.rel==3){
                        if(isMutual==1){
                            $(that).html("互相关注");
                        }else{
                            $(that).html("已关注");
                        }
                    }
                    $(that).attr("data-action","cancel");
                    $(that).addClass("hasgz");
                }else{
                    $(that).attr("data-action","add");
                    $(that).html("<span class='addicon'>＋</span> 关注");
                    $(that).removeClass("hasgz");
                }
            }
        }
    });*/
}
//笔记点赞
function setLike(id,that,token) {
    if($(that).data("like")==="like"){

        $(that).attr("onclick","")
        $(that).removeClass("like");
        $(that).addClass("not-like");
        $(that).data("like","not-like")
        if(Number($(that).html())>0){
            $(that).html(Number($(that).html()) - 1)
        }
        $(that).attr("onclick","setLike("+id+",this,'" + token + "')")

        // 不喜欢
        /*$.ajax({
            url:"/note/unlike",
            data:{id:id,'_token':token},
            type:"post",
            success:function (res) {
                if(res.errcode===0){
                    $(that).attr("onclick","")
                    $(that).removeClass("like");
                    $(that).addClass("not-like");
                    $(that).data("like","not-like")
                    if(Number($(that).html())>0){
                        $(that).html(Number($(that).html()) - 1)
                    }
                    $(that).attr("onclick","setLike("+id+",this,'" + token + "')")
                }
            }
        })*/
    }else{

        $(that).attr("onclick","")
        $(that).removeClass("not-like");
        $(that).addClass("like");
        $(that).data("like","like")
        $(that).html(Number($(that).html()) + 1)
        $(that).attr("onclick","setLike("+id+",this,'" + token + "')")

        // 喜欢
        /*$.ajax({
            url:"/note/like",
            data:{id:id,'_token':token},
            type:"post",
            success:function (res) {
                if(res.errcode===0){
                    $(that).attr("onclick","")
                    $(that).removeClass("not-like");
                    $(that).addClass("like");
                    $(that).data("like","like")
                    $(that).html(Number($(that).html()) + 1)
                    $(that).attr("onclick","setLike("+id+",this,'" + token + "')")
                }
            }
        })*/
    }
}
// 收藏菜单
var menu_list=[];
function createmenu()
{
    $('#coll-box').hide();
    $('#create_menu').show();
}
function collect(that){
    var coll_status =  $(".btn-collect").attr("data-status");
    if(coll_status==1){
        $(that).attr("data-status","0").removeClass("hascoll").html("收藏");
    }else{
        $(that).attr("data-status","1").addClass("hascoll").html("已收藏");

    }
    /*$.ajax({
        url: '/recipe/addDelCollectInfo',
        type:'post',
        data: {
            'cook_id': cook_id,
            'status' : coll_status,
            "_token" : _token,
        },
        success: function(res) {
            if(coll_status==1){
                $(that).attr("data-status","0").removeClass("hascoll").html("收藏");
            }else{
                $(that).attr("data-status","1").addClass("hascoll").html("已收藏");
                addtomenu(cook_id,1,_token);
            }
        }
    });*/
}