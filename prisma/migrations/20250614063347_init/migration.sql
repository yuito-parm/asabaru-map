-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "provider" TEXT NOT NULL,
    "providerUserId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "avatarUrl" TEXT,
    "registeredAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Shop" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "openMorningFrom" TIMESTAMP(3) NOT NULL,
    "openMorningTo" TIMESTAMP(3) NOT NULL,
    "openFrom" TIMESTAMP(3) NOT NULL,
    "openTo" TIMESTAMP(3) NOT NULL,
    "wifi" BOOLEAN NOT NULL,
    "parking" BOOLEAN NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Shop_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_providerUserId_key" ON "User"("providerUserId");
