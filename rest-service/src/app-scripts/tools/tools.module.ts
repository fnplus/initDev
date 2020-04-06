import { Module } from '@nestjs/common';
import { MongooseModule } from '@nestjs/mongoose';
import { ToolsController } from './tools.controller';
import { ToolSchema } from './schema/tools.schema';
import { ToolsService } from './tools.service';
import { toolProviders } from './providers/tools.provider';
import { DatabaseModule } from 'src/database/database.module';

@Module({
  imports: [DatabaseModule],
  controllers: [ToolsController],
  providers: [
    ToolsService,
    ...toolProviders
  ]
})
export class ToolsModule {}
