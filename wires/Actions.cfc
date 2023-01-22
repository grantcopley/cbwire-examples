component extends="cbwire.models.Component" {

    // Data properties
    data = {
        "conference": "Into The Box",
        "updated": false
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

    function onHydrate() {
        data.updated = true;
    }
}