{ Schema, model, models } = require "mongoose";

Guild = new Schema {
    _id: String,
    channel: {
        type: String,
        default: null
    },
    message: {
        approve: {
            type: String,
            default: null
        },
        deny: {
            type: String,
            default: null
        }
    },
    emoji: {
        approve: {
            type: String,
            default: "❌"
        },
        deny: {
            type: String,
            default: "✅"
        }
    },
    submit: {
        enabled: {
            type: Boolean,
            default: true
        }
        cooldown: {
            type: Number
            default: 1000 * 60 * 5
        }
    }
}, {
    versionKey: false
};

module.exports = models.guilds || model("guilds", Guild);