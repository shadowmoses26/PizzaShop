function something()
{
    var x = window.localStorage.getItem('bbb');

    x = x * 1 + 1;

    window.localStorage.setItem('bbb',555);
    alert(x);
}


function add_to_cart(id)
{
    alert('You added pizza with id: ' + id);
}