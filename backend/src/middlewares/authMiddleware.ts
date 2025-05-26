import { Request, Response, NextFunction, RequestHandler } from "express";
import jwt from "jsonwebtoken";
interface JwtPayload {
    id: string;
}

declare module "express-serve-static-core" {
    interface Request {
        user?: JwtPayload;
    }
}

const authMiddleware: RequestHandler = (
    req: Request,
    res: Response,
    next: NextFunction
) => {
    const token = req.headers.authorization?.split(" ")[1];
    if (!token) {
        res.status(401).json({ error: "No token provided" });
        return;
    }

    try {
        const decoded = jwt.verify(
            token,
            process.env.JWT_SECRET!
        ) as JwtPayload;
        req.user = decoded;
        next();
    } catch {
        res.status(401).json({ error: "Invalid token" });
    }
};
export default authMiddleware;
