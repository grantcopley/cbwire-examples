<cfoutput>
    <div x-data="{ open: false }">
        <button @click="open = !open">Toggle</button>
    
        <span x-show="open" x-transition.duration.500ms>
            <div>Here's some content</div>
            <cfif finished>
                <div>Done</div>
            <cfelse>
                <div><button wire:click="save" class="btn btn-primary">Save Content</button></div>
            </cfif>
        </span>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "finished": false
    };

    function save() {
        data.finished = true;
    }
    // @endWire
</cfscript>