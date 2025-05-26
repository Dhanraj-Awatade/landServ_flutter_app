import { Request, Response } from "express";
import DocumentRequest from "../models/DocumentRequest";

export const createDocumentRequest = async (req: Request, res: Response) => {
    try {
        const { type, details } = req.body;
        const newRequest = new DocumentRequest({
            type,
            details,
            user: req.user?.id,
        });
        await newRequest.save();
        res.status(201).json(newRequest);
    } catch (err) {
        res.status(500).json({ error: "Document creation failed" });
    }
};

export const getUserDocuments = async (req: Request, res: Response) => {
    try {
        const docs = await DocumentRequest.find({ user: req.user?.id });
        res.status(200).json(docs);
    } catch (err) {
        res.status(500).json({ error: "Fetching documents failed" });
    }
};
