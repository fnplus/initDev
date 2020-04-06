import { Document } from 'mongoose';

export interface ITools extends Document {
    id: string;
    name: string;
    verion: string;
    os: string;
    path: string;
}
