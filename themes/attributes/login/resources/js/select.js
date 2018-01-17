// Responsible for autosetting select value

window.addEventListener('load', function () {
  var selects = document.querySelectorAll('select')
  for (var i = 0; i < selects.length; i++) {
    var select = selects[i]
    select.value = select.getAttribute('value')
  }
  // XXX: Hack to prevent users from mistakenly having @ in their username from google
  var suffix = "first-broker-login";
  if (window.location.pathname.substr(-suffix.length) == suffix) {
    document.getElementById('username').value = document.getElementById('username').value.split('@')[0]
  }
})
