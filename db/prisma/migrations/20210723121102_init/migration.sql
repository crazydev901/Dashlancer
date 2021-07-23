/*
  Warnings:

  - You are about to drop the column `firstUser` on the `Message` table. All the data in the column will be lost.
  - You are about to drop the column `secondUser` on the `Message` table. All the data in the column will be lost.
  - Added the required column `firstUserId` to the `Message` table without a default value. This is not possible if the table is not empty.
  - Added the required column `secondUserId` to the `Message` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Message" DROP COLUMN "firstUser",
DROP COLUMN "secondUser",
ADD COLUMN     "firstUserId" INTEGER NOT NULL,
ADD COLUMN     "secondUserId" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "Payment" (
    "id" SERIAL NOT NULL,
    "paymentType" TEXT NOT NULL,
    "paymentId" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Message" ADD FOREIGN KEY ("firstUserId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Message" ADD FOREIGN KEY ("secondUserId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
