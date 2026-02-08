import { prisma } from "@/lib/db";
import { signToken } from "@/lib/auth";
import { NextResponse } from "next/server";
import bcrypt from "bcryptjs";

export async function POST(req: Request) {
  try {
    const body = await req.json();

    if (!body.email || !body.lozinka) {
      return NextResponse.json(
        { error: "Obavezno: email, lozinka" },
        { status: 400 }
      );
    }

    const user = await prisma.user.findUnique({
      where: { email: String(body.email) },
    });

    if (!user) {
      return NextResponse.json({ error: "Pogrešan email ili lozinka" }, { status: 401 });
    }

    const ok = await bcrypt.compare(String(body.lozinka), user.lozinka);
    if (!ok) {
      return NextResponse.json({ error: "Pogrešan email ili lozinka" }, { status: 401 });
    }

    const token = signToken({ userId: user.id, role: user.uloga });

    const res = NextResponse.json(
      {
        id: user.id,
        ime: user.ime,
        email: user.email,
        uloga: user.uloga,
      },
      { status: 200 }
    );

    res.cookies.set("token", token, {
      httpOnly: true,
      sameSite: "lax",
      secure: process.env.NODE_ENV === "production",
      path: "/",
      maxAge: 60 * 60 * 24 * 7,
    });

    return res;
  } catch {
    return NextResponse.json({ error: "Server error" }, { status: 500 });
  }
}
