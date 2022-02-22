{ Application } = require "discord-jinx";

class ping extends Application 
    constructor: ->
        super {
            name: "ping",
            description: "Latency of the bot"
        };

    interact: (i) ->
        client = this.client.ws.ping;
        response = Date.now() - i.createdTimestamp;

        return i.reply {
            embeds: [
                {
                    title: "Latency",
                    color: 3092790,
                    description: "💻 **WebSocket:** #{client}ms\n⏱️ **Response:** #{response}ms"
                }
            ]
        }
        .catch -> {};

module.exports = ping;