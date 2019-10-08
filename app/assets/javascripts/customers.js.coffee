# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#customer_state_id').parent().hide()
	states = $('#customer_state_id').html()
	$('#customer_city_id').change ->
		city = $('#customer_city_id :selected').text()
		escaped_city = city.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(states).filter("optgroup[label='#{escaped_city}']").html()
		if options
			$('#customer_state_id').html(options)
			$('#customer_state_id').parent().show()
		else
			$('#customer_state_id').empty()
			$('#customer_state_id').parent().hide()

	$('#customer_district_id').parent().hide()
	districts = $('#customer_district_id').html()
	$('#customer_state_id').change ->
		state = $('#customer_state_id :selected').text()
		escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options2 = $(districts).filter("optgroup[label='#{escaped_state}']").html()
		if options2
			$('#customer_district_id').html(options2)
			$('#customer_district_id').parent().show()
		else
			$('#customer_district_id').empty()
			$('#customer_district_id').parent().hide()

	$('#customer_neighborhood_id').parent().hide()
	neighborhoods = $('#customer_neighborhood_id').html()
	$('#customer_district_id').change ->
		district = $('#customer_district_id :selected').text()
		escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options3 = $(neighborhoods).filter("optgroup[label='#{escaped_district}']").html()
		if options3
			$('#customer_neighborhood_id').html(options3)
			$('#customer_neighborhood_id').parent().show()
		else
			$('#customer_neighborhood_id').empty()
			$('#customer_neighborhood_id').parent().hide()