<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="<%=basePath%>jquery-3.2.1/jquery-3.2.1.min.js"></script>
	<!-- 引入 ECharts 文件 -->
    <script src="<%=basePath%>echarts/echarts.js"></script>	
    <script src="<%=basePath%>echarts/esl.js"></script>	
  </head>
  <body>
  	<center>
  		<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    	<div id="main" style="width: 100%;height:600px;"></div>
    </center>	
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: 'ECharts 入门示例'
            },
            tooltip: {},
            legend: {
            	bottom:5,
            	data:[
                      {
                	     name:'我',
                         icon :'square',
                	     //icon:'image://images/zcfx_01.png',
                         textStyle:{fontWeight:'bold'},
                       },
                       {
                    	  name:'上证',
                          icon : 'circle',  //你想要的图例样式  
                    	  //icon:'image://images/xz_03.png',
                          textStyle:{fontWeight:'bold', }
	                	
	                    },
	                    {
                    	  name:'深证',
                          icon : 'circle', 
                          //icon:'image://images/xz_02.png',
                          textStyle:{fontWeight:'bold',}
		                	
		                 }
                  ]
            },
            xAxis: {
                data: ["2011-03-01","2011-03-02","2011-03-03","2011-03-04","2011-03-05","2011-03-06"],
              //刻度标签
            	axisLabel:{
            		interval:1
            	},
            },
            yAxis: {},
            series: [{
                name: '我',
                symbolSize:10,
                type: 'line',
                data: [5, 20, 48, 58, 10, 19]
            },{
                name: '上证',
                type: 'line',
                data: [2, 30, 36, 10, 22, 20]
            },{
                name: '深证',
                type: 'line',
                data: [8, 20, 28, 19, 33, 55]
            },
            ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
      //自动缩放
       /*  window.onresize = function () {
        	document.getElementById('main').style.width = (document.documentElement.clientWidth || document.body.clientWidth)+'px';
            myChart.resize();
         };
         */
         window.onresize = myChart.resize;
        
        
    </script>
  		
  		
  </body>
</html>
