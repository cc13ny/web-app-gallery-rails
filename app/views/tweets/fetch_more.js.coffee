<% if @tweets.present? %>
$('#new_tweet').closest('tr').after("<%= j render partial: 'item', collection: @tweets, as: :tweet %>")
$('#fetch-more').replaceWith("<%= j render 'fetch_more', min_id: @tweets.first.id %>")
<% end %>