<cfoutput>
    <div>
        <div>
            Played: #played#
        </div>
        <div>
            Seconds: #seconds#
        </div>
        <div id="made-in-ny" wire:ignore></div>

        <script>
            document.addEventListener("livewire:load", function() {
                const options = {
                    id: 59777392,
                    width: 640,
                    loop: true
                };
            
                const player = new Vimeo.Player('made-in-ny', options);
                
                player.setVolume(0);
                
                player.setCurrentTime( #seconds# );
                
                const myComponent = cbwire.find('#_id#');
            
                player.on( 'play', function() {
                    myComponent.play();
                } );

                player.on( 'timeupdate', function( data ) {
                    myComponent.track( data.seconds );
                } );

                myComponent.on( "someEvent", function() {
                    alert('event fired');
                } );

                myComponent.emit( "someEvent" );
            } );
        </script>
    </div>
</cfoutput>

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
        emit( "someEvent" );
        data.played = true;
    }

    function track( seconds ) {
        session.seconds = seconds;
        data.seconds = val( seconds );
    }
    // @endWire
</cfscript>