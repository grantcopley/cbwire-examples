<cfoutput>
    <div>
        <label>
            Toggle
            <input wire:model="isChecked" type="checkbox" value="true">
        </label>

        <cfif isChecked>
            <div class="mt-4 alert alert-primary">Checkbox is checked!</div>
        </cfif>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "isChecked": false
    };
    // @endWire
</cfscript>