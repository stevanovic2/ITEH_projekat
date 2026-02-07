/*
  Warnings:

  - You are about to drop the column `date` on the `reservation` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[userId,tableId,dateTime]` on the table `Reservation` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `dateTime` to the `Reservation` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `reservation` DROP FOREIGN KEY `Reservation_tableId_fkey`;

-- DropIndex
DROP INDEX `Reservation_tableId_date_idx` ON `reservation`;

-- AlterTable
ALTER TABLE `reservation` DROP COLUMN `date`,
    ADD COLUMN `dateTime` DATETIME(3) NOT NULL;

-- CreateIndex
CREATE INDEX `Reservation_tableId_dateTime_idx` ON `Reservation`(`tableId`, `dateTime`);

-- CreateIndex
CREATE UNIQUE INDEX `Reservation_userId_tableId_dateTime_key` ON `Reservation`(`userId`, `tableId`, `dateTime`);

-- AddForeignKey
ALTER TABLE `Reservation` ADD CONSTRAINT `Reservation_tableId_fkey` FOREIGN KEY (`tableId`) REFERENCES `Table`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
