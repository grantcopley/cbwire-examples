<cfoutput>
    <div wire:poll.2s>
        Timestamp: #now()#
        <button wire:click="runLongProcess">Run Long Process</button>

        <cfif arrayLen( args.messages )>
            <ul>
                <cfloop array="#args.messages#" index="message">
                    <li>#message#</li>
                </cfloop>
            </ul>
        </cfif>
    </div>
</cfoutput>