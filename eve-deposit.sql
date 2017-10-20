BEGIN TRANSACTION;
CREATE TABLE OreMineral (id INTEGER NOT NULL, ore_id INTEGER DEFAULT NULL, mineral_id INTEGER DEFAULT NULL, reprocessingEfficiency DOUBLE PRECISION NOT NULL, PRIMARY KEY(id));
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (1,1,1,41.471);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (2,4,1,23.017);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (3,4,2,11.501);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (4,7,1,12.5);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (5,7,4,2.0);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (6,7,5,0.15);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (7,10,1,1.111);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (8,10,3,2.224);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (9,10,4,1.111);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (10,13,1,13.333);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (11,13,2,1.667);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (12,13,4,1.417);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (13,16,2,3.333);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (14,16,4,0.667);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (15,16,5,0.333);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (16,16,6,0.063);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (17,19,1,11.667);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (18,19,2,0.816);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (19,19,3,1.659);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (20,19,5,0.152);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (21,22,1,7.333);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (22,22,4,0.333);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (23,22,5,0.4);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (24,22,6,0.05);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (25,25,1,3.033);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (26,25,2,6.067);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (27,25,3,3.033);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (28,28,3,1.75);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (29,28,5,0.375);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (30,28,6,0.4);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (31,31,1,13.125);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (32,31,5,0.475);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (33,31,6,0.084);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (34,34,1,35.0);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (35,34,2,7.531);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (36,34,3,1.313);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (37,34,4,0.281);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (38,37,2,4.4);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (39,37,3,4.8);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (40,37,4,0.6);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (41,40,2,7.5);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (42,40,6,0.281);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (43,40,7,0.063);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (44,43,1,13.75);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (45,43,3,1.563);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (46,43,7,0.2);
INSERT INTO `OreMineral` (id,ore_id,mineral_id,reprocessingEfficiency) VALUES (47,46,8,0.075);
CREATE TABLE Ore (id INTEGER NOT NULL, name VARCHAR(255) NOT NULL COLLATE BINARY, ref INTEGER NOT NULL, unitVolume DOUBLE PRECISION NOT NULL, unitPrice DOUBLE PRECISION NOT NULL, discr VARCHAR(255) NOT NULL COLLATE BINARY, id_primaryOre INTEGER DEFAULT NULL, graphicId VARCHAR(255) DEFAULT NULL COLLATE BINARY, securityLevel DOUBLE PRECISION NOT NULL, PRIMARY KEY(id), CONSTRAINT FK_A4569D4C4643D4C7 FOREIGN KEY (id_primaryOre) REFERENCES Ore (id) NOT DEFERRABLE INITIALLY IMMEDIATE);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (1,'Veldspar',1230,0.1,17.1,'primary',NULL,'24_64_1',1.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (2,'Concentrated Veldspar',17470,0.1,16.5,'secondary',1,'24_64_1',1.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (3,'Dense Veldspar',17471,0.1,16.2,'secondary',1,'24_64_1',1.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (4,'Scordite',1228,0.15,19.8,'primary','','23_64_15',1.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (5,'Condensed Scordite',17463,0.15,20.5,'secondary',4,'23_64_15',1.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (6,'Massive Scordite',17464,0.15,21.2,'secondary',4,'23_64_15',1.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (7,'Dark Ochre',1232,8.0,964.0,'primary','','23_64_8',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (8,'Onyx Ochre',17436,8.0,702.0,'secondary',7,'23_64_8',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (9,'Obsidian Ochre',17437,8.0,634.0,'secondary',7,'23_64_8',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (10,'Kernite',20,1.2,232.0,'primary','','23_64_12',0.7);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (11,'Luminous Kernite',17452,1.2,195.0,'secondary',10,'23_64_12',0.07);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (12,'Fiery Kernite',17453,1.2,202.0,'secondary',10,'23_64_12',0.7);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (13,'Omber',1227,0.6,100.0,'primary',NULL,'23_64_13',0.7);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (14,'Silvery Omber',17867,0.6,100.0,'secondary',13,'23_64_13',0.7);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (15,'Golden Omber',17868,0.6,100.0,'secondary',13,'23_64_13',0.7);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (16,'Hedbergite',21,3.0,100.0,'primary','','23_64_9',0.2);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (17,'Vitric Hedbergite',17440,3.0,100.0,'secondary',16,'23_64_9',0.2);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (18,'Glazed Hedbergite',17441,3.0,100.0,'secondary',16,'23_64_9',0.2);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (19,'Pyroxeres',1224,0.3,100.0,'primary','','23_64_16',0.9);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (20,'Solid Pyroxeres',17459,0.3,100.0,'secondary',19,'23_64_16',0.9);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (21,'Viscous Pyroxeres',17460,0.3,100.0,'secondary',19,'23_64_16',0.9);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (22,'Hemorphite',1231,3.0,100.0,'primary','','23_64_10',0.2);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (23,'Vivid Hemorphite',17444,3.0,100.0,'secondary',22,'23_64_10',0.2);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (24,'Radiant Hemorphite',17445,3.0,100.0,'secondary',22,'23_64_10',0.2);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (25,'Plagioclase',18,0.35,100.0,'primary','','24_64_2',0.9);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (26,'Azure Plagioclase',17455,0.35,100.0,'secondary',25,'24_64_2',0.9);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (27,'Rich Plagioclase',17456,0.35,100.0,'secondary',25,'24_64_2',0.9);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (28,'Jaspet',1226,2.0,100.0,'primary',NULL,'23_64_11',0.4);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (29,'Pure Jaspet',17448,2.0,100.0,'secondary',28,'23_64_11',0.4);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (30,'Pristine Jaspet',17449,2.0,100.0,'secondary',28,'23_64_11',0.4);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (31,'Crokite',1225,16.0,100.0,'primary','','23_64_7',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (32,'Sharp Crokite',17432,16.0,100.0,'secondary',31,'23_64_7',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (33,'Crystalline Crokite',17433,16.0,100.0,'secondary',31,'23_64_7',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (34,'Spodumain',19,16.0,100.0,'primary',NULL,'23_64_14',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (35,'Bright Spodumain',17466,16.0,100.0,'secondary',34,'23_64_14',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (36,'Gleaming Spodumain',17467,16.0,100.0,'secondary',34,'23_64_14',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (37,'Gneiss',1229,5.0,100.0,'primary',NULL,'25_64_1',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (38,'Iridescent Gneiss',17865,5.0,100.0,'secondary',37,'25_64_1',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (39,'Prismatic Gneiss',17866,5.0,100.0,'secondary',37,'25_64_1',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (40,'Bistot',1223,16.0,100.0,'primary',NULL,'23_64_6',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (41,'Triclinic Bistot',17428,16.0,100.0,'secondary',40,'23_64_6',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (42,'Monoclinic Bistot',17429,16.0,100.0,'secondary',40,'23_64_6',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (43,'Arkonor',22,16.0,100.0,'primary',NULL,'23_64_5',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (44,'Crimson Arkonor',17425,16.0,100.0,'secondary',43,'23_64_5',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (45,'Prime Arkonor',17426,16.0,100.0,'secondary',43,'23_64_5',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (46,'Mercoxit',11396,40.0,100.0,'primary',NULL,'35_64_11',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (47,'Magma Mercoxit',17869,40.0,100.0,'secondary',46,'35_64_11',0.0);
INSERT INTO `Ore` (id,name,ref,unitVolume,unitPrice,discr,id_primaryOre,graphicId,securityLevel) VALUES (48,'Vitreous Mercoxit',17870,40.0,100.0,'secondary',46,'35_64_11',0.0);
CREATE TABLE Mineral (id INTEGER NOT NULL, name VARCHAR(255) NOT NULL COLLATE BINARY, ref INTEGER NOT NULL, unitVolume DOUBLE PRECISION NOT NULL, unitPrice DOUBLE PRECISION NOT NULL, PRIMARY KEY(id));
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (1,'Tritanium',0,'',5.71);
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (2,'Pyerite',0,'',5.73);
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (3,'Mexallon',0,'',75.7);
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (4,'Isogen',0,'',52.4);
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (5,'Nocxium',0,'',386.0);
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (6,'Zydrine',0,'',1130.0);
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (7,'Megacyte',0,'',11350.0);
INSERT INTO `Mineral` (id,name,ref,unitVolume,unitPrice) VALUES (8,'Morphite',0,'',11400.0);
CREATE INDEX IDX_A4569D4C4643D4C7 ON Ore (id_primaryOre);
CREATE INDEX IDX_852F3E4A5E8AB490 ON OreMineral (ore_id);
CREATE INDEX IDX_852F3E4A21F4A72C ON OreMineral (mineral_id);
COMMIT;