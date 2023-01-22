<cfoutput>
    <div wire:poll.2s>
        Timestamp: #now()#
        <button wire:click="runLongProcess">Run Long Process</button>
        <button wire:click="reset">Reset</button>
        <cfif arrayLen( args.computed.messages() )>
            <ul>
                <cfloop array="#args.computed.messages()#" index="message">
                    <li>#message#</li>
                </cfloop>
            </ul>
        </cfif>
    </div>
</cfoutput>