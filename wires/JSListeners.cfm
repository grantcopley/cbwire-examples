<cfoutput>
    <div>
        <form wire:submit.prevent="sendMessage">
            <input wire:model="message" type="text">
            <button type="submit" class="btn btn-primary">Send Message</button>
        </form>
        <script>
            document.addEventListener("livewire:load", function() {
                cbwire.on( 'success', function( payload ) {
                    alert( payload );
                } );
            } );
        </script>
    </div>
</cfoutput>

<cfscript>
    // Data properties
    data = {
        "message": "Is it lunch time yet?"
    };

    // Action
    function sendMessage() {
        // Emit event from CBWIRE
        emit( "success", [ "Message sent." ] );
    }
</cfscript>