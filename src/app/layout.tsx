import type { Metadata } from "next";
import { Montserrat, Quicksand} from "next/font/google"
import "./globals.css";

const montserrat = Montserrat({
  subsets: ["latin"],
  variable: "--font-montserrat",
  weight: ["400", "500", "600", "700"],
});
const quicksand = Quicksand({
  subsets: ["latin"],
  variable: "--font-quicksand",
  weight: ["400", "500", "600", "700"],
});

export const metadata: Metadata = {
  title: "Portfólio",
  description: "Yullie Cruz - Desenvolvedora",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="pt-BR">
      <body
        className={`${quicksand.variable} ${montserrat.variable} antialiased`}
      >
        {children}
      </body>
    </html>
  );
}
