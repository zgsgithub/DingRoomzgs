<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <title>无线点餐后台</title>
    

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/theme.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/font-awesome/css/font-awesome.css">
    

	<script src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
   
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap-switch.css" />
    <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap-switch.js"></script>


    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    
  </head>
  <body class=""> 
  <!--<![endif]-->
    
	   <%@ include file="/WEB-INF/views/pages.jsp" %>

    <!-- 内容 开始 -->
 <div class="content">
        
        <div class="header">
            
            <h1 class="page-title">餐桌</h1>
        </div>
        
                <ul class="breadcrumb">
            <li><a href="${pageContext.request.contextPath }/tableAction_findByPage.action">餐桌</a> <span class="divider">/</span></li>
            <li class="active">信息修改</li>
        </ul>
        <div class="container-fluid">
        <c:if test="${updtbl=='yes'}">
        <div class="row-fluid">

    <div class="alert alert-info">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong>小提示：</strong> 保存成功！！
    </div>
</div>
        </c:if>
           
           <!-- begin -->
           <div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-content">
					<div class="page-header" ></div>
						<form class="form-horizontal" action="${pageContext.request.contextPath }/tableUpdate" method="post">
							<fieldset>
						<div class="control-group">
								<label class="control-label">桌  号</label>
								<div class="controls">
								 <input name="id" class="input-xlarge"  type="hidden" value="${table.id}">
								  <span  class="input-xlarge uneditable-input ">${table.id}</span>
								</div>
							  </div>
							
							  <div class="control-group">
								<label class="control-label" for="orderid">订 单 号</label>
								<div class="controls">
								  <input name="ord_id" class="input-xlarge focused" id="Orderid" type="text" value="${table.ord_id}">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="num">人  数</label>
								<div class="controls">
								  <input name="num" class="input-xlarge focused" id="num" type="text" value="${table.num}">
								</div>
							  </div>
							  <div class="control-group">
								<label class="control-label" for="desc">描  述</label>
								<div class="controls">
								  <input name="description" class="input-xlarge focused" id="desc" type="text" value="${table.description}">
								</div>
							  </div>
							  <div class="control-group info">
								<label class="control-label" for="tflag">餐桌状态</label>
								<div class="controls">
								  <input name="flag" class="input-xlarge focused" id="tflag" type="text" value="${table.flag}">
								  <span class="help-inline">"1"表示空闲 , "0"表示满座</span>
								</div>
							  </div>						
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">保  存</button>
								<a href="${pageContext.request.contextPath }/tableFindByPage?pageNow=${pNow }">
								<input type="button" class="btn" value="返  回">
							  </a>
							  </div>
							</fieldset>
					</div>
						  </form>
					
					</div>
                  <footer>
                        <hr>
                        <p class="pull-right">&copy; 2013.8 <a href="#" target="_blank"> shun_fzll</a></p>
                    </footer>
				</div>
			
			</div>
           
           
           <!-- end -->
            
        </div>
 
                    
                    

    <script type="text/javascript">
    var 	xmlhttp;
        $('.make-switch').on('switch-change', function (e, data){
	//创建xmlHttp  
	createXMLHttpRequest();

	var url="/SSMPropertys/TableServlet?tid="+$(this).attr('id');
	
	xmlhttp.onreadystatechange=state_Change;  
	xmlhttp.open("POST",url,true);  
	xmlhttp.send(null);  
	});


function createXMLHttpRequest() {
	if (window.XMLHttpRequest)
	  {// code for IE7, Firefox, Opera, etc.
	  xmlhttp=new XMLHttpRequest();
	  }
	else if (window.ActiveXObject)
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
}

//处理返回结果
function state_Change()  
{  
 if(xmlhttp.readyState==4)  
 {  
  if(xmlhttp.status==200)  
  {  
	  
  }  
 }  
}  

    </script>
  </body>
</html>
