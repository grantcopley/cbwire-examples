<cfoutput>
    <div>
        <form wire:submit.prevent="clickButton">
            <button type="submit" class="btn btn-primary">Click Me</button>
            <span class="ms-4">#message#</span>
        </form>
    </div>
</cfoutput>

<cfscript>
    data = {
        "message": ""
    };

    function clickButton() {
        data.message = "Form submit button was clicked!";
    }
</cfscript>
