component extends="cbwire.models.Component" {

    data = {
        "finished": false
    };

    function save() {
        data.finished = true;
    }
}