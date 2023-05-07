<cfoutput>
    <div wire:poll.2s>
        Timestamp: #now()#
        <button wire:click="runLongProcess">Run Long Process</button>
        <button wire:click="reset">Reset</button>
        <cfif arrayLen( messages() )>
            <ul>
                <cfloop array="#messages()#" index="message">
                    <li>#message#</li>
                </cfloop>
            </ul>
        </cfif>
    </div>
</cfoutput>

<cfscript>
    computed = {
        "messages": function() {
            return session.messages;
        }
    };

    function onMount() {
        if ( !structKeyExists( session, "messages" ) ) {
            session.messages = [];
        }
    }

    function runLongProcess() {
        thread action="run" {
            for ( var i = 1; i < 10; i++ ) {
                session.messages.append( "Did something at #now()#" );
                sleep( 3000 );
            }
        }
    }

    function reset() {
        session.messages = [];
    }
</cfscript>