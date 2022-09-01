component extends="cbwire.models.Component" {

    data = {
        "uri": "https://www.google.com"
    };

    computed = {
        "parsedURI": function() {
            try {
                return createObject( "java", "java.net.URI" ).init( data.uri );
            } catch ( any e ) {
                return "";
            }
        }
    }
}