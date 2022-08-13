
$(document).ready(function () {
    $("#livesearch").keypress(function (e) { 
        console.log(e.target.id)
        $.ajax({
            type: "POST",
            url: "../livesearchInventario.php",
            data: { 
                insumo:$("#livesearch").val(),
            },
            success: function (data) {
                $("#resultados-busqueda").html(data);
            }
        });
    });

    //EVENTO PARA MOSTRAR LA BUSQUEDA EN "NUEVA SALIDA"
    $("#livesearch-salida").keypress(function (e) { 
        $.ajax({
            type: "POST",
            url: "../livesearch.php",
            data: {
                insumo:$("#livesearch-salida").val(),
            },
            success: function (data) {
                $("#resultados-busqueda-salida").html(data); 
            }
        });
    });

    /********************************************************************************************* 
    *                                                                                            *
    *                                   I N S U M O S                                            *
    *                                                                                            *
    * *******************************************************************************************/


    /* LINKS */
    $(".nav-ins-item:eq(0)").on("click", function () {
        $(location).attr("href", "inventario.php");
    }).on("mouseenter", function () {
        $(this).css({"background":"lightgreen"});
        $(".link-insumos:eq(0)").css("color","white");
        $(".nav-ins-item:eq(0) img").css({
            "filter": "invert(100%) sepia(0%) saturate(0%) hue-rotate(204deg) brightness(102%) contrast(103%)"});
            
    }).on("mouseleave", function () {
        $(this).css({"background":"none"});
        $(".link-insumos:eq(0)").css("color","var(--texto-nav-ins)");
        $(".nav-ins-item img").css({"filter":"none"});
    });

    

    $(".nav-ins-item:eq(1)").on("click", function () {
        $(location).attr("href", "entradaSalida.php");
    }).on("mouseenter", function () {
        $(this).css({"background":"lightgreen"});
        $(".link-insumos:eq(1)").css("color","white");
        $(".nav-ins-item:eq(1) img").css({
            "filter": "invert(100%) sepia(0%) saturate(0%) hue-rotate(204deg) brightness(102%) contrast(103%)"});
            
    }).on("mouseleave", function () {
        $(this).css({"background":"none"});
        $(".link-insumos:eq(1)").css("color","var(--texto-nav-ins)");
        $(".nav-ins-item img").css({"filter":"none"});
    });


    $(".nav-ins-item:eq(2)").on("click", function () {
        $(location).attr("href", "abrirLote.php");
    }).on("mouseenter", function () {
        $(this).css({"background":"lightgreen"});
        $(".link-insumos:eq(2)").css("color","white");
        $(".nav-ins-item:eq(2) img").css({
            "filter": "invert(100%) sepia(0%) saturate(0%) hue-rotate(204deg) brightness(102%) contrast(103%)"});
            
    }).on("mouseleave", function () {
        $(this).css({"background":"none"});
        $(".link-insumos:eq(2)").css("color","var(--texto-nav-ins)");
        $(".nav-ins-item img").css({"filter":"none"});
    });

    $(".nav-ins-item:eq(3)").on("click", function () {
        $(location).attr("href", "caducidades.php");
    }).on("mouseenter", function () {
        $(this).css({"background":"lightgreen"});
        $(".link-insumos:eq(3)").css("color","white");
        $(".nav-ins-item:eq(3) img").css({
            "filter": "invert(100%) sepia(0%) saturate(0%) hue-rotate(204deg) brightness(102%) contrast(103%)"});
            
    }).on("mouseleave", function () {
        $(this).css({"background":"none"});
        $(".link-insumos:eq(3)").css("color","var(--texto-nav-ins)");
        $(".nav-ins-item img").css({"filter":"none"});
    });
    

    /***********************************************************************************************
     *                                                                                             *
     *                          I N V E N T A R I O                                                *
     *                                                                                             *
    ************************************************************************************************/

    //Link a REGISTRAR NUEVO INSUMO
    $("#registrar-insumo-btn").on("click", function () {
        $(location).attr("href", "registrarInsumo.php");
    });

    //Link a EDITAR INSUMO
    $(".editar-insumo-btn").on("click", function () {
        $(location).attr("href", "editarInsumo.php");
    });

    //Mostrar y cerrar la VISTA GENERAL
    $(".vista-general-btn").on("click", function () {
        $(".modal-container, .vista-gral").addClass("mostrar");
    });

    $("#cerrar-vista-gral").on("click", function () {
        $(".modal-container, .vista-gral").removeClass("mostrar");
    });

    //ELIMINAR INSUMO
    $(".eliminar-insumo-btn").on("click", function () {
        $(".modal-container, .modal-eliminar").addClass("mostrar");
    });

    /******************************************************************************************
     *                                                                                        *
     *          E N T R A D A   -   S A L I D A                                               *
     *                                                                                        *
    *******************************************************************************************/


    //Evento para mostrar "Nueva Entrada"
    $("#entrada-btn").on("click", function () {
        $(".salida-form").removeClass("show");
        $(".entrada-form").addClass("show");
    });
   
    //Evento para mostrar "Nueva Salida"
   $("#salida-btn").on("click", function () {
        $(".entrada-form").removeClass("show");
        $(".salida-form").addClass("show");
   });

   /*********************************************************************************************
    *                                                                                           *                                                                                          
    *                                   U S U A R I O S                                         *
    *                                                                                           *
    *********************************************************************************************/

   //Evento para mostrar "Eliminar Usuario"
   $(".eliminar-usuario-btn").on("click", function () {
    $(".modal-container, .modal-eliminar").addClass("mostrar");
    
   });

   //Ocultar el modal para eliminar
   $("#cancelar-eliminar-usuario-btn").on("click", function () {
        $(".modal-container, .modal-eliminar").removeClass("mostrar");
   });
    

   //Redireccion a AGREGAR USUARIO
   $("#agregar-usuario-btn").on("click", function () {
        $(location).attr("href", "agregarUsuario.php");
   });

   $(".editar-usuario-btn").on("click", function () {
        $(location).attr("href", "editarUsuario.php");
   });


   /***********************************************************************************************
    *                                                                                             *
    *                           R E P O R T E S                                                   *
    *                                                                                             *
    ***********************************************************************************************/
    $(".nav-rep-item:eq(0)").on("click", function () {
        console.log("Click")
        $(location).attr("href", "reporteMensual.php");
    }).on("mouseenter", function () {
        $(this).css({"background":"lightgreen"});
        $(".link-reportes:eq(0)").css("color","white");
        $(".nav-rep-item:eq(0) img").css({
            "filter": "invert(100%) sepia(0%) saturate(0%) hue-rotate(204deg) brightness(102%) contrast(103%)"});
            
    }).on("mouseleave", function () {
        $(this).css({"background":"none"});
        $(".link-reportes:eq(0)").css("color","var(--texto-nav-ins)");
        $(".nav-rep-item:eq(0) img").css({"filter":"none"});
    });


});