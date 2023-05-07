<cfoutput>
    <div wire:init="loadMessages">
        <div wire:loading>
            Pulling down messages...
        </div>
        <cfloop array="#messages#" index="messageObj">
            <div>#messageObj.message#</div>
        </cfloop>
    </div>
</cfoutput>

<cfscript>
    data = {
        "messages": []
    };

    function loadMessages() {
        // Simulate delay
        sleep( 2000 );

        data.messages = [
            {
                message: "message1"
            },
            {
                message: "message2"
            }
        ];
    }
</cfscript>
