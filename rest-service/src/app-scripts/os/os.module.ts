import { Module } from '@nestjs/common';
import { OsController } from './os.controller';
import { OsService } from './os.service';

@Module({
  controllers: [OsController],
  providers: [OsService]
})
export class OsModule {}
