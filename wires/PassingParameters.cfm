<cfoutput>
    <div>
        <h1>#firstname#</h1>
    </div>
</cfoutput>

<cfscript>
    data = {
        "firstname": ""
    };

    function onMount( parameters, event, rc, prc ) {
        data.firstname = event.getValue( "firstname", "Grant" );
    }
</cfscript>