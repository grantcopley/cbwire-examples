<cfoutput>
    <div>
        <button wire:click="redirectToURI" class="btn btn-primary">Redirect To URI</button>
        <button wire:click="redirectToURL" class="btn btn-primary">Redirect To URL</button>
        <button wire:click="redirectToEvent" class="btn btn-primary">Redirect To Event</button>
        <button wire:click="redirectWithFlash" class="btn btn-primary">Redirect With Flash</button>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    function redirectToURI() {
        return relocate( uri="/some-url" );
    }

    function redirectToURL() {
        return relocate( uri="https://www.google.com" );
    }

    function redirectToEvent(){
        return relocate( event="examples.index" );
    }

    function redirectWithFlash() {
        relocate( event="example.index", persistStruct={
            confirm: "Redirect successful"
        } );
    }
    // @endWire
</cfscript>