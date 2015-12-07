as yet unclassified
renderStackedAreaChartOn: html

	| chart mySeries1 mySeries2 mySeries3 mySeries4 mySeries5 myYAxisPlotlines myYAxisLabels myFunction |

	mySeries1  := #( 502 635 809 947 1402 3634 5268 ).
	mySeries2 := #( 106 107 111 133 221 767 1766 ).
	mySeries3 := #( 163 203 276 408 547 729 628 ).
	mySeries4 := #( 18 31 54 156 339 818 1201 ).
	mySeries5 := #( 2 2 2 6 13 30 46 ).
	
	myYAxisPlotlines := HighchartsYAxisPlotLines new.
	myYAxisPlotlines value: 0; width: 1; color: '#000000'. 
	
	myYAxisLabels := HighchartsYAxisLabels new.
	myFunction := JSFunction new.
	myFunction add: ( JSStream on: 'return this.value / 1000' ).
	myYAxisLabels formatter: myFunction.
	myYAxisLabels enabled: true.
	
	chart := html highcharts newChart.
	chart chart type: 'area'.

	chart legend enabled: true; layout: 'vertical'; align: 'right'; verticalAlign: 'middle'; borderWidth: 0.
	chart title text: 'Historic and Estimated Worldwide Population Growth by Region'.
	chart subtitle text: 'Source: Wikipedia.org'.
	chart xAxis categories: #( '1750' '1800' '1850' '1900' '1950' '1999' '2050' ); tickmarkPlacement: 'on'.
	chart yAxis title text: 'Billions'.
	chart yAxis labels: myYAxisLabels.
	chart tooltip shared: true; valueSuffix: 'Millions'.
	chart plotOptions area stacking: 'normal'; lineColor: '#666666'; lineWidth: 1.
	chart plotOptions area marker lineColor: '#666666'; lineWidth: 1.

	chart series index:0; name: 'Asia'; data: mySeries1.	
	chart series index:0; name: 'Africa'; data: mySeries2.	
	chart series index:0; name: 'Europe'; data: mySeries3.	
	chart series index:0; name: 'America'; data: mySeries4.	
	chart series index:0; name: 'Oceania'; data: mySeries5.	
		
	html div script: chart	