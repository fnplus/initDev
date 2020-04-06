import * as mongoose from 'mongoose';

export const ToolSchema = new mongoose.Schema({
    id: String,
    name: String,
    version: Number,
    os: String,
    path: String
});
