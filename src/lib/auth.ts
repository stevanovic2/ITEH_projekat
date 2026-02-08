import jwt from "jsonwebtoken";
import { cookies } from "next/headers";

export type Role = "GUEST" | "MANAGER" | "ADMIN";

export type AuthPayload = {
  userId: number;
  role: Role;
};

const COOKIE_NAME = "token";

export function signToken(payload: AuthPayload) {
  const secret = process.env.JWT_SECRET;
  if (!secret) throw new Error("JWT_SECRET nije definisan");

  return jwt.sign(payload, secret, { expiresIn: "7d" });
}

export function verifyToken(token: string): AuthPayload | null {
  try {
    const secret = process.env.JWT_SECRET;
    if (!secret) throw new Error("JWT_SECRET nije definisan");

    return jwt.verify(token, secret) as AuthPayload;
  } catch {
    return null;
  }
}

export async function getAuth(): Promise<AuthPayload | null> {
  const cookieStore = await cookies();   // ✅ await
  const token = cookieStore.get(COOKIE_NAME)?.value;

  if (!token) return null;
  return verifyToken(token);
}


