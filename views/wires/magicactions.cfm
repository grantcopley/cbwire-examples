<cfoutput>
    <div>
        #now()#
        <div>Greeting: #args.greeting#</div>
        <div>IsTrue: #args.isTrue#</div>
        <div class="mt-5">
            <button wire:click="$refresh" class="btn btn-primary">Refresh without calling action</button>
            <button wire:click="$set( 'greeting', 'hello' )" class="btn btn-primary">Use $set</button>
            <button wire:click="$toggle( 'isTrue' )" class="btn btn-primary">Use $toggle</button>
        </div>
    </div>
</cfoutput>