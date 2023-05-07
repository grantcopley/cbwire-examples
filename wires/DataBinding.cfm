<cfoutput>
    <div>
        <input type="text" wire:model="message"> Length: #len( message )#
        <div>#message#</div>
    </div>
</cfoutput>

<cfscript>
    data = {
        "message" : "Data binding!"
    };
</cfscript>
