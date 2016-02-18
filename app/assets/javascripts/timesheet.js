function resize(event, dayDelta, minuteDelta){
  $.ajax({
    type: 'PUT',
    dataType: 'script',
    url: '/events/'+event.id+'.json',
    contentType: 'application/json',
    data: JSON.stringify({
      event: { id: event.id, finish: event.end },
      _method:'put'
    })
  });
}

function drop(event, dayDelta, minuteDelta){
  $.ajax({
    type: 'PUT',
    dataType: 'script',
    url: '/events/'+event.id+'.json',
    contentType: 'application/json',
    data: JSON.stringify({
      event: { id: event.id, start: event.start, finish: event.end },
      _method:'put'
    }),
    success:function(response) {
         console.log('response'); 
    }
  });
}

$(document).on('page:change', function() {
    // page is now ready, initialize the calendar...
    $('#calendar').fullCalendar({
      lang: 'fr',
      weekNumbers: true,
      fixedWeekCount: false,
      header: { center: 'month,basicWeek' },
      dayClick: function() {},
      events: '/events.json',
      eventColor: 'rgb(222,222,222)',
      eventTextColor: 'rgb(0,0,0)',
      editable: true,
      eventRender: function(event, element) {
        $('a.fc-event-draggable').attr('data-remote', true);
      },
      eventResize: function(event, dayDelta, minuteDelta) {
        resize(event, dayDelta, minuteDelta);
      },
      eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc){
          drop(event, dayDelta, minuteDelta);
      }
        // put your options and callbacks here
    });

});