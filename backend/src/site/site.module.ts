import { Module } from '@nestjs/common';
import { MongooseModule } from '@nestjs/mongoose';
import { SiteSchema } from './schemas/site.schema';
import { SiteService } from './site.service';
import { SiteController } from './site.controller';

@Module({
  imports: [
    MongooseModule.forFeature([{ name: 'Site', schema: SiteSchema }])
  ],
  providers: [SiteService],
  controllers: [SiteController]
})
export class SiteModule {}
