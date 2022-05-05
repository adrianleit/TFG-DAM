// Al sumar o restar una cantidad se mete en la funcion los parametros talla y el id del producto 
// y se actualiza directamente en el carrito
// Devolver el precio total con la cantidad hacer en el con js


function sumar() {
    $('#cantidad').val(Number($('#cantidad').val()) + 1).change();
}

function menos() {
    if (document.getElementById('cantidad').value > 1) {
        $('#cantidad').val(Number($('#cantidad').val()) - 1).change();
    }
}

function mas_carrito(id, talla) {
    $('#cantidad_'+id+'_'+talla).val(Number($('#cantidad_'+id+'_'+talla).val()) + 1).change();
    var cantidad = $('#cantidad_'+id+'_'+talla).val();
    actualizar_carrito(id, talla, cantidad, "actualizar");
    
}

function menos_carrito(id, talla) {
    if (document.getElementById('cantidad_'+id+'_'+talla).value > 0) {
        $('#cantidad_'+id+'_'+talla).val(Number($('#cantidad_'+id+'_'+talla).val()) - 1).change();
        var cantidad = $('#cantidad_'+id+'_'+talla).val();
        actualizar_carrito(id, talla, cantidad, "actualizar");
    }
}

function borrar_producto(id, talla) {
    actualizar_carrito(id, talla, 0, "borrar");
}

function actualizar_carrito(id, talla, cantidad, operacion) {
    var actualizar_carrito = $.ajax({
        url: "actualizar_carrito.php",
        type: "POST",
        async: true,
        data: {
            id: id,
            talla: talla,
            cantidad: cantidad,
            operacion: operacion
        },
        success: function (data) {
            $("#carrito").html(actualizar_carrito.responseText);
        }
    })
}
//Me viene bien para cuando se da a la X se vaya el producto
// document.getElementById("update_cart").addEventListener("click", actualizar_carrito);