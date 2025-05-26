import User from "../models/User";
import jwt from "jsonwebtoken";
import bcrypt from "bcrypt";
import { Request, Response } from "express";

export const register = async (req: Request, res: Response) => {
    try {
        const { username, password } = req.body;
        const user = new User({ username, password });
        await user.save();

        const token = jwt.sign({ id: user._id }, process.env.JWT_SECRET!, {
            expiresIn: "7d",
        });
        res.status(201).json({ token });
    } catch (err) {
        res.status(400).json({ error: `Registration failed, ${err}` });
    }
};

export const login = async (req: Request, res: Response) => {
    try {
        const { username, password } = req.body;

        // 1. Input validation (basic)
        if (!username || !password) {
            res.status(400).json({
                error: "Username and password are required",
            });
            return;
        }

        // 2. Check if user exists
        const user = await User.findOne({ username });
        if (!user) {
            res.status(404).json({ error: "User not found" });
            return;
        }

        // 3. Compare passwords
        const isMatch = await bcrypt.compare(password, user.password);
        if (!isMatch) {
            res.status(401).json({ error: "Invalid credentials" });
            return;
        }

        // 4. Sign JWT
        const token = jwt.sign(
            { id: user._id, username: user.username },
            process.env.JWT_SECRET!,
            { expiresIn: "7d" }
        );

        // 5. Send success response
        res.status(200).json({ token });
    } catch (err) {
        console.error("Login error:", err);
        res.status(500).json({
            error: "Login failed. Please try again later.",
        });
    }
};

// export const login = async (req: Request, res: Response) => {
//     try {
//         const { username, password } = req.body;
//         const user = await User.findOne({ username });
//         if (!user) return res.status(404).json({ error: "User not found" });
//         const isMatch = await bcrypt.compare(password, user.password);
//         if (!isMatch) throw new Error("Invalid credentials");
//         const token = jwt.sign({ id: user._id }, process.env.JWT_SECRET!, {
//             expiresIn: "7d",
//         });
//         res.status(200).json({ token });
//     } catch (err) {
//         res.status(400).json({ error: "Login failed" });
//     }
// };
