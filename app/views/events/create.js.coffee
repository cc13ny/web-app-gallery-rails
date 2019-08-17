$('#event_modal').modal('hide')
$('#events').prepend "<%= j render 'card_wrapper', event: @event %>"