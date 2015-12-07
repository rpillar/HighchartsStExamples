as yet unclassified
renderLineChartOn: html

	| chart mySeries1 mySeries2 mySeries3 mySeries4 myYAxisPlotlines |

	mySeries1  := #( 7.0 6.9 9.5 14.5 18.2 21.5 25.2 26.5 23.3 18.3 13.9 9.6 ).
	mySeries2 := #( -0.2 0.8 5.7 11.3 17.0 22.0 24.8 24.1 20.1 14.1 8.6 2.5 ).
	mySeries3 := #( -0.9 0.6 3.5 8.4 13.5 17.0 18.6 17.9 14.3 9.0 3.9 1.0 ).
	mySeries4 := #( 3.9 4.2 5.7 8.5 11.9 15.2 17.0 16.6 14.2 10.3 6.6 4.8 ).
	
	myYAxisPlotlines := HighchartsYAxisPlotLines new.
	myYAxisPlotlines value: 0; width: 1; color: '#000000'. 
	
	chart := html highcharts newChart.

	chart legend enabled: true; layout: 'vertical'; align: 'right'; verticalAlign: 'middle'; borderWidth: 0.
	chart title text: 'Monthly Average Temperature'.
	chart subtitle text: 'Source: WorldClimate.com'.
	chart xAxis categories: #('Jan' 'Feb' 'Mar' 'Apr' 'May' 'Jun' 'July' 'Aug' 'Sept' 'Oct' 'Nov' 'Dec').
	chart yAxis title text: 'Temperature ( Centigrade )'.
	chart yAxis plotLines: #( myYAxisPlotlines ).
	chart tooltip valueSuffix: ' °C'.

	chart series index:0; name: 'Tokyo'; data: mySeries1.	
	chart series index:0; name: 'New York'; data: mySeries2.	
	chart series index:0; name: 'Berlin'; data: mySeries3.	
	chart series index:0; name: 'London'; data: mySeries4.	
		
	html div script: chart	