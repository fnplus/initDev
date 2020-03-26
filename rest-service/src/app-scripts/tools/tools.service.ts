import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { ToolsDto } from './dto/tools.dto';

@Injectable()
export class ToolsService {
    constructor(@InjectModel('Tools') private toolModel: Model<ToolsDto>) { }

    async create(createCatDto: ToolsDto): Promise<ToolsDto> {
        const createdCat = new this.toolModel(createCatDto);
        return createdCat.save();
    }

    async findAll(): Promise<ToolsDto[]> {
        return this.toolModel.find().exec();
    }
}
