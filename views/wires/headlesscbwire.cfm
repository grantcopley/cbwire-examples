<cfoutput>
    <div>
        <div>
            Played: #args.played#
        </div>
        <div>
            Seconds: #args.seconds#
        </div>
        <div id="made-in-ny" wire:ignore></div>
    </div>

    <cfsavecontent variable="prc.viewJavascript">
        <script src="https://player.vimeo.com/api/player.js"></script>
        <script>
            document.addEventListener("DOMContentLoaded", () => {
                const options = {
                    id: 59777392,
                    width: 640,
                    loop: true
                };
            
                const player = new Vimeo.Player('made-in-ny', options);
                
                player.setVolume(0);
                
                player.setCurrentTime( #args.seconds# );
                
                const myComponent = cbwire.find('#args._id#');
            
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
    </cfsavecontent>
</cfoutput>