import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { MongooseModule } from '@nestjs/mongoose';
import { AppService } from './app.service';
import { SiteModule } from './site/site.module';

@Module({
  imports: [MongooseModule.forRoot(process.env.DATABASE_URI, {
    dbName: process.env.DATABASE_NAME,
    auth: {
      username: process.env.DATABASE_USER,
      password: process.env.DATABASE_PASS,
    },
  }), SiteModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}

