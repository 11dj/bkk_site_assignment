import { Document } from 'mongoose';

export interface Site extends Document {
  readonly site_id: string;
  readonly site_desc: string;
  readonly site_address: string;
  readonly site_tel: string;
  readonly location: {
    type: string;
    coordinates: number[];
  };
  readonly site_close_time: string;
  readonly site_open_time: string;
}