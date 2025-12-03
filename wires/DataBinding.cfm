<cfoutput>
    <div>
        <input type="text" wire:model.live="message"> Length: #len( message )#
        <div>#message#</div>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "message" : "Data binding!"
    };
    // @endWire
</cfscript>
