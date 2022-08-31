<cfoutput>
    <div x-data="{ open: false }">
        <button @click="open = !open">Toggle</button>
    
        <span x-show="open">
            <div>Here's some content</div>
            <cfif args.finished>
                <div>Done</div>
            <cfelse>
                <div><button wire:click="save" class="btn btn-primary">Save Content</button></div>
            </cfif>
        </span>
    </div>
</cfoutput>