import { Controller,Get } from '@nestjs/common';
import {SiteService} from './site.service';
import { Site } from './interfaces/site.interface';

@Controller('site')
export class SiteController {

    constructor(private readonly siteService: SiteService) {}

  @Get()
  async findAll(): Promise<Site[]> {
    return this.siteService.findAll();
  }
}
