import Link from "next/link";

export default function Home() {
  return (
    <main style={{ padding: 24 }}>
      <h1>Aplikacija za rezervaciju restorana</h1>

      <p style={{ marginTop: 12 }}>
        Rezervišite sto u restoranu brzo i jednostavno, uz mogućnost
        unaprednog naručivanja hrane.
      </p>

      <nav style={{ display: "flex", gap: 16, marginTop: 24 }}>
        <Link href="/login">Login</Link>
        <Link href="/contact">Kontakt</Link>
      </nav>
    </main>
  );
}

