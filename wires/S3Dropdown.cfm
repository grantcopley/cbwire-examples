<cfoutput>
    <div wire:init="loadBackups">
        <h1>S3 Dropdown</h1>
        <cfif arrayLen( backups )>
            <select wire:model="selectedBackup">
                <option value="">-- Select a backup --</option>
                <cfloop array="#backups#" index="filename">
                    <option value="#filename#">#filename#</option>
                </cfloop>
            </select>
            <div class="mt-4">
                <button wire:click="restoreBackup" class="btn btn-primary">Restore Backup</button>
                <span wire:loading wire:target="restoreBackup">Processing <i class="fa-solid fa-spinner fa-spin-pulse"></i></span>
                <cfif success>
                    <span>Success!</span>
                </cfif>
            </div>
        <cfelse>
            Loading backup files from S3...<i class="fa-solid fa-spinner fa-spin-pulse"></i></span>
        </cfif>
    </div>
</cfoutput>

<cfscript>
    data = {
        "selectedBackup": "",
        "backups": [],
        "success": false
    }

    function loadBackups() {
        sleep( 1500 ); // Sleep to simulate pull list of file names from S3

        // Once you have the list of file names, add them to the 'backups' data property
        data.backups = [
            "my-backup-2022-08-01.sql",
            "my-backup-2022-08-05.sql",
            "my-backup-2022-08-10.sql",
            "my-backup-2022-08-15.sql",
            "my-backup-2022-08-20.sql"
        ];
    }

    function restoreBackup() {
        sleep( 5000 ); // Sleep to simulate restoring the database backup
        data.success = true;
    }
</cfscript>