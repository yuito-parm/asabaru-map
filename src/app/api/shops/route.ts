import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

export async function GET() {
    const shops = await prisma.shop.findMany()
    return NextResponse.json(shops)
}