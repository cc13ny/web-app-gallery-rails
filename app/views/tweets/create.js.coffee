$('#tweet_text').val('')
$('#new_tweet').closest('tr').after"<%= j render 'item', tweet: @tweet %>"