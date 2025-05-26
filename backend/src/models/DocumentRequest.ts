import mongoose from 'mongoose';

const docRequestSchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  type: { type: String, required: true },
  details: { type: String },
  status: { type: String, default: 'pending' },
}, { timestamps: true });

export default mongoose.model('DocumentRequest', docRequestSchema);
