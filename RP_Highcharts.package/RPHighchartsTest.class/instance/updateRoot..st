as yet unclassified
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	
	"anHtmlRoot stylesheet
		url: 'http://code.highcharts.com/highcharts.js'."	
	anHtmlRoot javascript
		url: 'http://code.highcharts.com/modules/exporting.js'.
	anHtmlRoot javascript
		url: 'http://rawgithub.com/phpepe/highcharts-regression/master/highcharts-regression.js'.			
		

