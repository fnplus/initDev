import { Controller, Get, Req, Param, Post, Body, UseInterceptors, UploadedFile } from '@nestjs/common';
import { Request } from 'express';
import { ToolsDto } from './dto/tools.dto';
import { ApiTags, ApiOperation, ApiConsumes, ApiBody, ApiResponse } from '@nestjs/swagger';
import { FileInterceptor } from '@nestjs/platform-express'
import { ToolsService } from './tools.service';


@ApiTags('tools')
@Controller('tools')
export class ToolsController {

    constructor(private readonly _toolService: ToolsService) {}

    @Get()
    @ApiOperation({ summary: 'Get all scripts' })
    findAll(@Req() request: Request): Promise<ToolsDto[]> {
        return this._toolService.findAll();
    }

    @Get(':id')
    @ApiOperation({ summary: 'Get script by id' })
    findOne(@Param('id') id): Promise<ToolsDto> {
        return this._toolService.findOne(id);
    }

    @Post()
    @UseInterceptors(FileInterceptor('file'))
    @ApiConsumes('multipart/form-data')
    create(@Body() toolsDto: ToolsDto, @UploadedFile() file): Promise<ToolsDto> {
        console.log('data is --> ', toolsDto);
        console.log('file is --> ', file);
        return this._toolService.create(toolsDto);
    }
}
