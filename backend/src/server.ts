import mongoose from "mongoose";
import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import authRoutes from "./routes/authRoutes";
import documentRoutes from "./routes/documentRoutes";

const PORT = process.env.PORT || 3000;
dotenv.config();
const app = express();
app.use(cors());
app.use(express.json());

app.use("/api/auth", authRoutes);
app.use("/api/documents", documentRoutes);

mongoose
  .connect(process.env.MONGO_URL!)
  .then(() => {
    console.log("MongoDB connected");
    app.listen(PORT, () => console.log(`Server on port ${PORT}`));
  })
  .catch((err) => console.error("Failed to start server: ", err));
