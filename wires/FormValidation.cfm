<cfoutput>
    <div>
        <input wire:model.live="email" type="text" placeholder="Enter your email">
        <button wire:click="addEmail">Add Email</button>

        <cfif success>
            <div>Success!</div>
        </cfif>

        <cfif validation.hasErrors( "email" )>
            <cfloop array="#validation.getAllErrors( "email" )#" index="error">
                <div class="alert alert-danger mt-2">#error#</div>
            </cfloop>
        </cfif>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    constraints = {
        "email": { required: true, type: "email" }
    };

    data = {
        "email": "",
        "success": false
    };

    function addEmail() {
        validateOrFail();
        data.success = true;
    }
    // @endWire
</cfscript>