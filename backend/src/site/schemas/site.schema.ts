import { Schema } from 'mongoose';

export const SiteSchema = new Schema({
  site_id: { type: String, required: true },
  site_desc: { type: String, required: true },
  site_address: { type: String, required: true },
  site_tel: { type: String, required: true },
  location: {
    type: {
      type: String,
      enum: ['Point'],
      required: true
    },
    coordinates: {
      type: [Number],
      required: true
    }
  },
  site_close_time: { type: String, required: true },
  site_open_time: { type: String, required: true }
});

SiteSchema.index({ location: '2dsphere' });