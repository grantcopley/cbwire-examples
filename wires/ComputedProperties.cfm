<cfoutput>
    <div>
        <h1>Welcome To #conference()#</h1>
        <h2>Speakers</h2>
        <ul>
            <cfloop query="#speakers()#">
                <li>#firstname# #lastname#</li>
            </cfloop>
        </ul>

        <button wire:click="clearSpeakers" class="btn btn-primary">Clear Speakers</button>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    // Data properties
    data = {
        "clear": false
    };

    // Computed properties
    function conference() computed {
        return "Into The Box " & year( now() );
    }

    function speakers() computed {
        if ( data.clear ) {
            return queryNew( "firstname,lastname", "varchar,varchar", [] );
        }

        return queryNew( 
            "firstname,lastname",
            "varchar,varchar",
            [
                {
                    "firstname": "Abram",
                    "lastname": "Adams"
                }, 
                {
                    "firstname": "Brad",
                    "lastname": "Wood"
                }, 
                {
                    "firstname": "Brian",
                    "lastname": "Rinaldi"
                } 
            ]
        );
    }

    function clearSpeakers() {
        data.clear = true;
    }
    // @endWire
</cfscript>