{ config } = require "dotenv";
config();

Client = require "./structs/client";
require "./utils/database";

client = new Client;

{ clientToken } = process.env;

if clientToken
    client.login clientToken;