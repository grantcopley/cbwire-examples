component extends="cbwire.models.Component" {

    data = {
        "showPreview": false
    };

    function togglePreview(){
        data.showPreview = true;
    }
}