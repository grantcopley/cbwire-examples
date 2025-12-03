<cfoutput>
    <div>
        <div>
            Played: #played#
        </div>
        <div>
            Seconds: #seconds#
        </div>
        <div id="made-in-ny" wire:ignore></div>
    </div>
</cfoutput>

<cbwire:script>
    <script>
        document.addEventListener("livewire:initialized", function() {
            const options = {
                id: 59777392,
                width: 640,
                loop: true
            };
        
            const player = new Vimeo.Player('made-in-ny', options);
            
            player.setVolume(0);
            
            player.setCurrentTime( #seconds# );
            
            const myComponent = Livewire.find('#_id#');
        
            player.on( 'play', function() {
                myComponent.play();
            } );

            player.on( 'timeupdate', function( data ) {
                myComponent.track( data.seconds );
            } );

            Livewire.on( "someEvent", function() {
                alert('event fired');
            } );

            myComponent.dispatch( "someEvent" );
        } );
    </script>
</cbwire:script>

<cfscript>
    // @startWire
    data = {
        "played": false,
        "seconds": 0
    };

    function onMount( data ) {
        if ( structKeyExists( session, "seconds" ) ) {
            data.seconds = session.seconds;
        }
    }

    function play() {
        dispatch( "someEvent" );
        data.played = true;
    }

    function track( seconds ) {
        session.seconds = seconds;
        data.seconds = val( seconds );
    }
    // @endWire
</cfscript>