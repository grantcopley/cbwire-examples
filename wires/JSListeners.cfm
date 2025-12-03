<cfoutput>
    <div>
        <form wire:submit.prevent="sendMessage">
            <input wire:model.live="message" type="text">
            <button type="submit" class="btn btn-primary">Send Message</button>
        </form>
    </div>
</cfoutput>

<cbwire:script>
    <script>
      document.addEventListener("livewire:initialized", function() {
        Livewire.on( 'success', function( payload ) {
            alert( payload );
        } );
    } );  
    </script>
</cbwire:script>

<cfscript>
    // @startWire
    // Data properties
    data = {
        "message": "Is it lunch time yet?"
    };

    // Action
    function sendMessage() {
        // Emit event from CBWIRE
        dispatch( "success", [ "Message sent." ] );
    }
    // @endWire
</cfscript>