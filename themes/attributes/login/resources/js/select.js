// Responsible for autosetting select value

window.addEventListener('load', function () {
  var selects = document.querySelectorAll('select')
  for (var i = 0; i < selects.length; i++) {
    var select = selects[i]
    select.value = select.getAttribute('value')
  }
})
