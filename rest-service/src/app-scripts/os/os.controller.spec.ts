import { Test, TestingModule } from '@nestjs/testing';
import { OsController } from './os.controller';

describe('Os Controller', () => {
  let controller: OsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [OsController],
    }).compile();

    controller = module.get<OsController>(OsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
