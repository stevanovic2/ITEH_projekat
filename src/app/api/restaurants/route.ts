import { prisma } from "@/lib/db";
import { NextResponse } from "next/server";

// GET /api/restaurants
export async function GET() {
  const restaurants = await prisma.restaurant.findMany({
    orderBy: { id: "asc" },
  });

  return NextResponse.json(restaurants);
}

// POST /api/restaurants
export async function POST(req: Request) {
  try {
    const body = await req.json();

    // minimalna validacija (da ne upisuje prazno)
    if (!body.naziv || !body.adresa || !body.radnoVreme || !body.administratorId) {
      return NextResponse.json(
        { error: "Obavezno: naziv, adresa, radnoVreme, administratorId" },
        { status: 400 }
      );
    }

    const restaurant = await prisma.restaurant.create({
      data: {
        naziv: body.naziv,
        adresa: body.adresa,
        opis: body.opis ?? null,
        radnoVreme: body.radnoVreme,
        administratorId: Number(body.administratorId),
      },
    });

    return NextResponse.json(restaurant, { status: 201 });
  } catch {
    return NextResponse.json({ error: "Server error" }, { status: 500 });
  }
}
