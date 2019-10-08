# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
	$('#provider_state_id').parent().hide()
	states = $('#provider_state_id').html()
	$('#provider_city_id').change ->
		city = $('#provider_city_id :selected').text()
		escaped_city = city.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options = $(states).filter("optgroup[label='#{escaped_city}']").html()
		if options
			$('#provider_state_id').html(options)
			$('#provider_state_id').parent().show()
		else
			$('#provider_state_id').empty()
			$('#provider_state_id').parent().hide()

	$('#provider_district_id').parent().hide()
	districts = $('#provider_district_id').html()
	$('#provider_state_id').change ->
		state = $('#provider_state_id :selected').text()
		escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options2 = $(districts).filter("optgroup[label='#{escaped_state}']").html()
		if options2
			$('#provider_district_id').html(options2)
			$('#provider_district_id').parent().show()
		else
			$('#provider_district_id').empty()
			$('#provider_district_id').parent().hide()

	$('#provider_neighborhood_id').parent().hide()
	neighborhoods = $('#provider_neighborhood_id').html()
	$('#provider_district_id').change ->
		district = $('#provider_district_id :selected').text()
		escaped_district = district.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
		options3 = $(neighborhoods).filter("optgroup[label='#{escaped_district}']").html()
		if options3
			$('#provider_neighborhood_id').html(options3)
			$('#provider_neighborhood_id').parent().show()
		else
			$('#provider_neighborhood_id').empty()
			$('#provider_neighborhood_id').parent().hide()