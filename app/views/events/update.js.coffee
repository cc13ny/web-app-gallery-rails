$('#event_modal').modal('hide')
$('#event-<%= @event.id %>').replaceWith "<%= j render 'card', event: @event %>"