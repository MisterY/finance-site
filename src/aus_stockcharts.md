
Australian stock market charts are available below. The first set of charts displays the daily market charts for the two main Australian indices - the All Ordinaries (AORD) and ASX S&amp;P 200 (AXJO). The page refreshes every 10 minutes automatically.

<div style="background:silver">
<script type="text/javascript">
function updateASXCharts(){
	// document.getElementById("asx1").src= "https://www.valexander.com/images/header_animated_loading.gif";
	document.getElementById("asx1").src= "http://www.asx.com.au/asx/WidgetChartServlet?asxCode=XJO&width=210&height=109";
	document.getElementById("asx2").src= "http://www.asx.com.au/asx/WidgetChartServlet?asxCode=XAO&width=210&height=109";
}
</script>

<p>Today&#39;s data (provided by ASX and Yahoo!):</p>

<center>
	<img id="asx1" src="http://www.asx.com.au/asx/widget/chart.do?asxCode=XJO&type=INDEX" alt="ASX 200 Graph" />
	<img id="asx2" src="http://www.asx.com.au/asx/widget/chart.do?asxCode=XAO&type=INDEX" alt="ASX AORD Graph" />
	<br />
	<img alt="S&P 200" src="http://ichart.finance.yahoo.com/t?s=%5EAXJO" />
	<img alt="All Ordinaries" src="http://ichart.finance.yahoo.com/t?s=%5EAORD" />
	</center>
<!--	<p>Click here to <a href="#" onclick="updateASXCharts();">Refresh charts</a></p> -->
</div>

<p>Australian ASX S&amp;P 200 annual chart. (AXJO)</p>
<center>
	<a href="http://finance.yahoo.com/echarts?s=%5EAXJO#symbol=%5EAXJO;range=1y" target="_blank">
		<img class="image" alt="AXJO" src="http://chart.finance.yahoo.com/z?s=%5eAXJO&t=1y&q=l&l=on&z=m&p=m50,m200&a=v" />
	</a>
</center>

<p>Australian All Ordinaries Index, annual chart. (AORD)</p>
<center>
	<a href="http://finance.yahoo.com/echarts?s=%5EAORD#symbol=%5EAORD;range=1y" target="_blank">
		<img class="image" alt="AORD" src="http://chart.finance.yahoo.com/z?s=%5eAORD&t=1y&q=l&l=on&z=m&p=m50,m200&a=v" />
	</a>
</center>
