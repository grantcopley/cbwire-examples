<cfoutput>
    <div>
        <input wire:model="companyName" type="text">
        Length: #len( companyName )#
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "companyName": ""
    };
    // @endWire
</cfscript>