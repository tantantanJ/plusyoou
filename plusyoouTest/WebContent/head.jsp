<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
            <style>
                  
                    .py-header-log {
                        color: #fff;
                    }
                    .py-header{
                        
                        font-size: 16px;
                        font-family: "微软雅黑","Microsoft Yahei",Arial,Helvetica,sans-serif,"宋体";
                      border-bottom:1px solid  #D5D5D5;
                      width:100%;
                    
                    }
                    .py-header a{
                        color:#000;
                        text-decoration: none;
                    }
                    .py-header a.hover,
                    .py-header a:hover {
                        color:#e60000 ;
                    }
                    .py-header ul,
                    .py-header li
                    {
                        list-style: none;
                        margin: 0;
                        padding: 0;
                    }
                  
                    .py-header-wrap {
                        width: 1040px;
                        margin: 0 auto;
                        padding: 0 20px;
                        overflow: hidden;
                        
                    }
                  
                    .py-header-logo {
                        display: inline;
                        float: left;
                        padding: 19px 0;
                    }
                    .py-header-logo-img {
                        display: block;
                        width: 114px;
                        height: 20px;
                        background-repeat: no-repeat;
                        background-position: center center;
                      
                    }
                    
                    .py-header-link {
                        display: inline;
                        float: right;
                       
                    }
                    .py-header-link li {
                        display: inline;
                        float: left;
                        
                    }
                    .py-header-link a {
                        display: block;
                        padding: 50px 22px 10px 22px;
                        color:#000057;
                    }
                    .py-header-log {
                        display: inline;
                        float: right;
                        padding: 54px 0 0 30px;
                        text-align: right;
                        font-size: 12px;
                        color:#18146D;
                        
                    }
                    .py-header-log a{
                        color:#000057;}
            
                   
                    .py-header-link-product:hover 
                    .py-header-link-product.hover 
                    {
                        display: block;
                    }
                    .py-header-link-product:hover .py-header-link-product-a,
                    .py-header-link-product.hover .py-header-link-product-a {
                        color: #31a5e7;
                    }
                
                  </style> 

<script type="text/javascript">

</script>
</head>
<body>

       <nav>
           <div class="py-header">
               <div class="py-header-wrap">
                  <div class="py-header-logo">
                      <a href="http://www.plusyoou.com" class="py-header-logo-img"> <img src="img/plusyoou.png" width="170" height="55" alt="PLUSYOOU"></a>
                  </div>
                            
                  <div class="py-header-log">
                  <% if(session.getAttribute("GongHao")==null || session.getAttribute("GongHao").equals("") ){ %>
                     <div id="_unlogin" class="py-header-login">
                        <a href="denglu.html">登录</a> | <a href="zhuce.html">注册</a>
                     </div>
                  <% } else { %>   
                     <div id="_islogin" class="py-header-logout" >
                        <a href="login?action=exit"><img src='img/person.png' /></a> ${GongHao }
                     </div>
                  <%}; %>   
                  </div>
                            
                  <ul class="py-header-link">
                                <li>
                                    <a href="http://www.plusyoou.com" >首页</a>
                                </li>
                                <li>
                                    <a href="liaojiewomen.html" >了解我们</a>
                                </li>
                                <li>
                                    <a href="chanpinjieshao.html" >产品介绍</a>
                                </li>
                                <li>
                                    <a href="login?action=demo" target="_blank">在线体验</a>
                                </li>
                                <li>
                                    <a href="fuwuzhichi.html" >服务支持</a>
                                </li>
                                
                  </ul>
              </div>
           </div>
       
    </nav>
 
</body>
