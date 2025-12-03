<!--- HTML --->
<cfoutput>
    <div>
        <div>Counter: #counter#</div>
        <div>Is Even: #isEven()#</div>
        <button wire:click="increment">Increment</button>
    </div>
</cfoutput>

<!--- Blueprint --->
<cfscript>
    // @startWire
    // Data properties
    data = {
        "counter": 0 // default value
    };

    // Computed properties
    function isEven() computed {
        return data.counter % 2 == 0;
    }

    // Actions
    function increment() {
        data.counter += 1;
    }
    // @endWire
</cfscript>