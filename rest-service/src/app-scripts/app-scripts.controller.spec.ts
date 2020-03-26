import { Test, TestingModule } from '@nestjs/testing';
import { AppScriptsController } from './app-scripts.controller';

describe('AppScripts Controller', () => {
  let controller: AppScriptsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [AppScriptsController],
    }).compile();

    controller = module.get<AppScriptsController>(AppScriptsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
