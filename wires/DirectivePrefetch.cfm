<cfoutput>
    <div>
        <button wire:click.prefetch="togglePreview" class="btn btn-primary">Show Preview</button>
    
        <cfif showPreview>
            I pretched this at #now()#
            <!--- Preview goes here --->
        </cfif>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "showPreview": false
    };

    function togglePreview(){
        data.showPreview = true;
    }
    // @endWire
</cfscript>