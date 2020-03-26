import { Module } from '@nestjs/common';
import { MongooseModule } from '@nestjs/mongoose';
import { ToolsController } from './tools.controller';
import { ToolSchema } from './schema/tools.schema';
import { ToolsService } from './tools.service';

@Module({
  imports: [MongooseModule.forFeature([{ name: 'Tools', schema: ToolSchema }])],
  controllers: [ToolsController],
  providers: [ToolsService]
})
export class ToolsModule {}
