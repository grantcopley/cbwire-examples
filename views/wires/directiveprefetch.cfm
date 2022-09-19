<cfoutput>
    <div>
        <button wire:click.prefetch="togglePreview" class="btn btn-primary">Show Preview</button>
    
        <cfif args.showPreview>
            I pretched this at #now()#
            <!--- Preview goes here --->
        </cfif>
    </div>
</cfoutput>