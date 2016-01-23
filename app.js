function fetchAttempts(theTag) {
  console.log("fetchAttempts called")
  var request = new XMLHttpRequest()
  request.open('GET', 'attempts.json', true)
  request.onload = function() {
    if(request.status == 200) {
        var data = JSON.parse(request.responseText)
        theTag.trigger('data_loaded', data)
    }
  }
  setTimeout(function(){request.send()}, 5000)
}
