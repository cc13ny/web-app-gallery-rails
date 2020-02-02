<% if @user_experience.errors.blank?  %>
$('#new_experience_modal').modal('hide')
$('#user-experiences').show().prepend("<%= j render 'item', exp: @user_experience %>")

<% else %>
$('.modal#new_experience_modal .modal-body').html("<%= j render 'form' %>")
<% end %>