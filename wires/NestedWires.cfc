component extends="cbwire.models.Component" {

    data = {
        "createdAt": now(),
        "clicked": false
    };

    function click() {
        data.clicked = true;
    }
}