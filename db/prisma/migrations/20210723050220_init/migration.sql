/*
  Warnings:

  - Added the required column `otp` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "User" ADD COLUMN     "otp" INTEGER NOT NULL,
ALTER COLUMN "image" DROP NOT NULL,
ALTER COLUMN "links" DROP NOT NULL;
