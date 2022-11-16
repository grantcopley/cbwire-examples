component extends="cbwire.models.Component" {

    computed = {
        "messages": function() {
            return session.messages;
        }
    };

    function onMount() {
        if ( !structKeyExists( session, "messages" ) ) {
            session.messages = [];
        }
    }

    function runLongProcess() {
        thread action="run" {
            for ( var i = 1; i < 10; i++ ) {
                session.messages.append( "Did something at #now()#" );
                sleep( 3000 );
            }
        }
    }

    function reset() {
        session.messages = [];
    }
}