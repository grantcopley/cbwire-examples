<cfoutput>
    <div>
        <button wire:click="redirectToURI" class="btn btn-primary">Redirect To URI</button>
        <button wire:click="redirectToURL" class="btn btn-primary">Redirect To URL</button>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    function redirectToURI() {
        return redirect( "/some-url" );
    }

    function redirectToURL() {
        return redirect( "https://www.google.com" );
    }
    // @endWire
</cfscript>