import { Module } from '@nestjs/common';
import { AppScriptsController } from './app-scripts.controller';
import { OsModule } from './os/os.module';
import { ToolsModule } from './tools/tools.module';
import { RolesModule } from './roles/roles.module';
import { DatabaseModule } from '../database/database.module';

@Module({
  controllers: [AppScriptsController],
  imports: [
    OsModule, 
    ToolsModule, 
    RolesModule, 
    DatabaseModule],
  providers: []
})
export class AppScriptsModule {}
