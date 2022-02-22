{ Event } = require "discord-jinx";

class ready extends Event 
    constructor: ->
        super {
            name: "ready",
            once: true
        };

    run: () ->
        console.log this.client.user?.username, "is", "ready", "to", "rock!";

module.exports = ready;