component extends="cbwire.models.Component" {
    
    data = {
        "hero": ""
    };

    function setAsBatman() {
        data.hero = "Batman";
    }

    function clearBatman() {
        data.hero = "Superman";
    }
}