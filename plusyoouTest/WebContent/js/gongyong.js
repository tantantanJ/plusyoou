﻿$(function(){
	$("#head_included").load("head.html", function(){
		var strForLoggedIn = '<div><span id="putUserNameHere" style="font-weight:bold;color:white"></span><lable style="color:white">，您好&nbsp;</lable>'
			+ '|&nbsp;<a href="zhuce.html?action=xiugai">修改资料</a>|&nbsp;<a href="javascript:void logOut();">退出</a></div>';
		var strForLoggedOff = '<div><a href="denglu.html">登录</a> | <a href="zhuce.html?action=zhuce">注册</a></div>';
		var userName = getCookieContent('UserName');
		if (userName) {
			$('#login_info_area').html(strForLoggedIn);
			$('#putUserNameHere').html(userName);
		} else {
			$.post('login', 'action=login', function(data){
				if($.trim(data) == 'notLogIn') {
					$('#login_info_area').html(strForLoggedOff);						
				} else {
					userName = getCookieContent('UserName');
					if (userName) {
						$('#login_info_area').html(strForLoggedIn); 										
						$('#putUserNameHere').html(userName);
					} else {
						$('#login_info_area').html(strForLoggedOff);						
					}
				};
			});
		}
	});
	
	$("#foot_included").load("foot.html");

});

function getCookieContent(strName){
	if (!strName) strName = 'UserName';
	var content = '';
	var c_start=document.cookie.indexOf(strName);
	if (c_start!=-1) { 
		c_start=c_start + strName.length+1; 
		var c_end=document.cookie.indexOf(";",c_start);
		if (c_end==-1) c_end=document.cookie.length;
		content = document.cookie.substring(c_start,c_end);
		content = decodeURIComponent(content);
	}
	return content;
}

function getSiteURL() {
	var url = window.location.href;
	if (url.lastIndexOf('/') != -1) {
		url = url.substring(0, url.lastIndexOf('/'));
	}
    return url;
}

function logOut(){
	$.post('login', 'action=exit', function(data){
		$('#login_info_area').html('<div><a href="denglu.html">登录</a> | <a href="zhuce.html">注册</a></div>');
	});
};

//取URL后的参数 function GetQueryString(name)
//URL的参数&参数名1=XXXX&参数名2=XXXX&参数名3=XXXX  
//alert(GetQueryString("参数名2"));
function GetQueryString(name) {
var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
var r = window.location.search.substr(1).match(reg);
if (r != null)
    return unescape(r[2]);
return null;
}