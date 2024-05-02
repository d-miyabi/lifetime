function add_form_element() {
  // Select the form
  var form = document.getElementsByTagName('form')[0];

  // Create new input element
  var newInput = document.createElement('input');
  newInput.setAttribute('type', 'text');
  newInput.setAttribute('name', 'newInput');

  // Create a line break
  var lineBreak = document.createElement('br');

  // Append the new input field and line break to the form
  form.insertBefore(newInput, form.childNodes[0]);
  form.insertBefore(lineBreak, form.childNodes[1]);
}
