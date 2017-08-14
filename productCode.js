// The createProductCodeForm function is used to create a new form that accepts a product code from a user.
//
// The current version of the form contains the hint: 'The product code can be found on the label'. This hint is currently always visible to the user.
//
// Improve the form so that the hint is only rendered when the input element is the focused element.
//

function createProductCodeForm(parent) {
  var form = $("<form/>");
  var input = $("<input>")
                .attr('name', 'productCode')
                .attr('type', 'text');

  var label = $("<label>")
                .attr('name', 'hint')
                .text('The product code can be found on the label.')
                .hide();

  form.append($("<label>").text('Product Code:'));
  form.append(input);
  form.append(label);

  input.focus(function(){
    label.show()
  })

  input.blur(function(){
    label.hide()
  })

  form.append('<br>');
  form.append($("<input>").attr('type', 'submit'));
  parent.append(form);
}

createProductCodeForm($('#formContainer'))
