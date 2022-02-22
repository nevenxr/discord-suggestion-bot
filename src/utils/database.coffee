mongoose = require "mongoose";
state = mongoose.connections[0].readyState;

if state 
    return;

mongoose.connection.on "open", -> console.info "Mongodb has been connected";
mongoose.connection.on "close", -> console.info "Mongodb has been disconnected";

{ MongoURL } = process.env;

if !MongoURL
    return;
else
    mongoose.connect MongoURL, {
        keepAlive: true
    };