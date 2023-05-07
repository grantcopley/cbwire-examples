<cfoutput>
    <div>
        <form wire:submit.prevent="save">
            <input wire:model="myFile" type="file">
            <div>
                <button type="submit" class="btn btn-primary mt-4">Save</button>
            </div>
        </form>
        <div>
            <div wire:loading wire:target="myFile">Uploading...</div>
        </div>
        <div>
            <cfif isObject( myFile )>
                <cfif myFile.isImage()>
                    <img src="#myFile.getPreviewURL()#" style="width: 300px; height: auto;">
                <cfelse>
                    <div>The file you uploaded is not an image. Preview not available.</div>
                </cfif>
            </cfif>
        </div>
    </div>
</cfoutput>

<cfscript>
    data = {
        "myFile": ""
    };

    function save() {
        // s3.put( data.myFile.get() );
        if ( isObject( data.myFile ) ) {
            data.myFile.destroy();
        }
    }
</cfscript>