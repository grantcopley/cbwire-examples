<cfoutput>
    <div>
        <h1>Counter</h1>
        <p>Access this by passing a start. /examples/PassingParameters?start=100</p>
        <p>#counter#</p>
        <button wire:click="increment">Increment</button>
    </div>
</cfoutput>

<cfscript>
    // @startWire
    data = {
        "counter": "0"
    };

    function onMount( parameters, event, rc, prc ) {
        data.counter = val( event.getValue( "start", 0 ) );
    }

    function increment() {
        data.counter += 1;
    }
    // @endWire
</cfscript>