
/**
 * 页面加载事件
 */
$(function(){
	loadPurcheOrderByPage(1)
	
});

//毫秒转日期
function turnTime(ms){
	var oDate = new Date(ms),
	oYear = oDate.getFullYear(),
	oMonth = oDate.getMonth()+1,
	oDay = oDate.getDate(),
	oHour = oDate.getHours(),
	oMin = oDate.getMinutes(),
	oSen = oDate.getSeconds(),
	oTime = oYear +'-'+ getzf(oMonth) +'-'+ getzf(oDay) +' '+ getzf(oHour) +':'+ getzf(oMin) +':'+getzf(oSen);//最后拼接时间
	return oTime;
}
//给时间补上零
function getzf(num){
	if(parseInt(num) < 10){
		num = '0'+num;
	}
	return num;
}

function loadPurcheOrderByPage(indexpage){

	var url = "/maven_ssm/api/purCherOrder/findPurcherOrderByPage";
	//获取用户输入的值（时间）
	var time1 = $("#orderTime1").val();
	alert(time1);
	var time2 = $("#orderTime2").val();
	alert(time2);
	
	var params ={"indexpage":indexpage,"time1":time1,"time2":time2};
	$.post(
		url,
		params,
		function(apiBean){
			var data = apiBean.datas;
			//dom 转Jquery
			var $da = $(data);
			//获取数据目的地
			var context = $("#myContext");
			
			//定义一个保存累计data的变量
			var sumData = "";
			
			
			
			$da.each(function(index,dom){
				var items = "<tr>";
				items +="<td align='center'><div class='table-val'>"+dom.orderid+"</div></td>";
				items +="<td align='center'><div class='table-val'>"+dom.gongHuoShan+"</div></td>";
				items +="<td align='center'><div class='table-val'>"+dom.employeePill+"</div></td>";
				items +="<td align='center'><div class='table-val'>"+turnTime(dom.createtime)+"</div></td>";
				items +="<td align='center'><div class='table-val'>"+dom.countNumber+"</div></td>";
				items +="<td align='center'><div class='table-val'>"+dom.total+"</div></td>";
				items +="  <td align='center'><a href='details.html' class='btn btn-default btn-sm'>详情</a></td>";
				items +="<td align='center'><div class='table-val'>"+dom.orderStatus+"</div></td>";
				items +=" </tr>";
				
				sumData += items;
				
			});
			
			context.html(sumData);
			
			//使用js封装分页数据	
			
			var pagehtml ="";
		
			pagehtml += "<a onclick='loadPurcheOrderByPage(1)' >[首页]</a>&nbsp;";
			if(apiBean.indexpage > 1){
				
				pagehtml += "<a onclick='loadPurcheOrderByPage("+(apiBean.indexpage - 1)+")' > 上一页 </a>&nbsp;";
			}else{
				pagehtml +="上一页";
				
			}
			
			
			if(apiBean.totalPage < 4){
				for (var i = 1; i <= apiBean.totalPage; i++) {
					pagehtml +="<a style='text-decoration: none' class='myClass' onclick='loadPurcheOrderByPage("+i+")'>&nbsp;<input type='button' value='"+i+"'/>&nbsp;</a>";
				}
				
			}else if(apiBean.indexpage + 4 <= apiBean.totalPage){
				
				for ( var i = apiBean.indexpage; i < apiBean.indexpage + 4; i++) {
					pagehtml += "<a style='text-decoration: none' class='myClass' onclick='loadPurcheOrderByPage("+i+")' >&nbsp;<input type='button' value='"+i+"'/>&nbsp;</a>&nbsp;";
				}
			}else{
				for ( var i = apiBean.totalPage - 3; i <= apiBean.totalPage; i++) {
					pagehtml += "<a style='text-decoration: none' class='myClass'  onclick='loadPurcheOrderByPage("+i+")' >&nbsp;<input type='button' value='"+i+"'/>&nbsp;</a>&nbsp;";
				}
			}
			
			
			
			if(apiBean.indexpage < apiBean.totalPage){
				
				pagehtml += "<a onclick='loadPurcheOrderByPage("+(apiBean.indexpage + 1)+")' > 下一页 </a>&nbsp;";
			}else{
				pagehtml +=" 下一页&nbsp;&nbsp;&nbsp;";
			}
			
			
			pagehtml += "<a onclick='loadPurcheOrderByPage("+(apiBean.totalPage)+")' >[尾页]</a>&nbsp;";
			pagehtml += "当前第&nbsp;"+apiBean.indexpage+"&nbsp;页/共&nbsp;"+apiBean.totalPage+"&nbsp;页";
			pagehtml +="</ul>";
			$("#myPage").html(pagehtml);
			
		},
		"json"
	
	);
	
	
	
	
	
}



