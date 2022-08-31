<cfoutput>
    <div wire:init="loadBackups">
        <h1>S3 Dropdown</h1>
        <cfif arrayLen( args.backups )>
            <select wire:model="selectedBackup">
                <option value="">-- Select a backup --</option>
                <cfloop array="#args.backups#" index="filename">
                    <option value="#filename#">#filename#</option>
                </cfloop>
            </select>
            <div class="mt-4">
                <button wire:click="restoreBackup" class="btn btn-primary">Restore Backup</button>
                <span wire:loading wire:target="restoreBackup">Processing <i class="fa-solid fa-spinner fa-spin-pulse"></i></span>
                <cfif args.success>
                    <span>Success!</span>
                </cfif>
            </div>
        <cfelse>
            Loading backup files from S3...<i class="fa-solid fa-spinner fa-spin-pulse"></i></span>
        </cfif>
    </div>
</cfoutput>