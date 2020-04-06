import { Injectable, Inject } from '@nestjs/common';
import { Model } from 'mongoose';
import { ToolsDto } from './dto/tools.dto';
import { ITools } from './interfaces/tools.interface';

@Injectable()
export class ToolsService {
    constructor(@Inject('TOOLS_MODEL') private toolModel: Model<ITools>) { }

    async create(createCatDto: ToolsDto): Promise<ToolsDto> {
        const createdCat = new this.toolModel(createCatDto);
        return createdCat.save();
    }

    async findOne(id: string): Promise<ToolsDto> {
        return this.toolModel.findById(id).exec();
    }

    async findAll(): Promise<ToolsDto[]> {
        return this.toolModel.find().exec();
    }
}
