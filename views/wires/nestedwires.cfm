<cfoutput>
    <div class="my-3">
        This wire created at: #dateTimeFormat(args.createdAt, "mm/dd/yyyy hh:mm:ss tt" )#
        <button wire:click="click" type="button" class="btn btn-primary">Load Nested Wire</button>
        <cfif args.clicked>
            #wire( "NestedWires" )#
        </cfif>
    </div>
</cfoutput>