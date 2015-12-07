as yet unclassified
renderContentOn: html

	html div 
		class: 'container';
		with: [ 
			self renderLineChartOn: html.
		].
	html break.
	html div 
		class: 'container';
		with: [
			self renderStackedAreaChartOn: html.  
		]. 
	html break.
	html div 
		class: 'container';
		with: [
			self renderColumnChartOn: html.  
		].
	html break.
	html div 
		class: 'container';
		with: [
			self renderScatterChartOn: html.  
		].
	html break.
	html div 
		class: 'container';
		with: [
			self renderScatterChartRegressionOn: html.  
		].		