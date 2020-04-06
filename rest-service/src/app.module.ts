import { Module } from '@nestjs/common';
import { MongooseModule } from '@nestjs/mongoose';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AppScriptsModule } from './app-scripts/app-scripts.module';

@Module({
  imports: [AppScriptsModule,],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
