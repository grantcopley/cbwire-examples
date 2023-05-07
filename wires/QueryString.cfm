<cfoutput>
    <div>
        <input wire:model="search" type="search" placeholder="Search posts by title...">
    </div>
</cfoutput>

<cfscript>
    data = {
        "search" : ""
    };

    queryString = [ "search" ];

    function onMount( event ){
        data.search = event.getValue( "search", "" );
    }
</cfscript>
