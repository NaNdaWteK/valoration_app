Class('Page', {

    initialize: function(components) {
        components.forEach(function(componentObject) {
            new componentObject();
        });
        this.publish();
        this.subscribe();
    },

    publish: function() {
        console.error(this.toString() + ' not publishing!, implement publish method');
    },

    subscribe: function() {
        console.error(this.toString() + ' not subscribed!, implement subscribe method');
    }

});