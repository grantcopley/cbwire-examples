<cfoutput>
    <div>
        <input type="text" wire:model="uri">

        <cfif isObject( args.parsedURI )>
            <table width="500">
                <tr>
                    <td>Host</td>
                    <td>#args.parsedURI.getHost()#</td>
                </tr>
                <tr>
                    <td>Port</td>
                    <td>#args.parsedURI.getPort()#</td>
                </tr>
                <tr>
                    <td>Path</td>
                    <td>#args.parsedURI.getPath()#</td>
                </tr>
                </tr>
                <tr>
                    <td>Query</td>
                    <td>#args.parsedURI.getQuery()#</td>
                </tr>
                <tr>
                    <td>Scheme</td>
                    <td>#args.parsedURI.getScheme()#</td>
                </tr>
            </table>
        </cfif>
    </div>
</cfoutput>