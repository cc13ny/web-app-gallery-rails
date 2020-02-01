$('#timeline > tbody').append("<%= j render partial: 'item', collection: @tweets, as: :tweet %>")

<% if @next_max_id.present? %>
$('#load-more').replaceWith("<%= j render 'load_more', next_max_id: @next_max_id %>")
<% else %>
$('#load-more').remove()
<% end %>