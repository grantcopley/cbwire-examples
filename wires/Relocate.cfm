<cfoutput>
    <div>
        <button wire:click="goElsewhere">Redirect me</button>
    </div>
</cfoutput>

<cfscript>
    function goElsewhere(){
        return relocate( event="examples.index" );
    }
</cfscript>