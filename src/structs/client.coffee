{ JinxClient, EventHandler, ApplicationHandler } = require "discord-jinx";

class Client extends JinxClient 
    constructor: () ->
        super {
            intents: ["GUILDS", "GUILD_MESSAGES"]
        };

        @eventHandler = new EventHandler this, {
            directory: require.main.path + "/events/**/*.js"
        };

        @applicationHandler = new ApplicationHandler this, {
            directory: require.main.path + "/commands/**/*.js",
            global: false
        };

        @eventHandler.loadAll();
        @applicationHandler.loadAll();


module.exports = Client;