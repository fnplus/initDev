import { Connection } from 'mongoose';
import { ToolSchema } from '../schema/tools.schema';

export const toolProviders = [
  {
    provide: 'TOOLS_MODEL',
    useFactory: (connection: Connection) => connection.model('Tools', ToolSchema),
    inject: ['DATABASE_CONNECTION'],
  },
];
