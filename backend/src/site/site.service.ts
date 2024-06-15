import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { Site } from './interfaces/site.interface';

@Injectable()
export class SiteService {
    constructor(@InjectModel('Site') private readonly siteModel: Model<Site>) {}

  async findAll(): Promise<Site[]> {
    return this.siteModel.find().select('-_id').exec();
  }
}
