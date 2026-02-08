import { NextResponse } from "next/server";
import { getAuth, Role } from "@/lib/auth";

export async function requireAuth() {
  const auth = await getAuth();

  if (!auth) {
    return {
      ok: false as const,
      response: NextResponse.json({ error: "Niste ulogovani" }, { status: 401 }),
    };
  }

  return { ok: true as const, auth };
}

export async function requireRole(roles: Role[]) {
  const result = await requireAuth();
  if (!result.ok) return result;

  if (!roles.includes(result.auth.role)) {
    return {
      ok: false as const,
      response: NextResponse.json({ error: "Nemate dozvolu" }, { status: 403 }),
    };
  }

  return result;
}

