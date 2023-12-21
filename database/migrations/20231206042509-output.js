'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    // Create the 'output' table
    await queryInterface.createTable('output', {
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      nama: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      keterangan: {
        type: Sequelize.TEXT,
      },
      penyebab: {
        type: Sequelize.TEXT,
      },
      userId: {
        type: Sequelize.INTEGER,
        references: {
          model: 'users', // This is the name of the referenced table
          key: 'id', // This is the name of the referenced column
        },
        onUpdate: 'CASCADE',
        onDelete: 'CASCADE',
      },
    });

    // Add a foreign key constraint
    await queryInterface.addConstraint('output', {
      fields: ['userId'],
      type: 'foreign key',
      name: 'output_userId_fk',
      references: {
        table: 'users',
        field: 'id',
      },
      onDelete: 'cascade',
      onUpdate: 'cascade',
    });
  },

  async down(queryInterface, Sequelize) {
    // Remove the 'output' table
    await queryInterface.dropTable('output');
  }
};

