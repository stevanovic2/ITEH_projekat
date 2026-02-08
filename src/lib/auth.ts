import jwt from "jsonwebtoken";

export type AuthPayload = {
  userId: number;
  role: "GUEST" | "MANAGER" | "ADMIN";
};

const COOKIE_NAME = "token";

export function signToken(payload: AuthPayload) {
  const secret = process.env.JWT_SECRET;
  if (!secret) throw new Error("JWT_SECRET nije definisan u .env");

  return jwt.sign(payload, secret, { expiresIn: "7d" });
}

export function getCookieName() {
  return COOKIE_NAME;
}
