import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { IsString, IsOptional } from 'class-validator';

export class ToolsDto {
  @IsString()
  @ApiProperty()
  readonly id: string;

  @IsString()
  @ApiProperty()
  readonly name: string;

  @IsString()
  @ApiProperty()
  readonly version: string;

  @IsString()
  @ApiProperty()
  readonly os: string;

  @IsString()
  @ApiPropertyOptional()
  readonly path: string;
}
