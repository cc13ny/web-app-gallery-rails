$('#user_profile_modal').remove()
showModal "<%= j modal title: 'Edit Info', body: render('form'), id: 'user_profile_modal' %>"