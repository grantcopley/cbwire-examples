component extends="cbwire.models.Component" {

    data = {
        "firstname": ""
    };

    function onMount( parameters, event, rc, prc ) {
        data.firstname = event.getValue( "firstname", "Grant" );
    }

    function onRender( args ) {
        return "
            <div>
                <h1>#args.firstname#</h1>
            </div>
        ";
    }
}