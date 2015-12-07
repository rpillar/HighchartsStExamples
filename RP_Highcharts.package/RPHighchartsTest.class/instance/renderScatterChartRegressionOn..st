as yet unclassified
renderScatterChartRegressionOn: html

	| chart myPlotOptionsSeriesStates myTooltipFormat myRegressionSetings |
	
	myPlotOptionsSeriesStates := HighchartsPlotOptionsSeriesStates new.
	myPlotOptionsSeriesStates hover marker enabled: 'true'. 
	
	myTooltipFormat := HighchartsTooltip new.
	myTooltipFormat headerFormat: '<b>{series.name}</b><br>'; pointFormat: '{point.x} cm, {point.y} kg'.
	
	myRegressionSetings := HighchartsSeriesRegressionSettings new.
	myRegressionSetings type: 'linear'; color: 'rgba(223, 83, 83, .9)'.

	chart := html highcharts newChart.
	chart chart type: 'scatter'; zoomType: 'xy'.
	chart credits enabled: false.

	chart legend enabled: true; layout: 'vertical'; align: 'left'; verticalAlign: 'top'; x: 100; y: 70; floating: 'true'; borderWidth: 1.
	chart title text: 'Height Versus Weight - Females'.
	chart subtitle text: 'Source: Heinz  2003'.
	
	chart xAxis title text: 'Height(cm)'.
	chart xAxis startOnTick: true; endOnTick: true; showLastLabel: true.
	chart yAxis title text: 'Weight (kg)'.
	
	chart plotOptions scatter marker radius: 5.
	chart plotOptions scatter marker states hover enabled: 'true'; lineColor: 'rgb(100,100,100)'.
	chart plotOptions scatter states: myPlotOptionsSeriesStates; tooltip: myTooltipFormat.

	chart series index: 0; name: 'Female'; color: 'rgba(223, 83, 83, .5)'; data: self femaleWeightHeightSeries; regression: 'true'; regressionSettings: myRegressionSetings.

	html div script: chart	