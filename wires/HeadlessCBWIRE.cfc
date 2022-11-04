component extends="cbwire.models.Component" {

    data = {
        "played": false,
        "seconds": 0
    };

    function onMount( data ) {
        if ( structKeyExists( session, "seconds" ) ) {
            data.seconds = session.seconds;
        }
    }

    function play() {
        data.played = true;
    }

    function track( seconds ) {
        session.seconds = seconds;
        data.seconds = val( seconds );
    }
}