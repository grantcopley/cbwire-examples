<cfoutput>
    <div>
        #now()#
        <div>Greeting: #greeting#</div>
        <div>IsTrue: #isTrue#</div>
        <div class="mt-5">
            <button wire:click="$refresh" class="btn btn-primary">Refresh without calling action</button>
            <button wire:click="$set( 'greeting', 'hello' )" class="btn btn-primary">Use $set</button>
            <button wire:click="$toggle( 'isTrue' )" class="btn btn-primary">Use $toggle</button>
        </div>
    </div>
</cfoutput>

<cfscript>
    data = {
        "greeting": "",
        "isTrue": true
    };
<cfscript>