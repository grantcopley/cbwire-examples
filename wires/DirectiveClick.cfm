<cfoutput>
    <div>
        Clicks: <span class="fw-bold">#clicks#</span>
        <div class="mt-4">
            <button wire:click="increment" type="button">Click</button>
            <a wire:click.prevent="increment" href="">Click</a>
            <span wire:click="increment">Click</span>
            <input wire:click="increment" type="checkbox">
        </div>
    </div>
</cfoutput>

<cfscript>
    data = {
        "clicks": 0
    };

    function increment() {
        data.clicks += 1;
    }
</cfscript>