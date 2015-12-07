as yet unclassified
renderColumnChartOn: html

	| chart mySeries1 mySeries2 mySeries3 |

	mySeries1  := #( 5 3 4 7 2 ).
	mySeries2 := #( 2 -2 -3 2 1 ).
	mySeries3 := #( 3 4 4 -2 5 ).
	
	chart := html highcharts newChart.
	chart chart type: 'column'.
	chart credits enabled: false.

	chart title text: 'Column chart with negative values'.	
	chart xAxis categories: #('Apples' 'Oranges' 'Pears' 'Grapes' 'Bananas').

	chart series index:0; name: 'John'; data: mySeries1.	
	chart series index:0; name: 'Jane'; data: mySeries2.	
	chart series index:0; name: 'Joe'; data: mySeries3.	

	html div script: chart	