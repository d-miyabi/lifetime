function add_form_element() {
  const formContent = document.querySelector('.friend-main .friend-content');

  // Create new input elements
  const newInput1 = document.createElement('input');
  newInput1.setAttribute('type', 'text');
  newInput1.setAttribute('placeholder', '友人・知人を入力しましょう');

  const newInput2 = document.createElement('input');
  newInput2.setAttribute('type', 'text');
  newInput2.setAttribute('placeholder', '連絡方法を入力しましょう');

  // Append the new input fields to the form 
  formContent.appendChild(newInput1);
  formContent.appendChild(newInput2);
}

document.addEventListener('DOMContentLoaded', function() {
  document.querySelector(".add-btn").addEventListener("click", add_form_element);
});

