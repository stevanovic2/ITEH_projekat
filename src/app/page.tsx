import Link from "next/link";

export default function Home() {
  return (
    <main style={{ padding: 24 }}>
      <h1>Početna</h1>

      <nav style={{ display: "flex", gap: 12, marginTop: 12 }}>
        <Link href="/">Home</Link>
        <Link href="/login">Login</Link>
        <Link href="/contact">Kontakt</Link>
      </nav>

      <p style={{ marginTop: 16 }}>
        Dobrodošli na početnu stranicu.
      </p>
    </main>
  );
}
