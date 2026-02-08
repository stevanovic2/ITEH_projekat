/*
  Warnings:

  - The primary key for the `menuitem` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `description` on the `menuitem` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `menuitem` table. All the data in the column will be lost.
  - You are about to drop the column `price` on the `menuitem` table. All the data in the column will be lost.
  - You are about to drop the column `restaurantId` on the `menuitem` table. All the data in the column will be lost.
  - You are about to drop the column `type` on the `menuitem` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `menuitem` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `order` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `note` on the `order` table. All the data in the column will be lost.
  - You are about to drop the column `totalPrice` on the `order` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `order` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `reservationId` on the `order` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `orderitem` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `quantity` on the `orderitem` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `orderitem` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `orderId` on the `orderitem` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `menuItemId` on the `orderitem` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `reservation` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `createdAt` on the `reservation` table. All the data in the column will be lost.
  - You are about to drop the column `partySize` on the `reservation` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `reservation` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `reservation` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `status` on the `reservation` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(0))` to `VarChar(191)`.
  - You are about to alter the column `userId` on the `reservation` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `tableId` on the `reservation` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `restaurant` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `address` on the `restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `managerId` on the `restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `workingHours` on the `restaurant` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `restaurant` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `table` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `capacity` on the `table` table. All the data in the column will be lost.
  - You are about to drop the column `number` on the `table` table. All the data in the column will be lost.
  - You are about to drop the column `restaurantId` on the `table` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `table` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `user` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `createdAt` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `passwordHash` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `role` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `user` table. All the data in the column will be lost.
  - You are about to alter the column `id` on the `user` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - A unique constraint covering the columns `[restoranId,brojStola]` on the table `Table` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `cena` to the `MenuItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `naziv` to the `MenuItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `opis` to the `MenuItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `restoranId` to the `MenuItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tip` to the `MenuItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ukupnaCena` to the `Order` table without a default value. This is not possible if the table is not empty.
  - Added the required column `kolicina` to the `OrderItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `brojOsoba` to the `Reservation` table without a default value. This is not possible if the table is not empty.
  - Added the required column `administratorId` to the `Restaurant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `adresa` to the `Restaurant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `naziv` to the `Restaurant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `radnoVreme` to the `Restaurant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `brojStola` to the `Table` table without a default value. This is not possible if the table is not empty.
  - Added the required column `kapacitet` to the `Table` table without a default value. This is not possible if the table is not empty.
  - Added the required column `restoranId` to the `Table` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ime` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lozinka` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `uloga` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `menuitem` DROP FOREIGN KEY `MenuItem_restaurantId_fkey`;

-- DropForeignKey
ALTER TABLE `order` DROP FOREIGN KEY `Order_reservationId_fkey`;

-- DropForeignKey
ALTER TABLE `orderitem` DROP FOREIGN KEY `OrderItem_menuItemId_fkey`;

-- DropForeignKey
ALTER TABLE `orderitem` DROP FOREIGN KEY `OrderItem_orderId_fkey`;

-- DropForeignKey
ALTER TABLE `reservation` DROP FOREIGN KEY `Reservation_tableId_fkey`;

-- DropForeignKey
ALTER TABLE `reservation` DROP FOREIGN KEY `Reservation_userId_fkey`;

-- DropForeignKey
ALTER TABLE `restaurant` DROP FOREIGN KEY `Restaurant_managerId_fkey`;

-- DropForeignKey
ALTER TABLE `table` DROP FOREIGN KEY `Table_restaurantId_fkey`;

-- DropIndex
DROP INDEX `MenuItem_restaurantId_fkey` ON `menuitem`;

-- DropIndex
DROP INDEX `OrderItem_menuItemId_fkey` ON `orderitem`;

-- DropIndex
DROP INDEX `Reservation_tableId_dateTime_idx` ON `reservation`;

-- DropIndex
DROP INDEX `Restaurant_managerId_fkey` ON `restaurant`;

-- DropIndex
DROP INDEX `Table_restaurantId_number_key` ON `table`;

-- AlterTable
ALTER TABLE `menuitem` DROP PRIMARY KEY,
    DROP COLUMN `description`,
    DROP COLUMN `name`,
    DROP COLUMN `price`,
    DROP COLUMN `restaurantId`,
    DROP COLUMN `type`,
    ADD COLUMN `cena` DOUBLE NOT NULL,
    ADD COLUMN `naziv` VARCHAR(191) NOT NULL,
    ADD COLUMN `opis` VARCHAR(191) NOT NULL,
    ADD COLUMN `restoranId` INTEGER NOT NULL,
    ADD COLUMN `tip` VARCHAR(191) NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `order` DROP PRIMARY KEY,
    DROP COLUMN `note`,
    DROP COLUMN `totalPrice`,
    ADD COLUMN `napomena` VARCHAR(191) NULL,
    ADD COLUMN `ukupnaCena` DOUBLE NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `reservationId` INTEGER NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `orderitem` DROP PRIMARY KEY,
    DROP COLUMN `quantity`,
    ADD COLUMN `kolicina` INTEGER NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `orderId` INTEGER NOT NULL,
    MODIFY `menuItemId` INTEGER NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `reservation` DROP PRIMARY KEY,
    DROP COLUMN `createdAt`,
    DROP COLUMN `partySize`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `brojOsoba` INTEGER NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `status` VARCHAR(191) NOT NULL,
    MODIFY `userId` INTEGER NOT NULL,
    MODIFY `tableId` INTEGER NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `restaurant` DROP PRIMARY KEY,
    DROP COLUMN `address`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `description`,
    DROP COLUMN `managerId`,
    DROP COLUMN `name`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `workingHours`,
    ADD COLUMN `administratorId` INTEGER NOT NULL,
    ADD COLUMN `adresa` VARCHAR(191) NOT NULL,
    ADD COLUMN `naziv` VARCHAR(191) NOT NULL,
    ADD COLUMN `opis` VARCHAR(191) NULL,
    ADD COLUMN `radnoVreme` VARCHAR(191) NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `table` DROP PRIMARY KEY,
    DROP COLUMN `capacity`,
    DROP COLUMN `number`,
    DROP COLUMN `restaurantId`,
    ADD COLUMN `brojStola` INTEGER NOT NULL,
    ADD COLUMN `kapacitet` INTEGER NOT NULL,
    ADD COLUMN `restoranId` INTEGER NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `user` DROP PRIMARY KEY,
    DROP COLUMN `createdAt`,
    DROP COLUMN `name`,
    DROP COLUMN `passwordHash`,
    DROP COLUMN `role`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `datumKreiranja` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `ime` VARCHAR(191) NOT NULL,
    ADD COLUMN `lozinka` VARCHAR(191) NOT NULL,
    ADD COLUMN `uloga` ENUM('GUEST', 'MANAGER', 'ADMIN') NOT NULL,
    MODIFY `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- CreateIndex
CREATE UNIQUE INDEX `Table_restoranId_brojStola_key` ON `Table`(`restoranId`, `brojStola`);

-- AddForeignKey
ALTER TABLE `Restaurant` ADD CONSTRAINT `Restaurant_administratorId_fkey` FOREIGN KEY (`administratorId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Table` ADD CONSTRAINT `Table_restoranId_fkey` FOREIGN KEY (`restoranId`) REFERENCES `Restaurant`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MenuItem` ADD CONSTRAINT `MenuItem_restoranId_fkey` FOREIGN KEY (`restoranId`) REFERENCES `Restaurant`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Reservation` ADD CONSTRAINT `Reservation_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `User`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Reservation` ADD CONSTRAINT `Reservation_tableId_fkey` FOREIGN KEY (`tableId`) REFERENCES `Table`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Order` ADD CONSTRAINT `Order_reservationId_fkey` FOREIGN KEY (`reservationId`) REFERENCES `Reservation`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `OrderItem` ADD CONSTRAINT `OrderItem_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `Order`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `OrderItem` ADD CONSTRAINT `OrderItem_menuItemId_fkey` FOREIGN KEY (`menuItemId`) REFERENCES `MenuItem`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
