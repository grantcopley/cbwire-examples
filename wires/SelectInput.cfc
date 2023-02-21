component extends="cbwire.models.Component" {
    
    data = {
        "hero": ""
    };

    function setAsBatman() {
        data.hero = "Batman";
    }

    function setAsSuperman() {
        data.hero = "Superman";
    }

    function clear() {
        reset();
    }
}