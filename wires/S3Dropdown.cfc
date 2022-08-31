component extends="cbwire.models.Component" {

    // property name="s3sdk" inject="AmazonS3@s3sdk";

    data = {
        "selectedBackup": "",
        "backups": [],
        "success": false,
        "processing": false
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
        data.processing = true;
        sleep( 5000 ); // Sleep to simulate restoring the database backup
        data.success = true;
        data.processing = false;
    }

}