<cfoutput>
    <div>
        <div>
            <h1>#conference#</h1>
        </div>
        <div class="mt-4">
            <a href="##" wire:click.prevent="changeConference" type="button" class="btn btn-primary me-2">Change Conference</button>
            <a href="##" wire:click.prevent="addYear( '#year( now() )#' )" type="button" class="btn btn-primary me-2">Add Year</button>
            <a href="##" wire:click.prevent="resetConference" class="btn btn-secondary">Reset</a>
        </div>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    // Data properties
    data = {
        "conference": "Into The Box"
    };

    // Actions
    function changeConference() {
        data.conference = "CF Summit";
    }

    function addYear( currentYear ) {
        data.conference &= " " & currentYear;
        data.updated = false;
    }

    function resetConference() {
        reset( "conference" );
    }
    // @endWire
</cfscript>