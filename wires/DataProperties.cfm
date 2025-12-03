<cfoutput>
    <div>
        <h1>Welcome To #conference#</h1>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    // Data properties
    data = {
        "conference": "Into The Box " & year( now() )
    };
    // @endWire
</cfscript>