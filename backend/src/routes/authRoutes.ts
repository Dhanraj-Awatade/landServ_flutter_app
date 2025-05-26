import { Router } from "express";
import { register, login } from "../controllers/authController";

const router = Router();

router.post("/register", register);
router.post("/login", login);

// router.post("/register", async (req, res) => {
//     try {
//         const token = await register(req.body.username, req.body.password);
//         res.json({ token });
//     } catch (e) {
//         res.status(400).json({ message: e.message });
//     }
// });

export default router;
