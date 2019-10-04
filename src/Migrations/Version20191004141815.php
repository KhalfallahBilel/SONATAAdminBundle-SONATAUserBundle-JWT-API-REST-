<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20191004141815 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE city ADD country_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE city ADD CONSTRAINT FK_8D69AD0AF92F3E70 FOREIGN KEY (country_id) REFERENCES Country (id)');
        $this->addSql('CREATE INDEX IDX_8D69AD0AF92F3E70 ON city (country_id)');
        $this->addSql('ALTER TABLE information ADD user_id INT DEFAULT NULL, ADD client_id INT DEFAULT NULL, ADD city_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE information ADD CONSTRAINT FK_AFE59754A76ED395 FOREIGN KEY (user_id) REFERENCES User (id)');
        $this->addSql('ALTER TABLE information ADD CONSTRAINT FK_AFE5975419EB6921 FOREIGN KEY (client_id) REFERENCES Client (id)');
        $this->addSql('ALTER TABLE information ADD CONSTRAINT FK_AFE597548BAC62AF FOREIGN KEY (city_id) REFERENCES City (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_AFE59754A76ED395 ON information (user_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_AFE5975419EB6921 ON information (client_id)');
        $this->addSql('CREATE INDEX IDX_AFE597548BAC62AF ON information (city_id)');
        $this->addSql('ALTER TABLE project ADD client_id INT DEFAULT NULL, ADD manager_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE project ADD CONSTRAINT FK_E00EE97219EB6921 FOREIGN KEY (client_id) REFERENCES Client (id)');
        $this->addSql('ALTER TABLE project ADD CONSTRAINT FK_E00EE972783E3463 FOREIGN KEY (manager_id) REFERENCES User (id)');
        $this->addSql('CREATE INDEX IDX_E00EE97219EB6921 ON project (client_id)');
        $this->addSql('CREATE INDEX IDX_E00EE972783E3463 ON project (manager_id)');
        $this->addSql('ALTER TABLE user ADD manager INT DEFAULT NULL, ADD created_at DATETIME NOT NULL, ADD firstname VARCHAR(255) NOT NULL, ADD lastname VARCHAR(255) NOT NULL, ADD update_at DATETIME DEFAULT NULL, ADD deleted_at DATETIME DEFAULT NULL');
        $this->addSql('ALTER TABLE user ADD CONSTRAINT FK_2DA17977FA2425B9 FOREIGN KEY (manager) REFERENCES Client (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_2DA17977FA2425B9 ON user (manager)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE City DROP FOREIGN KEY FK_8D69AD0AF92F3E70');
        $this->addSql('DROP INDEX IDX_8D69AD0AF92F3E70 ON City');
        $this->addSql('ALTER TABLE City DROP country_id');
        $this->addSql('ALTER TABLE Information DROP FOREIGN KEY FK_AFE59754A76ED395');
        $this->addSql('ALTER TABLE Information DROP FOREIGN KEY FK_AFE5975419EB6921');
        $this->addSql('ALTER TABLE Information DROP FOREIGN KEY FK_AFE597548BAC62AF');
        $this->addSql('DROP INDEX UNIQ_AFE59754A76ED395 ON Information');
        $this->addSql('DROP INDEX UNIQ_AFE5975419EB6921 ON Information');
        $this->addSql('DROP INDEX IDX_AFE597548BAC62AF ON Information');
        $this->addSql('ALTER TABLE Information DROP user_id, DROP client_id, DROP city_id');
        $this->addSql('ALTER TABLE Project DROP FOREIGN KEY FK_E00EE97219EB6921');
        $this->addSql('ALTER TABLE Project DROP FOREIGN KEY FK_E00EE972783E3463');
        $this->addSql('DROP INDEX IDX_E00EE97219EB6921 ON Project');
        $this->addSql('DROP INDEX IDX_E00EE972783E3463 ON Project');
        $this->addSql('ALTER TABLE Project DROP client_id, DROP manager_id');
        $this->addSql('ALTER TABLE User DROP FOREIGN KEY FK_2DA17977FA2425B9');
        $this->addSql('DROP INDEX UNIQ_2DA17977FA2425B9 ON User');
        $this->addSql('ALTER TABLE User DROP manager, DROP created_at, DROP firstname, DROP lastname, DROP update_at, DROP deleted_at');
    }
}
