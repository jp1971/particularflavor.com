( function( $ ) {

    "use strict";

    $( function() {

        $( '#doc_order' ).change( function() {

            if ( $( 'select option:selected' ).hasClass( 'default' ) ) {
                return;
            }

            var value = $( 'select option:selected' ).val(),
                nonce = doc_ajax.nonce
            ;

            $.ajax({
                url: doc_ajax.url,
                dataType: 'html',
                data: ({
                    action: 'doc_order',
                    value: value,
                    nonce: nonce
                }),
                success: function( response ) {

                    $( 'ul.docs' ).html( response );

                },
                error: function( jqXHR, textStatus, errorThrown ) {

                    debug( 'Request failed: ' + textStatus + ' ' + errorThrown );

                },
                complete: function() {

                }

            });

        });

    });

}( jQuery ));