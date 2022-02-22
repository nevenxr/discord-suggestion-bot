{ Event } = require "discord-jinx";
Schema = require "../models/guild";

class ready extends Event 
    constructor: ->
        super {
            name: "ready",
            once: true
        };

    run: () ->
        console.log this.client.user?.username, "is", "ready", "to", "rock!";
        
        this.client.guilds.cache.forEach (x) ->
            data = await Schema.findOne { _id: x.id };

            if !data
                data = new Schema { _id: x.id };
                await data.save();
            else 
                return;  

module.exports = ready;