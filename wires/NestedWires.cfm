<cfoutput>
    <div class="my-3">
        This wire created at: #dateTimeFormat(createdAt, "mm/dd/yyyy hh:mm:ss tt" )#
        <button wire:click="click" type="button" class="btn btn-primary">Load Nested Wire</button>
        <cfif clicked>
            #wire( "NestedWires" )#
        </cfif>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "createdAt": now(),
        "clicked": false
    };

    function click() {
        data.clicked = true;
    }
    // @endWire
</cfscript>