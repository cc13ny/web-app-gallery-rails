$('#event_modal').remove()
showModal "<%= j modal title: 'New Event', body: render('events/form'), id: 'event_modal', size: :lg %>"