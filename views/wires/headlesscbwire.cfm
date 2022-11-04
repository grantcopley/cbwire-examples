<cfoutput>
    <div>
        <div>
            Played: #args.played#
        </div>
        <div>
            Seconds: #args.seconds#
        </div>
        <div id="made-in-ny" wire:ignore></div>

        <script src="https://player.vimeo.com/api/player.js"></script>
        <script>
            const options = {
                id: 59777392,
                width: 640,
                loop: true
            };
        
            const player = new Vimeo.Player('made-in-ny', options);
        
            player.setVolume(0);

            player.setCurrentTime( #args.seconds# );
        
            player.on( 'play', function() {
                @this.play();
            } );

            player.on( 'timeupdate', function( data ) {
                @this.track( data.seconds );
            } );

        </script>
    </div>
</cfoutput>