DROP TABLE IF EXISTS hots_hero;
DROP TABLE IF EXISTS hots_ability;
DROP TABLE IF EXISTS hots_talent;

CREATE TABLE hots_hero
(hero_id INT AUTO_INCREMENT PRIMARY KEY,
hero_name VARCHAR(30) NOT NULL,
hero_hp INT,
hero_hp_per_level SMALLINT,
hero_hp_regen DECIMAL(2,4),
hero_hp_regen_per_level SMALLINT,
hero_mana INT,
hero_mana_per_level SMALLINT,
hero_mana_regen SMALLINT,
hero_mana_regen_per_level DECIMAL(2,4));

CREATE TABLE hots_ability
(ability_id INT AUTO_INCREMENT PRIMARY KEY,
CONSTRAINT FOREIGN KEY (hero_id)
REFERENCES hots_hero(hero_id),
ability_name VARCHAR(50) NOT NULL,
ability_desc VARCHAR(1000),
ability_cooldown SMALLINT,
ability_key CHAR(1));

CREATE TABLE hots_talent
(talent_id INT AUTO_INCREMENT PRIMARY KEY,
CONSTRAINT FOREIGN KEY (hero_id)
REFERENCES hots_hero(hero_id),
talent_level SMALLINT,
talent_name VARCHAR(50) NOT NULL,
talent_desc VARCHAR(1000));

INSERT INTO hots_hero
VALUES
(1,'Abathur',713,4,1.48,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(2,'Anub\'arak',1926,4,4.0117,4,500,10,3,0.0976);
INSERT INTO hots_hero
VALUES
(3,'Artanis',2245,4,4.6757,4,500,10,3,0.0976);
INSERT INTO hots_hero
VALUES
(4,'Arthas',2582,4,5.3671,4,500,10,3,0.0976);
INSERT INTO hots_hero
VALUES
(5,'Azmodan');
INSERT INTO hots_hero
VALUES
(6,'Brightwing');
INSERT INTO hots_hero
VALUES
(7,'Butcher');
INSERT INTO hots_hero
VALUES
(8,'Chen');
INSERT INTO hots_hero
VALUES
(9,'Cho');
INSERT INTO hots_hero
VALUES
(10,'Chromie');
INSERT INTO hots_hero
VALUES
(11,'Dehaka');
INSERT INTO hots_hero
VALUES
(12,'Diablo');
INSERT INTO hots_hero
VALUES
(13,'E.T.C.');
INSERT INTO hots_hero
VALUES
(14,'Falstad');
INSERT INTO hots_hero
VALUES
(15,'Gall');
INSERT INTO hots_hero
VALUES
(16,'Gazlowe');
INSERT INTO hots_hero
VALUES
(17,'Greymane');
INSERT INTO hots_hero
VALUES
(18,'Gul\'dan');
INSERT INTO hots_hero
VALUES
(19,'Illidan');
INSERT INTO hots_hero
VALUES
(20,'Jaina');
INSERT INTO hots_hero
VALUES
(21,'Johanna');
INSERT INTO hots_hero
VALUES
(22,'Kael\'thas');
INSERT INTO hots_hero
VALUES
(23,'Kerrigan');
INSERT INTO hots_hero
VALUES
(24,'Kharazim');
INSERT INTO hots_hero
VALUES
(25,'Leoric');
INSERT INTO hots_hero
VALUES
(26,'Li Li');
INSERT INTO hots_hero
VALUES
(27,'Li-Ming');
INSERT INTO hots_hero
VALUES
(28,'The Lost Vikings');
INSERT INTO hots_hero
VALUES
(29,'Lt. Morales');
INSERT INTO hots_hero
VALUES
(30,'Lunara');
INSERT INTO hots_hero
VALUES
(31,'Malfurion');
INSERT INTO hots_hero
VALUES
(32,'Medivh');
INSERT INTO hots_hero
VALUES
(33,'Muradin');
INSERT INTO hots_hero
VALUES
(34,'Murky');
INSERT INTO hots_hero
VALUES
(35,'Nazeebo');
INSERT INTO hots_hero
VALUES
(36,'Nova');
INSERT INTO hots_hero
VALUES
(37,'Raynor');
INSERT INTO hots_hero
VALUES
(38,'Rehgar');
INSERT INTO hots_hero
VALUES
(39,'Rexxar');
INSERT INTO hots_hero
VALUES
(40,'Sgt. Hammer');
INSERT INTO hots_hero
VALUES
(41,'Sonya');
INSERT INTO hots_hero
VALUES
(42,'Stitches');
INSERT INTO hots_hero
VALUES
(43,'Sylvanas');
INSERT INTO hots_hero
VALUES
(44,'Tassadar');
INSERT INTO hots_hero
VALUES
(45,'Thrall');
INSERT INTO hots_hero
VALUES
(46,'Tracer');
INSERT INTO hots_hero
VALUES
(47,'Tychus');
INSERT INTO hots_hero
VALUES
(48,'Tyrael');
INSERT INTO hots_hero
VALUES
(49,'Tyrande');
INSERT INTO hots_hero
VALUES
(50,'Uther');
INSERT INTO hots_hero
VALUES
(51,'Valla');
INSERT INTO hots_hero
VALUES
(52,'Xul');
INSERT INTO hots_hero
VALUES
(53,'Zagara');
INSERT INTO hots_hero
VALUES
(54,'Zeratul');

INSERT INTO hots_abilities
VALUES
(1,1,'Locust Strain','Spawns a Locust to attack down the nearest lane every 15 seconds. Locusts last for 25 seconds.',15);
INSERT INTO hots_abilities
VALUES
(2,1,'Symbiote','Assist another allied Unit or Combat Structure, allowing you to shield them and use new Abilities.Cannot be used on another Hero\'s Summons.',4,'Q');
INSERT INTO hots_abilities
VALUES
(3,1,'Stab','Shoots a spike towards target area that deals 237 (113 + 4% per level) damage to the first enemy it contacts.',3,'Q');
INSERT INTO hots_abilities
VALUES
(4,1,'Toxic Nest','Spawn a mine that becomes active after a short time. Deals 336 (160 + 4% per level) damage and reveals the enemy for 4 seconds. Lasts 90 seconds.',10,'W');
INSERT INTO hots_abilities
VALUES
(5,1,'Spike Burst','Deals 233 (111 + 4% per level) damage to nearby enemies.',6,'W');
INSERT INTO hots_abilities
VALUES
(6,1,'Carapace','Shields the assisted ally for 301 (143 + 4% per level). Lasts for 8 seconds.',12,'E');
INSERT INTO hots_abilities
VALUES
(7,1,'Evolve Monstrosity Active','You currently have a Monstrosity active',4,'R');
INSERT INTO hots_abilities
VALUES
(8,1,'Evolve Monstrosity','Turn an allied Minion or Locust into a Monstrosity. When enemy Minions or captured Mercenaries near the Monstrosity die, it gains 5% Health and 5% Basic Attack damage, stacking up to 40 times. The Monstrosity takes 50% less damage from Minions and Structures.Using Symbiote on the Monstrosity allows you to control it, in addition to Symbiote\'s normal benefits.',90,'R');
INSERT INTO hots_abilities
VALUES
(9,1,'Ultimate Evolution','Clone target allied Hero and control it for 20 seconds. Abathur has perfected the clone, granting it 20% Ability Power, 20% bonus Attack Damage, and 10% bonus Movement Speed. Cannot use their Heroic Ability.',50,'R');