import { Router } from "express";
import {
    createDocumentRequest,
    getUserDocuments,
} from "../controllers/documentController";
import authMiddleware from "../middlewares/authMiddleware";

const router = Router();

router.use(authMiddleware);
router.post("/", createDocumentRequest);
router.get("/", getUserDocuments);

export default router;

// import express from "express";
// import { verifyToken } from "../middlewares/authMiddleware";

// const router = express.Router();

// router.use(verifyToken);

// // Submit a document request
// router.post("/", async (req, res) => {
//     const userId = (req as any).user.id;
//     const { type, details } = req.body;

//     const request = await prisma.documentRequest.create({
//         data: { userId, type, details },
//     });

//     res.json(request);
// });

// // Get all requests for the logged-in user
// router.get("/", async (req, res) => {
//     const userId = (req as any).user.id;
//     const requests = await prisma.documentRequest.findMany({
//         where: { userId },
//         orderBy: { createdAt: "desc" },
//     });

//     res.json(requests);
// });

// export default router;
