{ MessageButton, MessageActionRow } = require "discord.js";
{ Application } = require "discord-jinx";

class invite extends Application 
    constructor: ->
        super {
            name: "invite",
            description: "Gives you the bot invite link"
        };
    
    interact: (i) ->
        inv = this.client.invite
            .addPermissions [
                "VIEW_CHANNELS",
                "SEND_MESSAGES",
                "MANAGE_MESSAGES",
                "ATTACH_FILES"
            ];
        btn = new MessageActionRow()
            .addComponents (new MessageButton()
                .setStyle "LINK"
                .setURL inv.create()
                .setLabel "Click Here");

        return i.reply {
            embeds: [
                {
                    title: "Invite " + this.client.user?.username,
                    color: 3092790
                }
            ],
            components: [btn]
        };

module.exports = invite;