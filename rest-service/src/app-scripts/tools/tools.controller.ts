import { Controller, Get, Req, Param, Post, Body } from '@nestjs/common';
import { Request } from 'express';
import { ToolsDto } from './dto/tools.dto';
import { ApiTags } from '@nestjs/swagger';
import { ToolsService } from './tools.service';


@ApiTags('tools')
@Controller('tools')
export class ToolsController {

    constructor(private readonly _toolService: ToolsService) {}

    @Get()
    findAll(@Req() request: Request): string {
        return 'This action returns all cats';
    }

    @Get(':id')
    findOne(@Param('id') id): string {
        return 'This action returns all cats';
    }
    @Post()
    create(@Body() toolsDto: ToolsDto) {
        this._toolService.create(toolsDto);
    }
}
