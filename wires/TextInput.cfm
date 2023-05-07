<cfoutput>
    <div>
        <input wire:model="companyName" type="text">
        Length: #len( companyName )#
    </div>
</cfoutput>

<cfscript>
    data = {
        "companyName": ""
    };
</cfscript>