<cfoutput>
    <div>
        <select wire:model="hero">
            <option value=""></option>
            <option value="Batman">Batman</option>
            <option value="Superman">Superman</option>
        </select>

        <button wire:click="setAsBatman">Set as Batman</button>
        <button wire:click="setAsSuperman">Set as Superman</button>
        <button wire:click="clear">Clear</button>

        <cfif hero eq "Batman">
            <div class="mt-4 alert alert-primary">Bruce Wayne!</div>
        <cfelseif hero eq "Superman">
            <div class="mt-4 alert alert-primary">Clark Kent!</div>
        <cfelse>
            <div class="mt-4 alert alert-danger">Select a hero please.</div>
        </cfif>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "hero": ""
    };

    function setAsBatman() {
        data.hero = "Batman";
    }

    function setAsSuperman() {
        data.hero = "Superman";
    }

    function clear() {
        reset();
    }
    // @endWire
}</cfscript>