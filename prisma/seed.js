const { PrismaClient } = require('@prisma/client')
const prisma = new PrismaClient()

async function main() {
  // ユーザー
    await prisma.user.create({
    data: {
        provider: "x",
        providerUserId: "1001",
        name: "あさ子",
        avatarUrl: "https://randomuser.me/api/portraits/women/65.jpg",
    },
    })

  // 店舗
    await prisma.shop.create({
    data: {
        name: "珈琲の森",
        address: "名古屋市栄1-1-1",
        openMorningFrom: new Date('2000-01-01T07:00:00Z'),
        openMorningTo: new Date('2000-01-01T11:00:00Z'),
        openFrom: new Date('2000-01-01T07:00:00Z'),
        openTo: new Date('2000-01-01T19:00:00Z'),
        wifi: true,
        parking: true,
    },
    })
}

main()
    .catch(e => {
    console.error(e)
    process.exit(1)
    })
    .finally(async () => {
    await prisma.$disconnect()
})