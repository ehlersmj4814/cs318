DROP TABLE IF EXISTS hots_ability;
DROP TABLE IF EXISTS hots_talent;
DROP TABLE IF EXISTS hots_hero;
DROP TABLE IF EXISTS login_member;

CREATE USER 'admin_manny'@'localhost' IDENTIFIED BY 'N4tKJRTL8Q4qKH';
GRANT SELECT, INSERT, UPDATE 
	ON login_member TO 'admin_manny'@'localhost';
GRANT SELECT, INSERT, UPDATE
	ON hots_hero TO 'admin_manny'@'localhost';
GRANT SELECT, INSERT, UPDATE
	ON hots_ability TO 'admin_manny'@'localhost';
GRANT SELECT, INSERT, UPDATE
	ON hots_talent TO 'admin_manny'@'localhost';

CREATE TABLE login_member
(login_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
login_username VARCHAR(30) NOT NULL,
login_email VARCHAR(50) NOT NULL,
login_password CHAR(128) NOT NULL
);

CREATE TABLE hots_hero
(hero_id SMALLINT AUTO_INCREMENT PRIMARY KEY,
hero_name VARCHAR(30) NOT NULL,
hero_hp INT,
hero_hp_regen DECIMAL(6,4),
hero_mana SMALLINT,
hero_mana_regen SMALLINT,
hero_speed DECIMAL(6,4),
hero_attack_speed DECIMAL(4,2),
hero_attack_range DECIMAL(4,2),
hero_attack_damage SMALLINT,
hero_hp_per_level SMALLINT,
hero_hp_regen_per_level DECIMAL(7,4),
hero_ranged_damage SMALLINT,
hero_splash_damage SMALLINT,
hero_mana_per_level SMALLINT,
hero_mana_regen_per_level SMALLINT);

CREATE TABLE hots_ability
(ability_id INT AUTO_INCREMENT PRIMARY KEY,
hero_id SMALLINT,
CONSTRAINT FOREIGN KEY (hero_id)
REFERENCES hots_hero(hero_id),
ability_name VARCHAR(50) NOT NULL,
ability_desc VARCHAR(750),
ability_cooldown DECIMAL(5,2),
ability_key CHAR(1),
ability_mana VARCHAR(5));

CREATE TABLE hots_talent
(talent_id INT AUTO_INCREMENT PRIMARY KEY,
hero_id SMALLINT,
CONSTRAINT FOREIGN KEY (hero_id)
REFERENCES hots_hero(hero_id),
talent_level SMALLINT,
talent_name VARCHAR(50) NOT NULL,
talent_cooldown DECIMAL(5,2),
talent_desc VARCHAR(750));

INSERT INTO hots_hero
VALUES
(1,'Abathur',713,1.48,0,0,4.3984,1.43,1,27,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(2,'Anub\'arak',2316,4.82,500,3,4.3984,1,1.5,103,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(3,'Artanis',2569,5.35,500,3,4.3984,1,1.2,115,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(4,'Arthas',2400,5.002,500,3,4.3984,1,2,103,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(5,'Azmodan',2848,5.93,500,3,4.3984,1,5.5,88,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(6,'Brightwing',1529,3.18,500,3,4.3984,1.11,5.5,88,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(7,'The Butcher',2241, 4.67,500,3,1.1,1.11,1.5,146,4,4,0,0,0,4);
INSERT INTO hots_hero
VALUES
(8,'Chen',2653,5.52,100,0,4.3984,1.11,2,87,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(9,'Cho',3687,7.68,0,0,4.3984,0.91,2,125,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(10,'Chromie',1376,2.87,500,3,0,1.0,5.5,76,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(11,'Dehaka',2532,5.27,500,3,4.3987,1.11,1.00,114,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(12,'Diablo',2670,5.56,500,3,4.3984,0.91,1.2,109,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(13,'E.T.C.',2526,5.26,500,3,4.3984,1,1.5,103,4,4,4,4,0,0);
INSERT INTO hots_hero
VALUES
(14,'Falstad',1420,2.95,500,3,4.3984,1.43,5.5,108,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(15,'Gall',0,0,0,0,4,0,0,0,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(16,'Gazlowe',1900,3.95,500,3,4.3984,1.25,1.2,99,4,4,4,4,0,0);
INSERT INTO hots_hero
VALUES
(17,'Greymane',1960,4.09,500,3,4.3984,1,5.5,146,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(18,'Gul\'dan',1769,3.68,500,0,0,1,5.5,62,4,3.438,0,0,0,0);
INSERT INTO hots_hero
VALUES
(19,'Illidan',1717,3.57,0,0,4.3984,1.82,1.2,81,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(20,'Jaina',1420,2.95,500,3,4.3984,1,5.5,62,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(21,'Johanna',2550,5.3,500,3,4.3984,0.91,1.5,103,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(22,'Kael\'thas',1581,3.3,500,3,4.3984,1.11,5.5,68,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(23,'Kerrigan',1748,3.64,500,3,4.3984,1.25,2,125,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(24,'Kharazim',2028,4.21,500,3,4.3984,2,1.8,66,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(25,'Leoric',2567,5.35,500,3,4.3984,0.77,2,144,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(26,'Li Li',1615,3.36,500,3,4.3984,1.25,5.5,66,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(27,'Li-Ming',1282,2.66,500,3,4.3984,1.00,5.5,66,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(28,'The Lost Vikings',650,1.3554,0,0,4,1,1.25,20,130,0.2695,5,5,0,0);
INSERT INTO hots_hero
VALUES
(29,'Lt. Morales',1590,3.31,500,3,4.3984,1,5.5,92,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(30,'Lunara',1488,3.10,500,3,4.3984,1.11,5.5,94,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(31,'Malfurion',1750,3.64,500,3,4.3984,1.11,5.5,70,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(32,'Medivh',1529,3.18,500,3,0,1.11,5.5,83,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(33,'Muradin',2739,5.7,500,3,4.3984,1.11,1,101,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(34,'Murky',660,26.38,0,0,4.3984,1.25,1.2,62,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(35,'Nazeebo',1704,3.55,500,3,4.3984,1.11,5.5,92,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(36,'Nova',1405,2.92,500,3,4.3984,1,6.5,109,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(37,'Raynor',1355,2.82,500,3,4.3984,1.25,6.6,127,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(38,'Rehgar',2132,4.44,500,3,4.3984,1.25,1.5,125,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(39,'Rexxar',1795,3.73,500,3,4.3984,0.87,5.5,103,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(40,'Sgt. Hammer',1704,3.55,500,3,4.3984,1,6.6,133,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(41,'Sonya',2435,5.08,100,0,4.3984,1.25,1.5,92,220,0.457,4,4,0,0);
INSERT INTO hots_hero
VALUES
(42,'Stitches',2848,5.93,500,3,4.3984,0.91,1.5,88,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(43,'Sylvanas',1515,3.15,500,3,4.3984,1.67,5.5,88,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(44,'Tassadar',1484,3.09,500,3,4.3984,1,5.5,10,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(45,'Thrall',1859,3.87,500,3,4.3984,0.91,1.5,172,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(46,'Tracer',1255,5.22,0,0,0,8,5.5,28,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(47,'Tychus',2003,4.19,500,3,4.3984,4.00,5.5,46,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(48,'Tyrael',2567,5.35,500,3,4.3984,1.25,1.5,81,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(49,'Tyrande',1655,3.45,500,3,4.3984,1.25,5.5,90,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(50,'Uther',2137,4.45,500,3,4.3984,1,1,81,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(51,'Valla',1324,2.76,500,3,4.3984,1.67,5.5,78,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(52,'Xul',1977,4.11,500,3,4.3984,1.2,1.5,108,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(53,'Zagara',1709,3.56,500,3,4.3984,1.25,5.5,85,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(54,'Zeratul',1687,3.52,500,3,4.3984,1.11,1.5,131,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(55,'Alarak',1977,4.11,500,3,0,1.20,1.5,146,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(56,'Auriel',1925,4.0,526,0,0,1.25,5.5,62,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(57,'Lúcio',1509,0,500,0,0,0,0,0,4,4,4,0,0,0);
INSERT INTO hots_hero
VALUES
(58,'Ragnaros',2185,4.55,500,3,0,0.83,2.0,187,0,0,0,0,0,0);
INSERT INTO hots_hero
VALUES
(59,'Samuro',1717,3.58,0,0,0,1.67,2.0,92,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(60,'Varian',2215,4.61,500,3,0,1.25,1.2,90,4,3,0,0,0,0);
INSERT INTO hots_hero
VALUES
(61,'Zarya',2315,4.83,100,-2.5,0,4,4.5,22,4,4,0,0,0,0);
INSERT INTO hots_hero
VALUES
(62,'Valeera',2029,0,100,10,0,0,0,0,0,0,0,0,0,0);
INSERT INTO hots_hero
VALUES
(63,'Zul\'jin',1951,5.54,500,3,0,1.25,5.5,114.4,0,0,0,0,0,0);

/*INSERT INTO hots_hero
VALUES
(,'',,,,,,,,,,,,,,);*/

INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Locust Strain','Spawns a Locust to attack down the nearest lane every 15 seconds. Locusts last for 25 seconds.',15,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Symbiote','Assist another allied Unit or Combat Structure, allowing you to shield them and use new Abilities.Cannot be used on another Hero\'s Summons.',4,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Stab','Shoots a spike towards target area that deals 237 (113 + 4% per level) damage to the first enemy it contacts.',3,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Toxic Nest','Spawn a mine that becomes active after a short time. Deals 336 (160 + 4% per level) damage and reveals the enemy for 4 seconds. Lasts 90 seconds.',10,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Spike Burst','Deals 233 (111 + 4% per level) damage to nearby enemies.',6,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Carapace','Shields the assisted ally for 301 (143 + 4% per level). Lasts for 8 seconds.',12,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Evolve Monstrosity Active','You currently have a Monstrosity active',4,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Evolve Monstrosity','Turn an allied Minion or Locust into a Monstrosity. When enemy Minions or captured Mercenaries near the Monstrosity die, it gains 5% Health and 5% Basic Attack damage, stacking up to 40 times. The Monstrosity takes 50% less damage from Minions and Structures.Using Symbiote on the Monstrosity allows you to control it, in addition to Symbiote\'s normal benefits.',90,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(1,'Ultimate Evolution','Clone target allied Hero and control it for 20 seconds. Abathur has perfected the clone, granting it 20% Ability Power, 20% bonus Attack Damage, and 10% bonus Movement Speed. Cannot use their Heroic Ability.',50,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(2,'Scarab Host','Spawn a Beetle at your location whenever you use an ability. Beetles last for 8 seconds, attacking nearby enemies for 44 (21 + 4% per level) damage.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(2,'Impale','Deals 220 (104 + 4% per level) damage. Stuns for 1 second.',12,'Q','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(2,'Harden Carapace','Gain a Shield that absorbs 570 (260 + 4% per level) damage over 3 seconds.',8,'W','35');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(2,'Burrow Charge','Burrows to location, dealing 235 (112 + 4% per level) damage and briefly stunning enemies in a small area upon surfacing. Can reactivate the Ability to surface early.',16,'E','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(2,'Locust Swarm','Deal 145 (69 + 4% per level) damage per second in an area around yourself. Each enemy damaged heals you for 40 (19 + 4% per level) Health. Lasts 8 seconds.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(2,'Cocoon','Wraps target enemy Hero in a cocoon, rendering them unable to act or be targeted for 8 seconds. Allies of the Hero can attack the cocoon to break it and free them early.',60,'R','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(3,'Shield Overload','If you take damage while below 75% Health, gain a 374 (360 + 4% per level) point Shield for 5 seconds. Your Basic Attacks lower the cooldown of Shield Overload by 4 seconds.',24,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(3,'Blade Dash','Dash forward and deal 125 (60 + 4% per level) damage to enemies, then return and deal 375 (178 + 4% per level) damage. Also reduces the cooldown of Shield Overload by 1 second per enemy hit and 2 seconds per Hero hit',10,'Q','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(3,'Twin Blades','Your next Basic Attack immediately causes you to charge a short distance and strike the enemy 2 times.',4,'W','25');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(3,'Phase Prism','Fire a Phase Prism that deals 145 (69 + 4% per level) damage to Heroes and swaps your position with theirs. Phase Prism is castable during Blade Dash',80,'E','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(3,'Purifier Beam','Target an enemy Hero with an orbital beam from the Spear of Adun, dealing 404 (192 + 4% per level) damage per second for 8 seconds. The beam will chase the target as they move. Unlimited range.',80,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(3,'Suppression Pulse','Fire a large area pulse from the Spear of Adun, dealing 250 (119 + 4% per level) damage and Blinding enemies for 4 seconds. Unlimited range.',50,'R','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(4,'Frostmourne Hungers','Activate to make your next Basic Attack strike immediately, do 100% increased damage, and restore 30 Mana.',12,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(4,'Death Coil','50 Mana.. Deals 360 (171 + 4% per level) damage to target enemy.Can be self-cast to heal for 522 (248 + 4% per level) Health.',9,'Q','');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(4,'Howling Blast','Root enemies within the target area for 1.5 seconds and deals 149 (71 + 4% per level) damage.',12,'W','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(4,'Frozen Tempest','Deals 106 (50 + 4% per level) damage per second to nearby enemies. Slows enemy Move Speed by 6% per second, stacking up to 30%.',1,'E','15/s');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(4,'Army of the Dead','Summons Ghouls that last 15 seconds. Sacrifice Ghouls to heal for 586 (278 + 4% per level) Health.',100,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(4,'Summon Sindragosa','Deals 504 (240 + 4% per level) damage and slows enemies by 60% for 3.5 seconds. Also disables non-Heroic enemies and Structures for 20 seconds.',80,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(5,'General of Hell','Summon a Demon Lieutenant at an allied Mercenary, Minion, or Summon. The Lieutenant will march with the target, granting 15% increased damage and 15% increased maximum Health to all nearby friendly Mercenaries, Minions, and Summons. Unlimited range.',30,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(5,'Globe Of Annihilation','Shoot a globe of destruction, dealing 360 (171 + 4% per level) damage on impact. Long range.',10,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(5,'Summon Demon Warrior','Spawn a Demon Warrior that marches toward a point. Warriors deal 78 (37 + 4% per level) damage per second and last for 10 seconds.',10,'W','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(5,'All Shall Burn','Channel a death beam on an enemy dealing 220 (104 + 4% per level) damage a second. The damage amount grows the longer it is channeled, to a maximum of 439 (208 + 4% per level) damage per second. Does 25% more damage to Structures. Azmodan can move at 40% speed while channeling.',6,'E','16/s');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(5,'Black Pool','Create a pool that empowers Azmodan, his Demons, and allied Minions, increasing their attack and ability damage by 75%. Pools last 5 seconds. Maximum 2 charges.',20,'R','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(5,'Demonic Invasion','Rain a small army of Demonic Grunts down on enemies, dealing 121 (58 + 4% per level) damage per impact. Demon Grunts deal 60 (29 + 4% per level) damage and have 800 (380 + 4% per level) health. Damage is doubled versus non-Heroic targets.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(6,'Soothing Mist','Brightwing heals nearby allied Heroes for 252 (120 + 4% per level) every 4 seconds.',4,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(6,'Arcane Flare','Deal 301 (143 + 4% per level) damage in a small area and 200 (95 + 4% per level) damage in a larger area.',8,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(6,'Polymorph','Target is slowed by 20% Movement Speed, and cannot attack and is Silenced making them unable to use Abilities for 1.5 seconds.',15,'W','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(6,'Pixie Dust','Increase targets Movement Speed by 20% and grants 2 charges of Block. Lasts 4 seconds.',10,'E','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(6,'Blink Heal','Teleport to a nearby ally, healing them for 447 (213 + 4% per level). Can store 2 charges.',10,'R','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(6,'Emerald Wind','Create an expanding nova of wind, dealing 699 (332 + 4% per level) damage and pushing enemies away. Also passively increases the healing of Soothing Mist by 8%.',60,'R','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(7,'Fresh Meat','Quest: Nearby Minions drop 1 Fresh Meat and Heroes drop 5 Fresh Meat when they die. You can pick up Fresh Meat to gain 1 Basic Attack damage per Meat. Can hold up to 125 Meat. You drop up to 10 Fresh Meat upon dying. Reward: After acquiring 125 pieces of Fresh Meat, gain and additional 100 Basic Attack damage and 25% increased Attack Speed. You also no longer lose Fresh Meat on death.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(7,'Hamstring','Deal 242 (115 + 4% per level) damage and slow enemies by 50% fading over 2 seconds. Your next Basic Attack will strike immediately.',4,'Q','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(7,'Butcher\'s Brand','Deal 82 (39 + 4% per level) damage to an enemy and cause your Basic Attacks against them to heal you for 75% of the damage done for 5 seconds. Healing doubled versus Heroes. Last 4 seconds. Your Basic Attacks against a branded Hero increase the duration by 0.5 seconds.',14,'W','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(7,'Ruthless Onslaught','Charge at an enemy, becoming Unstoppable and gaining Movement Speed. If you reach the target, they are stunned for 1 second and take 261 (124 + 4% per level) damage.',15,'E','55');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(7,'Furnace Blast','After a 3 second delay, fire explodes around you dealing 1096 (520 + 4% per level) damage to enemies.Can be cast while using Ruthless Onslaught.',60,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(7,'Lamb of the Slaughter','Throw a hitching post that attaches to the nearest enemy Hero after a 1 second delay. This deals 375 (178 + 4% per level) damage and causes the enemy to be chained to the post and Silenced for 3 seconds.',90,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Fortifying Brew','Drink from your keg, gaining 40 Brew and 465 (221 + 4% per level) temporary Shields per second, up to a maximum of 1394 (662 + 4% per level) while drinking. Shields persist for 2 seconds after you stop drinking.',5,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Flying Kick','Kick through target enemy, dealing 246 (117 + 4% per level) damage.',5,'Q','10');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Storm','Increase the Movement Speede of your spirits by 50% for 5 seconds.',5,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Keg Smash','Smash your keg, dealing 110 (52 + 4% per level) damage and drenching affected enemies in Brew, slowing them by 25% for 3 seconds.',5,'W','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Earth','Fire and Earth leap to the target location, slowing enemies in a large area by 70% for 1.5 seconds.',6,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Breath of Fire','Breathe a cone of flames, dealing 211 (100 + 4% per level) damage. Enemies soaked in Brew are set on fire, dealing 211 (100 + 4% per level) damage over 3 seconds.',5,'E','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Fire','Increase the Attack Speed of your spirits by 100% for 5 seconds.',12,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Storm, Earth, Fire','Split into three elemental spirits for 12.15 seconds, each with 75% of your maximum Health and a unique ability. If all three spirits are killed, Chen will die as well. Storm can grant your spirits Movement Speed. Earth can leap to an area and slow enemies. Fire can grant your spirits Attack Speed.',100,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(8,'Wandering Keg','Roll around inside an Unstoppable barrel, dealing 130 (62 + 4% per level) damage to enemies in the way and knocking them back. Lasts for 5 seconds.',70,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(9,'Two-Headed','Gall is permanently attached to you, going where you go.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(9,'Surging Fist','Activate to charge in a direction. Enemies in your path are knocked aside and take 101 (48 + 4% per level) damage.',0,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(9,'Surging Fist','Wind up for at least 1 second temporarily slowing yourself, then reactivate to charge in a direction. Enemies in your path are knocked aside and take 101 (48 + 4% per level) damage.',13,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(9,'Consuming Blaze','Ignite nearby enemies, dealing 294 (140 + 4% per level) damage over 3.94 seconds. If this hits an enemy, gain 596 (283 + 4% per level) Health over 4 seconds.',12,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(9,'Rune Bomb','Roll a bomb dealing 200 (95 + 4% per level) damage to enemies in its path. Gall can use Runic Blast to detonate it to deal 601 (285 + 4% per level) damage in an area.',8,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(9,'Hammer of Twilight','Passively increases Basic Attack damage by 25%. Activate to swing the Hammer to deal 377 (164 + 4.5% per level) damage, push enemies away, and stun for 0.75 seconds.',15,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(9,'Upheaval','After 1 second pull enemies towards your direction, slowing them by 25% for 3 seconds and dealing 220 (104 + 4% per level) damage.',60,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(10,'Timewalker','You\'ve traveled to the future, and as such, will learn your Talents 2 level earlier than your teammates!',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(10,'Sand Blast','After 1 second, fire a missile that deals 855 (406 + 4% per level) damage to the first enemy Hero hit.',2.5,'Q','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(10,'Dragon\'s Breath','Fire a blast into the air that lands after 1.5 seconds, dealing 965 (458 + 4% per level) damage to enemies in an area. Enemies cannot see where the blast will land.',12,'W','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(10,'Time Trap','Place a Time Trap that arms and Stealths after 2 seconds. The first enemy Hero to touch it will be put into Stasis for 2 seconds. Only 1 trap can exist at once.',18,'E','25');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(10,'Slowing Sands','Place a sand vortex that greatly slows enemies inside it. The longer it is active the more it slows, up to 60% after 3 seconds.',5,'R','2/s');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(10,'Temporal Loop','Choose an enemy Hero. After 3 seconds, they will teleport back to the location where you cast Temporal Loop on them.',70,'R','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(11,'Essence Collection','Gain 10 Essence from Takedowns and 2 Essence from nearby Minions dying. Activate to consume all Essence and heal yourself for 64 (31 + 4% per level) Health over 5 seconds for each Essence stored. Maximum of 50 Essence. Can be cast during Drag and Burrow.',1,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(11,'Drag','Lash out with your tongue, dealing 351 (167 + 4% per level) damage to the first enemy hit and dragging them with you for 1.75 seconds.',15,'Q','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(11,'Dark Swarm','Deal 139 (63 + 4% per level) damage a second to nearby enemies for 3 seconds, and become able to move through units. Deals double damage to Heroes. Can be cast during Drag and Burrow.',9,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(11,'Burrow','Burrow into the ground, entering Stasis and becoming Invulnerable for 2 seconds.',0.5,'E','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(11,'Isolation','Launch biomass that hits the first enemy Hero dealing 439 (208 + 4% per level) damage, silencing and slowing them for 30% for 3 seconds. Only allows them to see a very short distance for 6 seconds.',60,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(11,'Adaptation','After 5 seconds, heal for 100% of the damage you took over this period.',90,'R','85');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(12,'Black Soulstone','Gain 10 Souls per Hero killed, or 1 per Minion or captured Mercenary. For each Soul, gain 0.4% maximum Health. If you have 100 Souls upon dying, you resurrect in 5 seconds and lose 100 Souls. Maximum 100 Souls.',30,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(12,'Shadow Charge','Charge an enemy, knocking them back, dealing 158 (75 + 4% per level) damage and grating Resistant, reducing damage taken by 25% for 2 seconds. If the enemy collides with terrain, they are stunned for 1 second and take 150 additional damage.',12,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(12,'Fire Stomp','Unleashes fire waves in all directions that deal 114 (54 + 4% per level) damage each. Once they reach the maximum range they return, dealing an additional 81 damage.',6,'W','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(12,'Overpower','Grabs the target and slams it behind Diablo, dealing 160 (76 + 4% per level) damage and stunning for 0.25 seconds.',12,'E','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(12,'Apocalypse','Create a demonic rune under each enemy Hero on the battleground. After 1.75 seconds the rune explodes dealing 301 (143 + 4% per level) damage and stunning for 2 seconds.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(12,'Lightning Breath','Become Unstoppable while channeling lightning that deals 1753 (832 + 4% per level) damage over 4 seconds. The direction of the Lightning changes with your mouse cursor position.',60,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(13,'Rockstar','When you use a Basic or Heroic ability, give 20% Attack Speed for 4 seconds to all nearby allied Heroes.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(13,'Powerslide','Slide to a location dealing 200 (95 + 4% per level) damage and stunning enemies hit for 1.25 second.',12,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(13,'Face Melt','Deals 149 (71 + 4% per level) damage to nearby enemies, knocking them back.',10,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(13,'Guitar Solo','Regenerate 145 (69 + 4% per level) Health per second for 4 seconds.',8,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(13,'Mosh Pit','After 0.75 seconds, channel to stun nearby enemies for 4 seconds.',120,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(13,'Stage Dive','Leap to target location, landing after 2.75 seconds, dealing 724 (330 + 4% per level) damage to enemies in the area, and slowing them by 50% for 3 seconds.',75,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(14,'Tailwind','Gain 15% increased Movement Speed after not taking damage for 6 seconds.',6,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(14,'Hammerang','Throw out a Hammer that returns to you, dealing 290 (138 + 4% per level) damage and slowing enemies by 25% for 2 seconds.',10,'Q','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(14,'Lightning Rod','Deal 235 (112 + 4% per level) to an enemy, and an additional 165 (78 + 4% per level) damage per second for 4.25 seconds if you remain close to the target.',15,'W','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(14,'Barrel Roll','Dashes forward and grants a 375 (178 + 4% per level) point Shield for 2 seconds.',14,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(14,'Mighty Gust','Push enemies away, and slow their Movement Speed by 40% decaying over 4 seconds.',60,'R','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(14,'Hinterland Blast','After a short delay, deal 901 (428 + 4% per level) damage to enemies within a long line.',120,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(15,'Two-Headed','Passive: Permanently attached to Cho, going where he goes. You are immune to Stun and Silence effects.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(15,'Shadowflame','Deal 391 (155 + 5% per level) damage to enemies in the area.',3,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(15,'Dread Orb','Throw a bomb that will bounce three times, dealing 393 (156 + 5% per level) damage to enemies.',6,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(15,'Runic Blast','Detonate Cho\'s Rune Bomb, dealing 601 (285 + 4% per level) damage around it.',0.5,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(15,'Detonate Twisting Nether','Detonate the Twisting Nether, dealing 750 (356 + 4% per level) damage.',0,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(15,'Twisting Nether','After 1 second, nearby enemies are slowed by 50% while you channel, up to 5 seconds. Activate to deal 750 (356 + 4% per level) damage.',80,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(15,'Shadow Bolt Volley','After 1 second, unleash 20 Shadow Bolts over 4 seconds, each dealing 226 (108 + 4% per level) damage to the first target hit. The bolts fire towards your mouse.',60,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(16,'Salvager','Destroyed enemy Structures and your Rock-it! Turrets drop scrap. Collecting scrap restores 30 Mana and causes your Abilities to recharge three times as fast over 3 seconds. Activate Salvager to dismantle a target Rock-it! Turret and turn it into Scrap.',0,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(16,'Rock-It! Turret','Creates a turret that deals 149 (71 + 4% per level) damage. Lasts for 30 seconds. Stores 2 charges.',15,'Q','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(16,'Deth Lazor','Charged attack that deals 301 (143 + 4% per level) damage to enemies in a line. Damage and range increase the longer the Ability is charged, up to 100% after 3 seconds.',12,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(16,'Xplodium Charge','Places a bomb that deals 511 (243 + 4% per level) damage to enemies within target area after 2.5 seconds, stunning them for 1.75 seconds.',14,'E','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(16,'Robo-Goblin','Active: Basic Attacks deal an additional 200% damage to Non-Heroes. Activate to order all nearby Rock-it! Turrets to focus a target.',0,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(16,'Grav-O-Bomb 3000','After a 2 second delay, pull enemies toward the center of an area and deal 550 (262 + 4% per level) damage.',110,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Curse of the Worgen','Use certain Abilities to shapeshift between a Human and a Worgen. While Human, your Basic Attack is ranged. While Worgen, your Basic Attack is melee but deals 40% more damage and you gain 10 armor, taking 10% less damage.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Razor Swipe','Swipe towards the area in front of you for 349 (166 + 4% per level) damage. Human Form: Gilnean Cocktail',3,'Q','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Gilnean Cocktail','Hurl a flask that deals 130 (62 + 4% per level) damage to the first enemy hit and explodes for 518 (246 + 4% per level) damage to enemies in a cone behind them. Worgen Form: Razor Swipe',10,'Q','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Inner Beast','Gain 50% Attack Speed for 3 seconds. Basic Attacks refresh this duration.',16,'W','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Disengage','Roll away and shapeshift into a Human. Human Form: Darkflight',5,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Darkflight','Shapeshift into a Worgen and leap at an enemy dealing 193 (92 + 4% per level) damage. Worgen Form: Disengage',5,'E','10');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Go for the Throat','Leap at an enemy Hero and shapeshift into a Worgen, slashing for 651 (355 + 4% per level) total damage. If this kills them, the Ability can be used a second time within 10 seconds for free.',80,'R','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(17,'Marked for the Kill','Shapeshift into a Human and fire a shot hitting the first enemy Hero in its path, dealing 215 (190 + 4% per level) damage. For 5 seconds, their Armor is lowered by 25, taking 25% more damage. Each time Greymane damages the Marked Hero, the duration is refreshed.',40,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(18,'Life Tap','Gul\'dan does not regenerate Mana. Activate to restore 25% mana.',0.5,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(18,'Fel Flame','Release a wave of flame, dealing 483 (209 + 4.5% per level) damage to enemies.',1.5,'Q','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(18,'Drain Life','Drain the life from an enemy over 3 seconds, dealing 290 (138 + 4% per level) damage per second and healing Gul\'dan for 377 (179 + 4% per level) Health per second.',10,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(18,'Corruption','Call forth three bursts of shadow energy, dealing 492 (214 + 4.5% per level) damage over 6 seconds. Stacks 3 times.',14,'W','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(18,'Horrify','After a short delay, deal 263 (125 + 4% per level) damage and fear enemy Heroes in the area for 2 seconds.',100,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(18,'Rain of Destruction','Summon a rain of meteors in an area for 7 seconds. Each meteor deals 362 (172 + 4% per level) damage in a small area.',100,'R','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(19,'Betrayer\'s Thirst','Passive: Basic Attacks heal for 30% of damage dealt and reduce your Ability cooldowns by 1 second.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(19,'Dive','Dive at the target, dealing 145 (69 + 4% per level) damage and flipping to the other side of the target.',6,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(19,'Sweeping Strike','Dash towards target point, dealing 261 (124 + 4% per level) damage to enemies along the way.HItting an enemy increases your Basic Attack damage by 35% for 3 seconds.',8,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(19,'Evasion','Evade enemy Basic Attacks for 2.5 seconds.',15,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(19,'Metamorphosis','Transform into Demon Form at the target location, dealing 101 (48 + 4% per level) damage in the area. Temporarily increase your maximum Health by 439 (208 + 4% per level) for each Hero hit. Lasts for 18 seconds.',120,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(19,'The Hunt','Charge to target unit, dealing 550 (262 + 4% per level) damage on impact and stunning for 1 second.',60,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(20,'Frostbite','All abilities Chill targets, slowing Movement Speed by 25% and amplifying damage from your abilities by 50%. Lasts 4 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(20,'Frostbolt','Deal 351 (167 + 4% per level) damage and Chill the target.',4,'Q','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(20,'Blizzard','Bombard an area with 3 waves of ice, dealing 312 (148 + 4% per level) damage each. Damaged enemies are Chilled.',15,'W','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(20,'Cone of Cold','Deal 504 (204 + 4% per level) damage and Chill targets.',10,'E','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(20,'Ring of Frost','After a 1.5 second delay, create a Ring of Frost in an area that deals 680 (323 + 4% per level) damage and roots enemies for 3 seconds. The ring persists for 3 seconds afterward, Chilling any enemies who touch it.',80,'R','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(20,'Summon Water Elemental','Summons a Water Elemental at target location. The Water Elemental\'s Basic Attacks do 171 (82 + 4% per level) damage, splash for 25% damage and Chill. Can reactivate the Ability to retarget the Water Elemental. Lasts 20 seconds.',80,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(21,'Iron Skin','Gain a Shield that absorbs 1344 (638 + 4% per level) damage for 4 seconds. While this Shield is active, you are Unstoppable.',20,'D','25');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(21,'Punish','Step forward dealing 248 (118 + 4% per level) damage and slowing enemies by 60% decaying over 2 seconds.',8,'Q','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(21,'Condemn','After 1 second, you pull nearby enemies toward you, stunning them for 0.25 seconds and dealing 121 (58 + 4% per level) damage.',10,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(21,'Shield Glare','Deal 130 (62 + 4% per level) damage to enemies and cause them to miss Basic Attacks for 1.5 seconds.',12,'E','45');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(21,'Falling Sword','You leap towards an area. While in the air, you can steer the landing location by moving. After 2 seconds you land, dealing 800 (356 + 4% per level) damage to nearby enemies and knocking them into the air.',80,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(21,'Blessing Shield','Deal 250 (119 + 4% per level) damage and stun the first enemy hit for 1.5 seconds. Blessed Shield then bounces to 2 nearby enemies, dealing 125 (60 + 4% per level) damage and stunning them for 0.75 seconds.',60,'R','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(22,'Verdant Spheres','Activate to make your next Basic Ability more powerful.',6,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(22,'Flamestrike','After 1 second, deal 702 (302 + 4% per level) damage in an area. Verdant Spheres increases the radius by 50%.',7,'Q','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(22,'Living Bomb','Deal 553 (252 + 4% per level) damage over 3 seconds to an enemy, then they explode dealing 303 (138 + 4% per level) damage to all nearby enemies. Other Heroes damaged by this explosion are also affected by Living Bomb, though the secondary explosions cannot spread. Verdant Spheres makes this Ability cost no Mana and have no cooldown.',10,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(22,'Gravity Lapse','Stun the first enemy hit for 1 seconds. Verdant Spheres causes Gravity Lapse to stun the first 3 enemies hit and increases the stun duration by 50%.',14,'E','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(22,'Pyroblast','After 2 seconds, cast a slow-moving fireball that deals 2150 (851 + 4% per level) damage to an enemy Hero and 1075 (426 + 4% per level) damage to enemies nearby.',100,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(22,'Phoenix','Launch a Phoenix to an area, dealing 171 (82 + 4% per level) damage to enemies along the way. The Phoenix persists for 7 seconds, attacking enemies for 171 (82 + 4% per level) damage and splashing for 50%.',60,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(23,'Assimilation','Gain 10% of damage dealt from Basic Attacks and Abilities as Shields for 6 seconds. Shield amount gained doubled against Heroes.Current maximum: 2200 (1045 + 4% per level)',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(23,'Ravage','Leap to a target, dealing 500 (238 + 4% per level) damage. If this kills the target, its cooldown is instantly reset.',8,'Q','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(23,'Impaling Blades','After 1.25 seconds, deal 550 (262 + 4% per level) damage to enemies within the target area, stunning them for 1 second.',12,'W','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(23,'Primal Grasp','Pulls enemies within the target area towards you, dealing 242 (115 + 4% per level) damage.',10,'E','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(23,'Summon Ultralisk','Summon an Ultralisk that attacks the target to deal 200 (95 + 4% per level) damage. Attacks splash to nearby enemies for 50% damage. Can reactivate the Ability to retarget the Ultralisk. Lasts for 20 seconds.',70,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(23,'Maelstrom','',90,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(24,'Iron Fists','Every 3rd Basic Attack deals 125% bonus damage and gives 30% increased Move Speed for 2 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(24,'Radiant Dash','Jump to an ally or enemy. Enemies are immediately hit with a Basic Attack.',12,'Q','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(24,'Breath of Heaven','Heal nearby Heroes for 611 (290 + 4% per level) and give them 10% Movement Speed for 3 seconds.',8,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(24,'Deadly Reach','Your next Basic Attack increases your Attack Speed and Attack Range by 100% for 2 seconds.',10,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(24,'Seven-Sided Strike','Become Invulnerable and strike 7 times over 1.81 seconds. Each strike hits the highest Health nearby Hero for 7% of their maximum Health.',50,'R','77');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(24,'Divine Palm','Protect an allied Hero from death, causing them to be healed for 2501 (1187 + 4% per level) if they take fatal damage in the next 3 seconds.',60,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'Undying','Become a ghost when you die, and resurrect upon reaching full Health. Your Abilities and Talents don\'t do damage while dead, but will still heal you for 50% of their normal amount, causing you to cheat death.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'Ghastly Swing','Swing in front of you to slow enemies by 40% for 2.5 seconds.',8,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'Skeletal Swing','Swing in front of you to deal 255 (121 + 4% per level) damage and slow enemies by 40% for 2.5 seconds. Deals double damage to non-Heroes and non-Structures.',8,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'Drain Essence','Throw out a chain, attaching to the first enemy Hero hit healing you for up to 12.5% of your maximum Health over 4 seconds as long as you remain close to the enemy. You drain more essence the longer you remain connected.',11,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'Drain Hope','Grab an enemy Hero\'s soul, dealing up to 20% of their maximum Health as damage and healing you for up to 20% of your maximum Health while you are nearby, over 4 seconds. You are slowed by 20% while this is active.',11,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'Wraith Walk','Separate from your body, becoming Unstoppable and gaining Movement Speed accelerating up to 50% over 2.5 seconds. When Wraith Walk ends or is canceled, your body jumps to your wraith.',14,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'Entomb','Create an unpathable tomb in front of you for 4 seconds.',50,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(25,'March of the Black King','Become Unstoppable and swing your mace three times, healing yourself for 7.03% of your maximum Health for each enemy Hero hit and dealing 401 (191 + 4% per level) damage.',80,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(26,'Fast Feet','Upon taking damage, gain 10% Movement Speed for 1 second.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(26,'Healing Brew','Heal lowest Health ally (prioritizing Heroes) for 430 (204 + 4% per level) Health.',3,'Q','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(26,'Cloud Serpent','Summon a Cloud Serpent on target allied Hero that automatically attacks nearby enemies, doing 64 (31 + 4% per level) damage per attack. Heroes can only have 1 Cloud Serpent at a time. Lasts for 8 seconds.',10,'W','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(26,'Blinding Wind','Throw a cloud of Blinding Wind at the 2 nearest enemies (prioritizing Heroes), dealing 290 (138 + 4% per level) damage. Affected targets miss all Basic Attacks for the next 2 seconds.',10,'E','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(26,'Jug of 1,000 Cups','Rapidly tosses brew to the most injured nearby allies, prioritizing Heroes, restoring a total of 3576 (1698 + 4% per level) Health over 6 seconds.',70,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(26,'Water Dragon','Summon a Water Dragon that after a delay hits the nearest enemy Hero and all enemies near them, dealing 697 (318 + 4% per level) damage and slowing their Movement Speed by 70% for 4 seconds.',45,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(27,'Critical Mass','Getting a Takedown will refresh the cooldown on all of your Abilities.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(27,'Magic Missiles','Fire three missiles toward an area, each dealing 266 (151 + 3% per level) damage to the first enemy hit. These missiles do 50% damage to structures.',3,'Q','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(27,'Arcane Orb','Fire an orb that powers up as it travels, dealing 244 (135 + 3% per level) damage to the first enemy hit. The amount of damage dealt is increased the further it travels, up to 732 (405 + 3% per level) damage.',8,'W','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(27,'Teleport','Teleport a short distance instantly.',5,'E','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(27,'Disintegrate','Channel a powerful beam, dealing 440 damage over 2.5 seconds to enemies while they are in it. The direction of the beam changes with your mouse cursor position.',30,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(27,'Wave of Force','Knock away all enemies from an area and deal 425 (168 + 5% per level) damage.',20,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Viking Hoard','Gathering a Regeneration Globe with a Viking permanently increases all their Health Regeneration by 0.5 per second.Current Bonus: 1.5 Regen per second.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Mortar','Fires a mortar at the targeted location, dealing 450 (214 + 4% per level) damage in a large area.',9,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Spin To Win!','Activate to have each Viking deal 222 (106 + 4% per level) damage to nearby enemies.',10,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Norse Force!','All Vikings gain a 242 (115 + 4% per level) to 483 (229 + 4% per level) point Shield, increasing in strength for each Viking alive. Lasts 4 seconds.',30,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Jump!','Makes all Vikings Invulnerable and able to pass over enemies for 1.5 seconds.',30,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Nordic Attack Squad','Activate to have all Viking Basic Attacks deal bonus damage equal to 1% of a Hero\'s maximum Health for 5 seconds.',30,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Viking Bribery','Enemy Minions or captured Mercenaries killed near your Hero grant you stacks of Viking Bribery. Use 40 stacks to bribe target Mercenary, instantly defeating them. Does not work on Bosses. Maximum stacks available: 100.Current number of Viking Bribery stacks:',0,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Play Again!','Summon, fully heal, and revive all Lost Vikings at target location after a Viking channels for 2 seconds. Only one Viking may attempt to summon at a time.',80,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(28,'Longboat Raid!','Hop into an Unstoppable Longboat that fires at nearby enemies for 246 (117 + 4% per level) damage per second and can fire a mortar that deals 450 (214 + 4% per level) damage in an area. The boat has increased Health for each Viking inside. If the boat is destroyed by enemies, all Vikings are stunned for 1.5 seconds. Lasts 15 seconds.Requires all surviving Vikings to be nearby.',90,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(29,'Caduceus Reactor','Regenerate 3.12% of your maximum Health every second after not taking damage for 4 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(29,'Redirect Healing Beam','Redirect Healing Beam to another target. Use on self to cancel channeling.',0.5,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(29,'Healing Beam','Heal an ally for 421 (200 + 4% per level) health a second as long as they are in range. Reactivate to switch targets, or activate your Trait to cancel the channel.',0.5,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(29,'Safeguard','Grant target ally Resistant, reducing damage taken by 25% for 3 seconds.',15,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(29,'Displacement Grenade','Fire a grenade that can be manually detonated, dealing 220 (210 + 4% per level) damage, knocking enemies away.',12,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(29,'Stim Drone','Grant an allied Hero 75% Attack Speed and 25% Movement Speed for 10 seconds.',90,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(29,'Medivac Dropship','Target a location for a Medivac transport. For up to 10.5 seconds before takeoff, allies can right-click to enter the Medivac.',50,'R','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(30,'Nature\s Toxin','Passive: Your Basic Attacks and damaging Abilities poison their target, dealing 71 (34 + 4% per level) damage a second for 3 seconds. Every additional application increases the duration by 3 seconds, up to a maximum of 9 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(30,'Noxious Blossom','After 0.5 seconds, cause an area to explode with pollen dealing 351 (167 + 4% per level) damage.',8,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(30,'Crippling Spores','Enemies currently afflicted by Nature\'s Toxin have its duration increased by 3 seconds and are slowed by 40% decaying over 3 seconds.',10,'W','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(30,'Wisp','Spawn a Wisp to scout an area. Can be redirected once active. Lasts 45 seconds.',30,'E','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(30,'Relocate Wisp','Orders your Wisp to move to a new location.',5,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(30,'Thornwood Vine','Send forth vines that deal 360 (171 + 4% per level) damage to all enemies in a line. Can hold 3 charges.',15,'R','35');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(30,'Leaping Strike','Leap over an enemy, slowing them by 80% for 0.35 seconds and attacking for 594 (286 + 4% per level) damage. Has 2 charges.',20,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(31,'Innervate','Grant allied Hero 20% of their maximum Mana over 5 seconds. While affected by Innervate, their Basic Ability cooldowns recharge 50% faster.',30,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(31,'Regrowth','Heal target ally for 329 (156 + 4% per level) Health instantly and an additional 1102 (523 + 4% per level) Health over 15 seconds.',5,'Q','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(31,'Moonfire','Deal 231 (110 + 4% per level) damage to enemies within target area and reveals them for 2 seconds.',3,'W','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(31,'Entangling Roots','Root enemies within the target area for 1.5 seconds, and deals 257 (122 + 4% per level) damage over the duration. Affected area grows over 3 seconds.',10,'E','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(31,'Tranquility','Heals 176 (84 + 4% per level) Health per second to nearby allies over 10 seconds.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(31,'Twilight Dream','After a short delay, deal 820 (389 + 4% per level) damage in a large area around you, silencing enemies making them unable to use Abilities for 3 seconds. Also passively increases your Mana Regeneration by 1.5.',90,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(32,'Raven Form','Instead of mounting, Medivh can transform into a raven, increasing Movement Speed by 20%. While transformed, Medivh can see and fly over all terrain and is immune to all effects.',4,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(32,'Arcane Rift','Launch a rift that deals 208 (190 + 4% per level) damage to enemies in its path. If an enemy Hero is hit, reduce its cooldown by 5 seconds and refund 50 Mana.',7,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(32,'Force of Will','Protect an allied Hero from all damage for 1.5 seconds.',5,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(32,'Portal','Create a set of portals between you and the target location, allowing allies to teleport between both. The portals last 6 seconds.',20,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(32,'Poly Bomb','Polymorph an enemy Hero, suppressing their attacks and Silencing them for 2 seconds. On expiration, Poly Bomb spreads to other nearby enemy Heroes.',40,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(32,'Ley Line Seal','After 0.5 seconds, unleash a wave of energy that imprisons enemy Heroes in Stasis for 3 seconds.',80,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(33,'Second Wind','Restore 112 (54 + 4% per level) Health per second when you have not taken damage for 4 seconds. When below 40% Health, increased to 224 (107 + 4% per level) Health per second.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(33,'Storm Bolt','Throw a hammer, dealing 242 (115 + 4% per level) damage to the first enemy hit and stunning it for 1.5 seconds.',10,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(33,'Thunder Clap','Deals 211 (100 + 4% per level) damage and slows enemies by 25% for 2.5 seconds.',8,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(33,'Dwarf Toss','Leap to target location, dealing 130 (62 + 4% per level) damage to enemies on landing.',10,'E','55');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(33,'Avatar','Transform for 20 seconds, gaining 2240 (1063 + 4% per level) Health and causing your Basic Attacks to stun enemies.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(33,'Haymaker','Stun target enemy Hero, and wind up a punch dealing 699 (332 + 4% per level) damage and knocking the target back, hitting enemies in the way for 699 (332 + 4% per level) damage and knocking them aside.',40,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(34,'Spawn Egg','Place an Egg at target location, revealing the nearby area. Upon dying, you respawn at the Egg after 5 seconds. If your egg is killed, you are revealed to enemies for 15 seconds. You only grant 25% of a Hero\'s experience upon dying.',15,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(34,'Slime','Deal 180 (86 + 4% per level) damage and applies Slime on nearby enemies for 8 seconds, slowing enemies by 20%. Does 450 (214 + 4% per level) damage to enemies who are already Slimed.',4,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(34,'Pufferfish','Spit out a Pufferfish at the target point. After 3 seconds, the fish will blow up for 855 (406 + 4% per level) damage. Enemies can attack the fish to prevent it from exploding.',15,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(34,'Safety Bubble','Becomes Invulnerable for 2 seconds. While active, you cannot attack or use abilities.',14,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(34,'March of the Murlocs','Command a legion of Murlocs to march in a target direction, each one leaping onto the first enemy Hero or Structure they find. Each Murloc deals 209 (99 + 0% per level) damage and slow its target by 15% for 5 seconds. Does half damage to Structures.',100,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(34,'Octo-Grab','Summon an octopus to stun target enemy Hero for 3.06 seconds while you hit them for 1 damage a second.',50,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(35,'Voodoo Ritual','Your Basic Attacks and Abilities poison Non-Heroic enemies, causing them to take 145 (69 + 0% per level) additional damage over 6 seconds. If a Minion dies while poisoned by Voodoo Ritual, you permanently gain 4 Health and 1 Mana.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(35,'Corpse Spiders','Hurl a jar of spiders that deals 110 (52 + 4% per level) damage. If it hits at least one enemy, create 3 Corpse Spiders that attack for 77 (37 + 4% per level) damage. Spiders last for 4 seconds.',9,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(35,'Zombie Wall','After 1 second, create a ring of Zombies surrounding the target area that deal 62 (30 + 4% per level) damage and last for 3 seconds.',14,'W','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(35,'Plague of Toads','Create a wave of 3 Toads that explode on contact, dealing 277 (126 + 4% per level) damage over 6 seconds. Holds 2 charges.',8,'E','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(35,'Gargantuan Stomp','Order your Gargantuan to stomp, dealing 331 (158 + 4% per level) damage to nearby enemies.',5,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(35,'Gargantuan','Summon a Gargantuan that guards an area for 20 seconds. Deals 331 (158 + 4% per level) damage to nearby enemies when summoned, attacks for 428 (203 + 4% per level) damage, and can be ordered to stomp.',70,'R','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(35,'Ravenous Spirit','Channel a Ravenous Spirit that deals 412 (196 + 4% per level) damage per second. Cannot move while channeling. Lasts for 8 seconds.',90,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(36,'Permanent Cloak, Sniper','Gain Stealth when out of combat for 3 seconds. Taking damage, attacking, using Abilities, or channeling reveals you.Basic Attack range is 20% further than other ranged Heroes, and you see 10% further than other Heroes.',3,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(36,'Snipe','Deals 588 (279 + 4% per level) damage to the first enemy hit.',6,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(36,'Pinning Shot','Deal 242 (115 + 4% per level) damage to an enemy and slow it by 30% for 2.25 seconds.',12,'W','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(36,'Holo Decoy','Create a Decoy for 5 seconds that appears to attack enemies. Using this Ability does not break Cloak.',15,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(36,'Triple Tap','Locks in on the target Hero, then fires 3 shots that hit the first Hero or Structure they come in contact with for 741 (352 + 4% per level) damage each.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(36,'Precision Strike','After a 1.5 second delay, deals 1000 (475 + 4% per level) damage to enemies within an area. Unlimited range.',60,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(37,'Advanced Optics','Basic Attack range is 20% further than other ranged Heroes, and you see 10% further than other Heroes.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(37,'Penetrating Round','Deals 526 (250 + 4% per level) damage and knocks enemies back.',12,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(37,'Inspire','Gain 30% bonus Attack Speed for 6 seconds. Nearby allies gain half of the bonus.',10,'W','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(37,'Adrenaline Rush','Automatically activates to heal for 965 (458 + 4% per level) when you are below 30% Health.',40,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(37,'Hyperion','Order the Hyperion to make a strafing run dealing 145 (69 + 4% per level) damage a second, hitting up to 4 enemies. Also occasionally fires its Yamato Cannon on Structures for 1740 (826 + 4% per level) damage. Lasts 12 seconds.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(37,'Raynor\'s Raiders','Summon two Stealthed Banshees that attack an enemy. Each Banshee deals 95 (45 + 4% per level) damage a second and lasts 22 seconds. Can reactivate the Ability to retarget the Banshees.',80,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(38,'Ghost Wolf','Instead of using a mount, you transform into a Ghost Wolf with 30% increased Movement Speed. Basic Attacks in Ghost Wolf cause you to lunge at your target and deal 75% bonus damage. Dealing damage, using Abilities, and channeling cancels Ghost Wolf form.',0.5,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(38,'Chain Heal','Heal an ally for 816 (387 + 4% per level) Health, then heal up to two other nearby allies for 408 (194 + 4% per level) Health each.',9,'Q','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(38,'Lightning Shield','Imbue an ally with lightning dealing 158 (75 + 4% per level) damage a second to nearby enemies. Last 5 seconds.',8,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(38,'Earthbind Totem','Create a totem that slows nearby enemies by 35%. The totem has 476 (226 + 4% per level) Health and lasts for 8 seconds.',15,'E','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(38,'Bloodlust','Grant nearby allied Heroes 40% Attack Speed and 30% Movement Speed. Lasts for 10 seconds.',90,'R','70');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(38,'Ancestral Healing','After 1 second, heal an allied Hero for 3401 (1615 + 4% per level) Health.',100,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Misha, Follow!','Activate to command Misha to stay by your side. If Misha dies, she will revive in 31 (15 + 4% per level) seconds.',0.5,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Misha, Attack!','Activate to command Misha to attack your enemies. If Misha dies, she will revive in 31 (15 + 4% per level) seconds.',0.5,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Misha, Focus!','Command Misha to attack a specific enemy or move to a point and wait.',0.25,'1','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Spirit Swoop','Deal 309 (147 + 4% per level) damage to enemies in a line, slowing them by 30% for 2 seconds.',7,'Q','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Misha, Charge!','Misha charges in a line, dealing 130 (62 + 4% per level) damage and stunning enemies for 1.25 seconds.',10,'W','45');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Mend Pet','Heal Misha for 1305 (620 + 4% per level) Health over 5 seconds.',10,'E','55');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Bestial Wrath','Increases Misha\'s Basic Attack damage by 150% for 12 seconds.',50,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(39,'Unleash the Boars','Release a herd of boars that track down all enemy Heroes in a direction, dealing 242 (115 + 4% per level) damage, revealing, and slowing enemies by 40% for 5 seconds.',60,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(40,'Artillery','Basic Attacks deal 30% more damage to distant enemies.',5,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(40,'Spider Mines','Create 3 mines that deal 211 (100 + 4% per level) damage and slow enemies by 25% for 1.5 seconds.',14,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(40,'Concussive Blast','Deals 309 (147 + 4% per level) damage and pushes enemies away.',12,'W','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(40,'Siege Mode','Become immobile to increase Basic Attack range by 90%, deal 25% splash damage, and deal 30% bonus damage to Minions and Structures.',2,'E','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(40,'Napalm Strike','Deals 360 (171 + 4% per level) damage on impact, and leaves a napalm area that deals 110 (52 + 4% per level) damage per second. Lasts for 4 seconds.',6,'R','35');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(40,'Blunt Force Gun','Fire a missile across the battlefield, dealing 800 (380 + 4% per level) damage to enemies in its path.',70,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(41,'Fury','Use Fury instead of Mana, which is gained by taking or dealing damage. Using a Basic or Heroic Ability grants 10% Movement Speed for 4 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(41,'Ancient Spear','Throw out a spear that pulls you to the first enemy hit, dealing 380 (180 + 4% per level) damage and briefly stunning them. If this hits an enemy, generate 40 Fury.',13,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(41,'Seismic Slam','Deals 421 (200 + 4% per level) damage to the target enemy, and 106 (50 + 4% per level) to enemies behind the target.',1,'W','25');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(41,'Whirlwind','Deals 875 (415 + 4% per level) damage to nearby enemies over 3 seconds, and heals for 20% of damage dealt. Healing tripled versus Heroes.',4,'E','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(41,'Leap','Leap into the air, dealing 270 (128 + 4% per level) damage to nearby enemies, and stunning them for 1.5 seconds.',70,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(41,'Wrath of the Berserker','Increase damage dealt by 40%. Reduce the duration of silences, stuns, slows, roots, and polymorphs against you by 50%. Lasts 15 seconds, and extends by 1 second for every 10 Fury gained.',45,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(42,'Vile Gas','When damaged, Stitches emits a gas cloud that persists for 4 seconds. Enemies who enter it are poisoned for 40 (19 + 4% per level) damage per second for 3 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(42,'Hook','Pull the first enemy hit towards you, temporarily stunning them and dealing 200 (95 + 4% per level) damage.',16,'Q','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(42,'Slam','Deal 176 (84 + 4% per level) damage to enemies within the target area.',8,'W','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(42,'Devour','Deal 699 (332 + 4% per level) damage to Minions or 250 (119 + 4% per level) damage to Heroes. Restores 19.92% of your maximum Health.',20,'E','55');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(42,'Putrid Bile','Emit bile that deals 82 (39 + 4% per level) damage per second to enemies within, slowing them by 35%. You gain 20% Movement Speed while emitting bile. Lasts 8 seconds.',60,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(42,'Gorge','Consume an enemy Hero, trapping them for 4 seconds. When Gorge ends, the enemy Hero takes 601 (285 + 4% per level) damage. The trapped Hero cannot move or act and doesn\'t take damage from other sources. Cannot be used on massive Heroes.',80,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(43,'Black Arrows','Basic Attacks and Abilities stun Minions, Mercenaries, and Towers for 1 second.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(43,'Withering Fire','Shoot the closest enemy for 106 (50 + 4% per level) damage, preferring Heroes. Stores 5 charges.Gain 1 charge on nearby enemy Minion or Mercenary deaths, and 3 charges on nearby enemy Hero deaths.',2,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(43,'Shadow Dagger','Deals 82 (39 + 4% per level) damage and an additional 325 (154 + 4% per level) damage over 2 seconds to target unit. The effect spreads to nearby targets.',10,'W','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(43,'Haunting Wave','Send forth a wave of banshees dealing 250 (119 + 4% per level) damage to all targets. Reactivate to teleport to the banshees\' location.',11,'E','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(43,'Wailing Arrow','Shoot an arrow that can be reactivated to deal 500 (238 + 4% per level) damage and Silencing enemies in an area making them unable to use Abilities for 2.5 seconds. The arrow detonates automatically when it reaches maximum range.',90,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(43,'Mind Control','After 1 second cast, take control of an emeny Hero\'s movement and prevent them for doing anything else. Channel last 2.5 seconds.',60,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(44,'Oracle','Greatly increases your vision radius and allows you to detect enemy Heroes. Lasts for 5 seconds. Passive: Tassadar\'s Basic Attack is a Distortion Beam that slows enemy units by 20%.',30,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(44,'Plasma Shield','Grant a Shield that absorbs 572 (+4% per level) damage over 8 seconds. Heroes gain 20% Life Steal from Basic Attacks while Shielded',8,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(44,'Psionic Storm','Deal 91 (+4% per level) damage per second to enemies in target area for 3 seconds. Damage increases by 12% for each consecutive instance of damage.',8,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(44,'Dimensional Shift','Become invulnerable and fully invisible for 1.5 seconds. While shifted, he has 25% increased Movement Speed.',30,'E','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(44,'Archon','Tassadar transforms into an Archon and gains a Plasma Shield. His Basic Attacks deal 182 (+4% per level) damage, slow the target by 40% for 1 second and splashs for 91 (+4% per level) damage to enemies within 2.5 range. Lasts for 10.5 seconds. Passive: Archon refreshes the cooldown of Dimensional Shift.',100,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(44,'Force Wall','Create a wall that blocks all units from moving through it for 2.5 seconds. Passive: Increases the slow amount of Distortion Beam to 30%.',12,'R','35');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(45,'Frostwolf Resilience','Dealing damage with Abilities grants 1 stack of Frostwolf Resilience. At 5 stacks, you are instantly healed for 660 (314 + 4% per level) Health.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(45,'Chain Lightning','Deal 391 (186 + 4% per level) damage to an enemy and half that amount to 2 nearby enemies.',6,'Q','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(45,'Feral Spirit','Send out a Feral Spirit that deals 336 (160 + 4% per level) damage to enemies in its path. Upon hitting an enemy Hero, the wolf stops and roots that hero in place for 1 second.',12,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(45,'Windfury','Increase your Movement Speed by 30% for 4 seconds. Your next 3 Basic Attacks occur 100% faster.',12,'E','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(45,'Sundering','After a short delay, sunder the earth in a long line, dealing 611 (290 + 4% per level) damage and shoving enemies to the side, stunning them for 1.0 seconds.',80,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(45,'Earthquake','Summon a massive Earthquake that pulses every 2 seconds. Each pulse slows all enemies in the area by 70%, and deals 110 (52 + 4% per level) damage to enemy Heroes. Does 3 pulses.',100,'R','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(46,'Reload','You can Basic Attack while moving, and after attacking 10 times you need to reload over 0.75 seconds. You can manually reload early by activating Reload.',1,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(46,'Blink','Dash towards an area. Stores 3 charges.',6,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(46,'Melee','Deal 557 (265 + 4% per level) damage to a nearby enemy, prioritizing Heroes. Gain 5% Pulse Bomb charge when damaging an enemy, and 10% against Heroes.',8,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(46,'Recall','Return to the position you were at 3 seconds ago, refill your ammo, and remove all negative status effects from yourself.',26,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(46,'Pulse Bomb','Fire a short range bomb that attaches to enemy units if you hit them. The bomb explodes after 1.5 seconds dealing 1226 (444 + 5.5% per level) damage to them and 613 (222 + 5.5% per level) damage to other nearby enemies.This Ability is slowly charged over time by dealing damage to enemies with Basic Attacks and Melee.',0,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Minigun','Activate to have your Basic Attacks against Heroes deal bonus damage equal to 2% of their maximum Health. Lasts 3 seconds.',12,'','25');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Overkill','Deal 1414 (671 + 4% per level) damage to the target and 691 (328 + 4% per level) damage to nearby targets over 4 seconds. Reactivate to select a new target. Can move and use Abilities while channeling.',15,'Q','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Annihilate','Fire the Odin\'s cannons in a straight line, dealing 430 (204 + 4% per level) damage to everything in the path.',7,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Frag Grenade','Lob a grenade that deals 561 (267 + 4% per level) damage, knocking enemies away.',10,'W','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Ragnarok Missiles','Launches a volley of missiles at target area, dealing 290 (138 + 4% per level) damage and slowing enemy Movement Speed by 30% for 2 seconds.',7,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Run and Gun','Dash a short distance.',10,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Thrusters','Dash in target direction.',8,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Drakken Laser Drill','Call down a Laser Drill to attack nearby enemies, dealing 312 (148 + 4% per level) damage every second. Reactivate to assign a new target. Lasts 22 seconds.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(47,'Commandeer Odin','Call down an Odin to pilot. The Odin deals increased Damage, has 60% increased Basic Attack range, and uses different Abilities. The Odin has 25 Armor and lasts 23 seconds.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(48,'Archangel\'s Wrath','When you die, become invulnerable and explode for 1206 (572 + 4% per level) damage after 3.5 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(48,'El\'Druin\'s Might','Deals 242 (115 + 4% per level) damage to enemies within target area, slowing them by 25%. Reactivating will teleport you to the blade and slow nearby enemies by 25%.',11,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(48,'Righteousness','Shields you for 702 (33 + 4% per level) damage and nearby allies for 281 (134 + 4% per level) damage for 4 seconds.',10,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(48,'Smite','Rake target area for 316 (150 + 4% per level) damage. Allies moving through the targeted area gain 25% increased Movement Speed for 2 seconds.',6,'E','45');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(48,'Judgment','After 0.75 seconds, charge an enemy Hero dealing 220 (104 + 4% per level) damage and stunning them for 1.5 seconds. Nearby enemies are knocked away and take 110 (52 + 4% per level) damage.',80,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(48,'Sanctification','After 0.5 seconds create a field of holy energy that makes allied Heroes Invulnerable. Lasts 3 seconds.',70,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(49,'Hunter\'s Mark','Make an enemy Vulnerable, increasing all damage taken by 25% and revealing them for 4 seconds. Cannot be used on Structures.',20,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(49,'Light of Elune','Heal yourself for 351 (162 + 4% per level). If cast on an ally, also heals them for 702 (323 + 4% per level) Health.',8,'Q','45');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(49,'Sentinel','Send an Owl that travels across the battleground revealing its path. Deals 380 (180 + 4% per level) damage to the first enemy Hero hit and reveals them for 5 seconds.',18,'W','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(49,'Lunar Flare','After a short delay, deal 450 (214 + 4% per level) damage and stun enemies in the target area for 0.75 seconds.',12,'E','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(49,'Shadowstalk','Stealth all allied Heroes and heal them for 525 (240 + 4% per level) over 8 seconds. At the conclusion of Shadowstalk, they receive a burst of 208 (95 + 4% per level) healing.',60,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(49,'Starfall','Deal 200 (91 + 4% per level) damage per second and slow enemies by 20% in an area. Lasts 8 seconds.',80,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(50,'Eternal Devotion','Upon dying, become an Invulnerable spirit for up to 8 seconds. While in spirit form, you can heal allies with Flash of Light.',180,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(50,'Holy Light','Heal an ally for 936 (445 + 4% per level) Health.',12,'Q','90');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(50,'Flash of Light','Heal an ally for 531 (252 + 4% per level) Health.',1.5,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(50,'Holy Radiance','Heal all allies in a line for 480 (228 + 4% per level) Health, dealing 351 (167 + 4% per level) damage to enemies.',12,'W','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(50,'Hammer of Justice','Deal 250 (119 + 4% per level) damage and stun the target for 1 second.',10,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(50,'Divine Shield','Make an allied Hero Invulnerable and increase their Movement Speed by 20% for 3 seconds.',90,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(50,'Divine Storm','Deal 410 (195 + 4% per level) damage and stun nearby enemies for 1.75 seconds.',80,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(51,'Hatred','Passive: Basic Attacks grant a stack of Hatred, up to 10. Each Hatred stack increases Basic Attack damage by 8% and Movement Speed by 1%. Last 6 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(51,'Hungering Arrow','Fire an arrow that deals 307 (146 + 4% per level) damage to the first target hit, then seeks up to 2 additional enemies dealing 176 (84 + 4% per level) damage. Can hit an enemy multiple times.',10,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(51,'Multishot','Deal 360 (171 + 4% per level) damage to enemies within the target area.',12,'W','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(51,'Vault','Dash to the target area. Your next Basic Attack within 2 second deals 6% increased damage per stack of Hatred.',10,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(51,'Strafe','Rapidly attack nearby visible enemies for 132 (63 + 4% per level) damage per hit, prioritizing heroes over minions. Valla is able to move and use Vault while strafing. Lasts for 4 seconds.',60,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(51,'Rain of Vengeance','Launch a wave of Shadow Beasts that deals 493 (234 + 4% per level) damage and stuns enemies in the target area for 0.5 seconds. Stores 2 charges.',50,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(52,'Raise Skeleton','When a nearby enemy Minion dies, it becomes a Skeletal Warrior that deals moderate damage and lasts up to 15 seconds. Up to 4 Skeletal Warriors can be active at once.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(52,'Bone Armor','Activate to gain a Shield equal to 25% of your maximum Health for 3 seconds.',30,'1','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(52,'Spectral Scythe','Summon a scythe at target location that travels toward you after a 1-second delay, damaging enemies in its path.',8,'Q','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(52,'Cursed Strikes','Once activated, your Basic Attacks over the next 4 seconds deal damage in a wide arc and reduce the Attack Speed of enemy Heroes and Summons hit by 40% for 2 seconds. Lasts for 4 seconds after being hit.',15,'W','65');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(52,'Bone Prison','After a 2-second delay, root target enemy in place for 1.75 seconds.',12,'E','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(52,'Poison Nova','After a short delay, release poisonous missiles that deal massive poison damage over 10 seconds to all enemies hit.',90,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(52,'Skeletal Mages','Summon 4 Skeletal Mages in a line that attack nearby enemies and slow them by 30% for 2 seconds. Lasts up to 15 seconds',70,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(53,'Creep Tumor','Lay a Creep Tumor that generates Creep. While on Creep, Zagara gains 20% additional attack range and both Zagara and her summons move 20% faster. Tumors last 240 seconds.',0,'D','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(53,'Baneling Barrage','Launch 1 Baneling that deals 200 (95 + 4% per level) splash damage.',10,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(53,'Hunter Killer','Summon a Hydralisk to attack a single target, dealing 149 (71 + 3% per level) damage per second. Lasts 8 seconds.',14,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(53,'Infested Drop','Bombard target area with a Zerg Drop Pod for 300 (171 + 3% per level) damage. The pod spawns 2 Roachlings that deal 53 (30 + 3% per level) damage per second and last for 8 seconds.',12,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(53,'Devouring Maw','Summon a Devouring Maw that devours enemies for 4 seconds. Devoured enemies cannot fight and take 176 (84 + 3% per level) damage per second.Usable on Unstoppable enemies.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(53,'Nydus Network','Passive: Creep spreads 25% farther. Passive: While on Creep, each Basic Attack educes all of Zagara\'s cooldowns by 1 second. Summon a Nydus Worm on Creep anywhere that Zagara has vision of. Zagara can enter a Nydus Worm and travel to any other Nydus Worm by right-cliking near it. While insde a Nydus Worm, Zagara regenerates 9.75% Health and Mana per second.',60,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(54,'Permanent Cloak','Gain Stealth when out of combat for 3 seconds. Taking damage, attacking, using Abilities, or channeling ends Permenent Cloak.',3,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(54,'Cleave','Deal 415 (197 + 4% per level) damage to nearby enemies.',6,'Q','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(54,'Singularity Spike','Flings a Singularity Spike that sticks to the first enemy hit. Deals 500 (238 + 4% per level) damage after 1 second and slows the enemy by 40% for 3 seconds.',12,'W','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(54,'Blink','Teleport to the target location. Using this Ability does not break cloak.',10,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(54,'Shadow Assualt','Your Basic Attacks cause you to charge at enemies and have 20% increased Attack Speed. Lasts for 6 seconds.',45,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(54,'Void Prison','Slows time in an area to a near standstill, making allies and enemies invulnerable and unable to act for 5 seconds. You are not affected.',100,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(55,'Sadism','Passive: Alarak deals 100% more Ability damage versus enemy Heroes.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(55,'Discord Strike','After a 0.5 second delay, enemies in front of Alarak take 384 (182 + 4% per level) damage and are silenced for 1.5 seconds.',8,'Q','55');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(55,'Telekinesis','Create a force, pushing yourself and all enemies hit from the targeted point towards the targeted direction. Deals 106 (50 + 4% per level) damage to enemies.',12,'W','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(55,'Lightning Surge','Deal 210 (100 + 4% per level) damage to an enemy and all enemies between you and the target. 75% of the damage dealt to enemy Heroes is returned as health.',6,'E','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(55,'Deadly Charge','After channeling, Alarak charges forward dealing 439 (208 + 4% per level) damage to all enemies in the path. Distance is increased based on the amount of time channeled, up to 1.625 seconds. Issuing a Move order while this is channeling will cancel it at no cost. Taking damage will interrupt the channeling.',60,'R','45');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(55,'Unleash Deadly Charge','Unleash your Deadly Charge.Issuing a move order while this is channeling will cancel the cast at no cost. Taking damage will interrupt the channeling.',0.25,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(55,'Counter-Strike','Alarak becomes Protected and channels for 1 second. If an enemy Hero attacked Alarak during that time, Alarak sends a shockwave forward that deals 579 (275 + 4% per level) damage.',30,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(56,'Bestow Hope','Passive: 40% of the damage you deal to Heroes and 8% dealt to non-Heroes is stored as energy. Bestow an allied Hero with Hope. While they remain near you, damage they deal causes you to gain energy. You can only have Bestow Hope to 1 ally at time. You can store up to 1107 (526 + 4% per level) energy.',1.5,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(56,'Sacred Sweep','Sweep the area with sacred power, dealing 176 (84 + 4% per level) damage to enemies and an additional 351 (167 + 4% per level) damage to enemies caught in the center.',8,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(56,'Ray of Heaven','Consume your stored energy and heal allied Heroes in the area for the amount of energy consumed.',4,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(56,'Detainment Strike','Deal 220 (104 + 4% per level) damage to the first enemy Hero hit and knock them back. If they collide with terrain, they are also stunned for 1.25 seconds and take an additional 220 (104 + 4% per level) damage.',14,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(56,'Crystal Aegis','Place an allied Hero into Stasis for 2 seconds. Upon expiration, Crystal Aegis deals 592 (281 + 4% per level) damage to all nearby enemies.',60,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(56,'Resurrect','Channel on the spirit of a dead ally for 3 seconds, bringing them back to life with 50% of their maximum health at the location where they died.',90,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(57,'Wall Ride','When moving alongside impassable battleground terrain and Structures, Lúcio can walk through other units, and his Movement Speed is increased by 20%. This effect stacks with other Movement Speed bonuses.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(57,'Soundwave','Deal damage to enemies in a cone-shaped area and knock them back.',7,'Q','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(57,'Crossfade','Play one of two tracks that passively provide allied Heroes with either a Speed Boost or a Healing Boost in a large radius around you. Activate Crossfade to swap tracks. Healing Boost: Restore a small amount of Health every second to Lúcio and nearby allied Heroes. Speed Boost: Increase the Movement Speed of Lúcio and nearby allied Heroes by 15%.',0,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(57,'Amp It Up','Raise Lúcio\'s Crossfade track volume for 3 seconds, amping Speed Boost to 45% increased Movement Speed, and significantly increasing the Healing rate of Healing Boost.',15,'E','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(57,'Sound Barrier','After 1 second, Lúcio and nearby allied Heroes gain a massive Shield that rapidly decays over the next 6 seconds.',70,'R','100');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(57,'Reverse Amp','Blast Lúcio\'s Crossfade track at enemy Heroes for 4 seconds, causing Healing Boost to inflict damage every second, and Speed Boost to Slow Movement Speed by 45%. Passive: Increase Amp It Up\'s duration to 4 seconds.',50,'R','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Molten Core','Channel on an allied or destroyed Fort or Keep to unleash your full power. You replace the Fort or Keep temporarily, gain new Abilities, and have 4156 Health that burns away over 18 seconds. When your Health is fully depleted, you return to your original form.',120,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Empower Sulfuras','Your next Basic Attack is instant, deals moderate damage in an area, and heals you for 20% of the damage dealt. Healing doubled versus Heroes. Molten Core: Molten Swing.. Stun and damage nearby enemies.',4,'Q','25');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Molten Swing','Swing your hammer in a wide arc, dealing moderate damage and stunning enemies for 1 second. Damage increased by 25% versus Minions and Mercenaries.',6,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Living Meteor','Summon a meteor at the target point that deals damage on impact, and then rolls in the target direction and deals additional damage every second for 1.75 seconds. Molten Core: Meteor Shower.. Drop a line of meteor impacts.',12,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Meteor Shower','Summon 3 meteors at the target point that fall in the target direction. Each meteor deals moderate damage and slows enemies by 25% for 2 seconds. Damage increased by 25% versus Minions and Mercenaries.',2.5,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Blast Wave','Ignite yourself or an ally, granting 25% Movement Speed for 1.5 seconds, then causing a fiery explosion that deals light damage to nearby enemies. Molten Core: Explosive Rune.. Cause a delayed explosion in a large area.',10,'E','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Explosive Rune','Create a rune that explodes after 1.5 seconds, dealing damage to non-Structure enemies in a circular area. Damage increased by 25% versus Minions and Mercenaries.',4,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Lava Wave','Release a wave of lava from your Core that travels down the targeted lane, dealing massive damage per second to non-Structure enemies in its path and instantly killing enemy Minions. Damge is doubled versus enemy Heroes.',120,'R','80');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(58,'Sulfuras Smash','Hurl Sulfuras at the target area. It lands after 0.75 seconds, dealing moderate damage. Enemies in the center take triple damage and are Stunned for 0.5 seconds.',60,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(59,'Advancing Strikes','Passive: Basic Attacks against enemy Heroes increase your Movement Speed by 25% for 2 seconds.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(59,'Mirror Image','Create 2 Mirror Images that deal 25% of your damage and have 50% of your current Health. Images last up to 18 seconds, and only two can be active at any one time. Mirror Image will remove most negative effects from Samuro.',18,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(59,'Critical Strike','Your next Basic Attack within 8 seconds will be a Critical Strike, dealing 50% increased damage. This also applies to Images, and does not break Wind Walk. Passive: You and your Images deal a Critical Strike on every 4th Basic Attack.',8,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(59,'Wind Walk','Enter Stealth for up to 8 seconds or until you attack, use an Ability, or take damage. While Stealthed, your Movement Speed is increased by 25% and you can pass through other units. Samuro is Unrevealable for the first 1 second of Wind Walk.',13,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(59,'Bladestorm','Become an Unstoppable whirlwind of death, dealing 548 (260 + 4% per level) damage per second to nearby enemies for 4 seconds.',110,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(59,'Illusion Master','Switch places with the target Mirror Image, removing most negative effects from Samuro and the target Mirror Image. Passive: You can control Mirror Images separately or as a group, and they deal an additional 10% of your damage.',6,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(60,'Heroic Strike','Every 18 seconds, Varian\'s next Basic Attack deals 279 (145 + 3.5% per level) bonus damage. Basic Attacks reduce this cooldown by 2 seconds.',18,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(60,'Lion\'s Fang','Create a shockwave that travels in a straight line, dealing 329 (156 + 4% per level) damage and slowing enemies by 30% for 1.5 seconds.',8,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(60,'Parry','Parry all incoming Basic Attacks for 0.75 seconds, reducing their damage by 100%.',15,'W','8');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(60,'Charge','Charge to the target enemy, dealing 110 (52 + 4% per level) damage and slowing them by 75% for 1 second.',14,'E','45');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(60,'Taunt','Force the target Hero to attack Varian for 1.25 seconds. Passive: Maximum Health increased by 60%.',16,'R','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(60,'Colossus Smash','Smash a target enemy, dealing 410 (195 + 4% per level) damage and making them Vulnerable for 3 seconds. Passive: Base Attack Damage increased by 75%. Passive: Maximum Health reduced by 10%.',20,'R','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(60,'Twin Blades of Fury','Basic Attacks reduce Heroic Strike\'s cooldown by 9 seconds, and increase Varian\'s Movement Speed by 30% for 2 seconds. Passive: Attack Speed increased by 100%. Passive: Base Attack Damage reduced by 25%.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(61,'Energy','Each time Zarya\'s Personal Barrier or Shield Ally absorbs 22 (11 + 4% per level) damage, her Energy is increased by 1. Each point of Energy increases Zarya\'s damage by 2%. After 0.5 seconds, Energy decays by 2.5 per second.',0,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(61,'Particle Grenade','Launch a particle grenade that deals 156 (74 + 4% per level) damage to enemies within the area. Deals 50% damage to Structures.',8,'Q','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(61,'Personal Barrier','Gain a shield that absorbs 1228 (583 + 4% per level) damage for 3 seconds.',10,'W','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(61,'Shield Ally','Grants an allied Hero a shield that absorbs 921 (437 + 4% per level) damage for 3 seconds.',12,'E','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(61,'Graviton Surge','Launch a gravity bomb that detonates after 1 second and draws enemy Heroes toward the center for 2.5 seconds.',100,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(61,'Expulsion Zone','Launch a gravity bomb that deals 272 (129 + 4% per level) damage and creates an expulsion zone for 3.5 seconds. Enemies who enter the affected area are knocked back and have their Movement Speed reduced by 50% for 1 second.',45,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Vanish','Valeera vanishes from sight, becoming Stealthed and increasing her Movement Speed by 10%. For the first second, she is Unrevealable and can pass through other units. Using Vanish grants Valeera an alternate set of Abilities that she can use while Stealthed.',8,'','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Sinister Strike','Dash foward, hitting all enemies in a line for 114.4 (+4% per level damage). If Sinister Stike hits a Hero, Valeera stops dashing immediately and the cooldown is reduced to 1 second. Awards 1 Combo Point. Stealth: Ambush.. Heavily damage an enemy.',5,'Q','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Ambush','Ambush the target, instantly dealing 187.2 (+4% per level) damage to the target. Awards 1 Combo Point. Unstealth: Sinister Strike.. Dash foward, damaging enemies.',1,'Q','20');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Blade Flurry','Deal 135.2 (+4% per level) damage in an area around Valeera. Awards 1 Combo Point per enemy Hero hit. Stealth: Cheap Shot.. Stun and damage an enemy.',4,'W','40');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Cheap Shot','Deal 31.2 (+4% per level) damage to an enemy and stun them for 1.5 seconds. Awards 1 Combo Point. Unstealth: Blade Furry.. Deal damage around Valeera.',1,'W','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Eviscerate','Consume all stored Combo Points to Eviscerate an enemy, dealing increased damage per Combo Point spent. 1 Point: 104 (+4% per level) | 2 Points: 208 (+4% per level) | 1 Point: 312 (+4% per level) Stealth: Garrote.. Silence and damage an enemy over time.',1,'E','25');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Garrote','Garrote an enemy, instantly dealing 78 (+4% per level) to the target, as well as a larger amount of bonus damage over 15 (+4% per level) seconds, and silencing them for 2 seconds. Awards 1 Combo Point. Unstealth: Eviscerate.. High damage finishing move.',1,'E','30');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Smoke Bomb','Create a cloud of smoke. While in the smoke, Valeera is Unrevealable, can pass through other units, and gains 25 Armor, reducing damage taken by 25%. Valeera can continue to attack and use Abilities without being revealed. Lasts 5 seconds. Using this Ability does not break Vanish.',60,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(62,'Cloak of Shadows','Valeera is enveloped in a Cloak of Shadows, which immediately removes all damage over time effects from her. For 1 second, she becomes Unstoppable and gains 75 Spell Armor, reducing Ability damage taken by 75%. Using this Ability does not break Vanish.',18,'R','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(63,'Berserker','Activate to increase Basic Attack damage by 25% but consume 2% maximum Health per attack. Passive: Zul\'jin attacks 1% faster for every 1% of maximum Health missing.',0,'D','0');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(63,'Grievous Throw','Zul\'jin throws an axe forward, dealing 130 damage to the first 2 enemies hit and marking them for 8 seconds. Marked enemies take 50% bonus damage from Zul\'jin\'s next 3 Basic Attacks against them.',8,'Q','50');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(63,'Twin Cleave','Throw 2 axes in a large, circular arc, dealing 116 damage and slowing affected enemies by 15% per axe for 2 seconds.',8,'W','60');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(63,'Regeneration','Zul\'jin channels to regenerate 25% of his maximum Health over 4 seconds. Moving while channeling or taking damage will interrupt this effect.',15,'E','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(63,'Taz\'dingo','Zul\'jin is Unkillable for the next 4 seconds, and cannot be reduced to less than 1 Health. Taz\'dingo!',90,'R','75');
INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(63,'Guillotine','Zul\'jin launches a massive axe into the air that drops on the targeted area, dealing 210 damage plus bonus damage the lower his Health is.',45,'R','70');

/*INSERT INTO hots_ability (hero_id, ability_name, ability_desc, ability_cooldown, ability_key, ability_mana)
VALUES
(54,'','',,'','');*/

INSERT INTO hots_talent VALUES (1,1,4,'Adrenal Overload',0,'Symbiote host gains 25% increased Attack Speed.');
INSERT INTO hots_talent VALUES (2,1,16,'Adrenaline Boost',0,'Symbiote''s Carapace increases the Movement Speed of the target by 40% for 3.5 seconds.');
INSERT INTO hots_talent VALUES (3,1,13,'Assault Strain',0,'Locust Basic Attacks cleave for 50% damage, and explode on death for 224 (107 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (4,1,4,'Ballistospores',0,'Increases Toxic Nest''s range to global and increases duration by 25%.');
INSERT INTO hots_talent VALUES (5,1,13,'Bombard Strain',0,'Locust''s Basic Attacks become a long-range siege attack that deal 70% more damage.');
INSERT INTO hots_talent VALUES (6,1,7,'Calldown: MULE',60,'Activate to calldown a Mule that repairs Structures, one at a time, near target point for 40 seconds, healing for 100 Health every 1 second. Grants 1 ammo every 3 seconds.');
INSERT INTO hots_talent VALUES (7,1,1,'Envenomed Nest',0,'Toxic Nests deal 75% more damage over 3 seconds.');
INSERT INTO hots_talent VALUES (8,1,16,'Envenomed Spikes',0,'Your Symbiote''s Spike Burst also slows enemy Movement Speed by 40% for 2 seconds.');
INSERT INTO hots_talent VALUES (9,1,20,'Evolution Complete',0,'Monstrosity gains the ability to Deep Tunnel to any visible location once every 25 seconds.');
INSERT INTO hots_talent VALUES (10,1,20,'Evolutionary Link',0,'As long as the Ultimate Evolution is alive, the original target of the clone gains a Shield equal to 25% of their maximum Health. Refreshes every 5 seconds.');
INSERT INTO hots_talent VALUES (11,1,10,'Evolve Monstrosity',0,'Turn an allied Minion or Locust into a Monstrosity. When enemy Minions or captured Mercenaries near the Monstrosity die, it gains 5% Health and 5% Basic Attack damage, stacking up to 40 times. The Monstrosity takes 50% less damage from Minions and Structures.Using Symbiote on the Monstrosity allows you to control it, in addition to Symbiote''s normal benefits.');
INSERT INTO hots_talent VALUES (12,1,20,'Hivemind',0,'Symbiote creates an additional Symbiote on a nearby allied Hero. This Symbiote mimics the commands of the first, but does half the damage and shielding.');
INSERT INTO hots_talent VALUES (13,1,16,'Locust Brood',45,'Activate to spawn 3 Locusts at a nearby location.');
INSERT INTO hots_talent VALUES (14,1,20,'Locust Nest',45,'Activate to create a nest that periodically spawns Locusts. Only one Locust Nest can be active at a time.');
INSERT INTO hots_talent VALUES (15,1,7,'Needlespine',0,'Increases the damage and range of Symbiote''s Stab by 20%.');
INSERT INTO hots_talent VALUES (16,1,7,'Networked Carapace',0,'Using Symbiote''s Carapace also applies an untalented Carapace Shield to all nearby allied Heroes, Minions, and Mercenaries.');
INSERT INTO hots_talent VALUES (17,1,1,'Pressurized Glands',0,'Increases the range of Symbiote''s Spike Burst by 25% and decreases the cooldown by 1 second.');
INSERT INTO hots_talent VALUES (18,1,4,'Prolific Dispersal',0,'Reduces the cooldown of Toxic Nest by 2 seconds and adds 2 additional charges.');
INSERT INTO hots_talent VALUES (19,1,1,'Regenerative Microbes',0,'Symbiote''s Carapace heals the target for 149 (71 + 4% per level) Health per second over 4 seconds.');
INSERT INTO hots_talent VALUES (20,1,13,'Soma Transference',0,'Symbiote''s Spike Burst heals the host for 141 (67 + 4% per level) Health per enemy Hero hit.');
INSERT INTO hots_talent VALUES (21,1,13,'Spatial Efficiency',0,'Symbiote''s Stab gains 1 additional charge and its cooldown is reduced by 0.5 seconds.');
INSERT INTO hots_talent VALUES (22,1,1,'Survival Instincts',0,'Increases Locust''s Health by 50% and duration by 40%.');
INSERT INTO hots_talent VALUES (23,1,4,'Sustained Carapace',0,'Increases the Shield amount of Symbiote''s Carapace by 40% and allows it to persist after Symbiote ends.');
INSERT INTO hots_talent VALUES (24,1,10,'Ultimate Evolution',0,'Clone target allied Hero and control it for 20 seconds. Abathur has perfected the clone, granting it 20% Ability Power, 20% bonus Attack Damage, and 10% bonus Movement Speed. Cannot use their Heroic Ability.');
INSERT INTO hots_talent VALUES (25,1,7,'Vile Nest',0,'Toxic Nests slow enemy Movement Speed by 40% for 2.5 seconds.');
INSERT INTO hots_talent VALUES (26,1,16,'Volatile Mutation',0,'Ultimate Evolution clones and Monstrosities deal 301 (143 + 4% per level) damage to nearby enemies every 3 seconds and when they die.');
INSERT INTO hots_talent VALUES (27,2,1,'Extended Spikes',0,'Increases the max range of Impale by 25%.');
INSERT INTO hots_talent VALUES (28,2,1,'Dampen Magic',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 1.5 seconds. Can only trigger once every 8 seconds.');
INSERT INTO hots_talent VALUES (29,2,1,'Assault Scarab',0,'Increases the attack damage of spawned Beetles by 30%.');
INSERT INTO hots_talent VALUES (30,2,1,'Regeneration Master',0,'Quest: Gathering a Regeneration Globe increases your Health Regeneration by 1 per second, up to 30. Reward: After gathering 30 Regeneration Globes, you also gain 500 Health.');
INSERT INTO hots_talent VALUES (31,2,4,'Underking',0,'Increases Burrow Charge range by 20% and damage by 100%.');
INSERT INTO hots_talent VALUES (32,2,4,'Locust Needles',0,'Basic Attacks deal 50% of your Basic Attack Damage in an area around the target.');
INSERT INTO hots_talent VALUES (33,2,4,'Legion of Beetles',0,'Anub''arak automatically spawns Beetles every 8 seconds. Can be toggled on and off.');
INSERT INTO hots_talent VALUES (34,2,7,'Shed Exoskeleton',0,'Using Harden Carapace also increases Anub''arak''s Movement Speed by 30% for 3 seconds.');
INSERT INTO hots_talent VALUES (35,2,7,'Chitinous Plating',0,'Increases Harden Carapace''s Shield amount by 40%.');
INSERT INTO hots_talent VALUES (36,2,7,'Leeching Scarabs',0,'Beetles heal you for 50% of their damage with each attack if you are nearby.');
INSERT INTO hots_talent VALUES (37,2,10,'Locust Swarm',0,'Deal 145 (69 + 4% per level) damage per second in an area around yourself. Each enemy damaged heals you for 40 (19 + 4% per level) Health. Lasts 8 seconds.');
INSERT INTO hots_talent VALUES (38,2,10,'Cocoon',0,'Wraps target enemy Hero in a cocoon, rendering them unable to act or be targeted for 8 seconds. Allies of the Hero can attack the cocoon to break it and free them early.');
INSERT INTO hots_talent VALUES (39,2,13,'Burning Rage',0,'Deal 23 damage per second to nearby enemies.');
INSERT INTO hots_talent VALUES (40,2,13,'Urticating Spines',0,'Casting Harden Carapace will also deal 176 (84 + 4% per level) damage to nearby enemies.');
INSERT INTO hots_talent VALUES (41,2,13,'Bed of Barbs',0,'Create a bed of spikes along Impale''s path that slows enemy Move Speed by 30% and deals 101 (48 + 4% per level) damage per second. Spikes persist for 3.5 seconds.');
INSERT INTO hots_talent VALUES (42,2,16,'Epicenter',0,'Increases Burrow Charge impact area by 85% and lowers the cooldown by 4 seconds for each Hero hit.');
INSERT INTO hots_talent VALUES (43,2,16,'Beetle, Juiced',0,'Every 3rd Basic Attack against enemy Heroes sapwns a Beetle.');
INSERT INTO hots_talent VALUES (44,2,16,'Blood for Blood',0,'Activate to deal 10% of target enemy Hero''s Max Health and heal for twice that amount.');
INSERT INTO hots_talent VALUES (45,2,20,'Hive Master',0,'Anub''arak gains a permanent Vampire Locust that attacks a nearby enemy every 3 seconds. The Vampire Locust deals 336 (160 + 4% per level) damage and returns to heal Anub''arak for 82 (39 + 4% per level) health.');
INSERT INTO hots_talent VALUES (46,2,20,'Cryptweave',0,'Staying near the Coccon allows Anub''arak to extend the duration by up to 4 seconds per Cocoon.');
INSERT INTO hots_talent VALUES (47,2,20,'Hardened Shield',0,'Activate to reduce damage taken by 75% for 4 seconds.');
INSERT INTO hots_talent VALUES (48,2,20,'Rewind',0,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (49,3,1,'Reactive Parry',0,'Activating Twin Blades reduces the damage received from the next Hero Basic Attack by 75%. Can store up to 2 charges.');
INSERT INTO hots_talent VALUES (50,3,1,'Amateur Opponent',0,'Twin Blades attacks deal 150% bonus damage versus non-Heroic enemies.');
INSERT INTO hots_talent VALUES (51,3,1,'Seasoned Marksman',0,'Quest: Every Minion killed near you grants 0.2 Attack Damage, and Takedowns grant 0.5 Attack Damage.Reward: Upon gaining 40 bonus Attack Damage, you can also activate Seasoned Marksman to increase your Attack Speed by 40% for 3 seconds. 60 second cooldown.');
INSERT INTO hots_talent VALUES (52,3,4,'Psionic Synergy',0,'Cooldown Reduction gained by hitting Heroes with Blade Dash is increased to 4 seconds.');
INSERT INTO hots_talent VALUES (53,3,4,'Shield Battery',0,'Shield Overload''s cooldown recharges 50% faster while the shield is active, and increases the duration of Shielf Overload from 5 to 6 seconds.');
INSERT INTO hots_talent VALUES (54,3,4,'Shield Surge',0,'Shield Overload''s shield amount is increased by 80% while you are below 25% Max Health.');
INSERT INTO hots_talent VALUES (55,3,7,'Solarite Reaper',0,'Increases the damage of the first dash of Blade Dash by 150%.');
INSERT INTO hots_talent VALUES (56,3,7,'Warp Sickness',0,'Phase Prism also slows the enemy''s Movement Speed by 35% for 4 seconds.');
INSERT INTO hots_talent VALUES (57,3,7,'Chrono Surge',0,'Hitting an enemy Hero with Phase Prism grants 50% bonus Attack Speed for 4 seconds.');
INSERT INTO hots_talent VALUES (58,3,7,'Follow Through',0,'After using an ability, your next Basic Attack within 6 seconds deals 40% additional damage.');
INSERT INTO hots_talent VALUES (59,3,10,'Suppression Pulse',0,'Fire a large area pulse from the Spear of Adun, dealing 250 damage and Blinding enemies for 4 seconds. Unlimited range.');
INSERT INTO hots_talent VALUES (60,3,10,'Purifier Beam',0,'Target an enemy Hero with an orbital beam from the Spear of Adun, dealing 404 damage per second for 8 seconds. The beam will chase the target as they move. Unlimited range.');
INSERT INTO hots_talent VALUES (61,3,13,'Templar''s Zeal',0,'Blade Dash cooldown recharges 100% faster while you are below 50% Health.');
INSERT INTO hots_talent VALUES (62,3,13,'Triple Strike',0,'Increases Twin Blades''s number of Basic Attacks to 3 but increase its cooldown by 1 second..');
INSERT INTO hots_talent VALUES (63,3,13,'Graviton Vortex',0,'Phase Prism pulls and damages an additional enemy Hero near the first.');
INSERT INTO hots_talent VALUES (64,3,13,'Phase Bulwark',0,'When Shield Overload activates, you take 40% less damage from Abilities for 4 seconds.');
INSERT INTO hots_talent VALUES (65,3,16,'Zealot Charge',0,'Increase Twin Blades'' charge distance by 100%.');
INSERT INTO hots_talent VALUES (66,3,16,'Titan Killer',0,'Twin Blades attacks against Heroes deal an additional 2.5% of the target''s maximum Health in damage.');
INSERT INTO hots_talent VALUES (67,3,16,'Psionic Wound',0,'Twin Blades final strike causes enemy Heroes to become Vulnerable for 2 seconds, increasing all damage taken by 25%.');
INSERT INTO hots_talent VALUES (68,3,16,'Plasma Burn',0,'While Shield Overload is active, you deal 50 damage a second to nearby enemies.');
INSERT INTO hots_talent VALUES (69,3,20,'Orbital Bombardment',0,'Suppression Pulse gains an additional charge. There is a 10 second cooldown between uses.');
INSERT INTO hots_talent VALUES (70,3,20,'Target Purified',0,'If the target of Purifier Beam dies, it automatically recasts on the nearest enemy Hero.');
INSERT INTO hots_talent VALUES (71,3,20,'Force of Will',0,'Increases Shield Overload''s cooldown reduction from Basic Attacks to 6 seconds.');
INSERT INTO hots_talent VALUES (72,3,20,'Nexus Blades',0,'Basic Attacks deal 20% more damage and slow enemy Movement Speed by 20% for 1 second.');
INSERT INTO hots_talent VALUES (73,4,1,'Block',0,'Every 5 seconds, you can Block a Basic Attack from an enemy Hero reducing its damage by 50%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (74,4,1,'Eternal Hunger',0,'Quest: Using Frostmourne Hungers on an enemy Hero permanently increases the Mana it restores by 4, up to 40. Reward: After hitting 10 Heroes with Frostmourne Hungers, also increase its damage bonus by 25%.');
INSERT INTO hots_talent VALUES (75,4,1,'Frost Presence',0,'Howling Blast''s cooldown is reduced by 5 seconds when it hits an enemy Hero.');
INSERT INTO hots_talent VALUES (76,4,4,'Frozen Wastes',0,'Frozen Tempest Mana cost reduced by 4 per second.');
INSERT INTO hots_talent VALUES (77,4,4,'Deathlord',0,'Reduce Death Coil''s cooldown by 2 seconds and increase its range by 25%.');
INSERT INTO hots_talent VALUES (78,4,4,'Biting Cold',0,'Frozen Tempest damage increased by 50%.');
INSERT INTO hots_talent VALUES (79,4,7,'Rune Tap',0,'Every 3rd Basic Attack heals you for 4% of your max Health.');
INSERT INTO hots_talent VALUES (80,4,7,'Immortal Coil',0,'You gain the healing effect of Death Coil even when you use it on enemies. If you damage an enemy Hero with it, you also heal for an additional 100% of the damage dealt.');
INSERT INTO hots_talent VALUES (81,4,7,'Icebound Fortitude',0,'Activate to reduce damage taken by 25% and reduce the duration of silences, stuns, slows, roots, and polymorphs agaisnt you by 75% for 3 seconds.');
INSERT INTO hots_talent VALUES (82,4,10,'Army of the Dead',0,'Summons Ghouls that last 15 seconds. Sacrifice Ghouls to heal for 586 Health.');
INSERT INTO hots_talent VALUES (83,4,10,'Summon Sindragosa',0,'Deals 504 damage and slows enemies by 60% for 2 seconds. Also disables non-Heroic enemies and Structures for 20 seconds.');
INSERT INTO hots_talent VALUES (84,4,13,'Trail of Frost',0,'Increases Howling Blast''s range by 30% and causes it to also root enemies between you and the target for 1.25 seconds.');
INSERT INTO hots_talent VALUES (85,4,13,'Frost Strike',0,'Reduces Frostmourne Hungers'' cooldown by 2 seconds. Frostmourne Hungers also slows the enemy by 40% for 1.5 seconds.');
INSERT INTO hots_talent VALUES (86,4,13,'Frigid Winds',0,'Frozen Tempest reduces enemy Attack Speed by -200% per second, stacking up to 40%.');
INSERT INTO hots_talent VALUES (87,4,16,'Remorseless Winter',0,'Enemy Heroes that remain within Frozen Tempest for 3 seconds are rooted for 1.75 seconds. This effect only happen once every 10 seconds.');
INSERT INTO hots_talent VALUES (88,4,16,'Frostmourne Feeds',0,'Increased application to your next 2 Basic Attacks.');
INSERT INTO hots_talent VALUES (89,4,16,'Embrace Death',0,'Death Coil deals 10% more damage for each 10% of life you are missing.');
INSERT INTO hots_talent VALUES (90,4,20,'Legion of Northrend',0,'3 additional Ghouls are created. Ghouls heal for an additional 50% and last 5 seconds longer.');
INSERT INTO hots_talent VALUES (91,4,20,'Absolute Zero',0,'Sindragosa flies twice as far. Enemy Heroes are rooted for 2 seconds, and then slowed by 60% for 3.5 seconds.');
INSERT INTO hots_talent VALUES (92,4,20,'Death''s Advance',0,'Passively increases your Movement Speed by 10%. Activate to increase this bonus to 30% for 3 seconds.');
INSERT INTO hots_talent VALUES (93,4,20,'Anti-Magic Shield',0,'Activate to reduce damage taken from Abilities by 100% for 3 seconds, and heal yourself for 25% of the damage prevented.');
INSERT INTO hots_talent VALUES (94,5,1,'Taste for Blood',0,'Quest:ÿEnemies that die within 1.5 seconds of being hit by Globe of Annihilation increase its damage by 2, up to 500. Reward:ÿNone');
INSERT INTO hots_talent VALUES (95,5,1,'Sieging Wrath',0,'Quest:ÿEvery time Globe of Annihilation hits an Hero, its damage is increased by 4 up to 100. Reward:ÿAfter hitting 25 Heroes, the range of Globe of Annihilation is increased by 33% and its damage is increased by an additional 100.');
INSERT INTO hots_talent VALUES (96,5,1,'Master of Destruction',0,'Reduces the Mana cost from 16 to 10 per second. Every 1.5 seconds spent channeling increases the range by 10% up to a maximum of 30%.');
INSERT INTO hots_talent VALUES (97,5,4,'Gluttony',0,'All Shall Burn heals you for 25% of the damage dealt.');
INSERT INTO hots_talent VALUES (98,5,4,'Army of Hell',0,'Increases Demon Warrior''s damage by 20% and reduces their Mana cost by 20.');
INSERT INTO hots_talent VALUES (99,5,4,'Hellish Hirelings',0,'The damage bonus from General of Hell is doubled on Mercenaries.');
INSERT INTO hots_talent VALUES (100,5,4,'Sin''s Grasp',100,'Activate to curse an enemy Hero, dealing 543 (258 + 4% per level) damage over 8 seconds. Minion kills reduce this cooldown by 10 seconds. Can be cast while channeling All Shall Burn. 120 Second Cooldown.');
INSERT INTO hots_talent VALUES (101,5,7,'Infernal Globe',0,'Globe of Annihilation''s cast time is decreased by 40% and its missile speed is increased by 40%.');
INSERT INTO hots_talent VALUES (102,5,7,'Bound Minion',0,'Using General of Hell on a Minion grants them 75 Armor against non-Heroic sources, decreasing damage they take from them by 75% and increases the damage they deal to non-Heroic targets by 100%. Lasts 30 seconds.');
INSERT INTO hots_talent VALUES (103,5,7,'Gluttonous Ward',0,'Activate to place a ward on the ground that restores 3% of your maximum Health and Mana every second for 10 seconds. 45 second cooldown.');
INSERT INTO hots_talent VALUES (104,5,7,'March of Sin',0,'Increases Azmodan''s movement speed while channeling All Shall Burn to 80% of normal speed.');
INSERT INTO hots_talent VALUES (105,5,10,'Demonic Invasion',100,'Rain a small army of Demonic Grunts down on enemies, dealing 121 (58 + 4% per level) damage per impact. Demon Grunts deal 60 (29 + 4% per level) damage and have 800 (380 + 4% per level) health. Damage is doubled versus non-Heroic targets.');
INSERT INTO hots_talent VALUES (106,5,10,'Black Pool',60,'Create a pool that empowers Azmodan, his Demons, and allied Minions, increasing their attack and ability damage by 75%. Pools last 5 seconds. 20 second Cooldown per charge, max 2 charges.');
INSERT INTO hots_talent VALUES (107,5,13,'Hellforged Armor',0,'Demon Warriors deal 10 damage to nearby enemies every second and are granted 50 Armor against Non-Heroic sources, decreasing the damage they take by 50%.');
INSERT INTO hots_talent VALUES (108,5,13,'Hedonism',0,'Reduces Globe of Annihilation''s Mana cost by 30.');
INSERT INTO hots_talent VALUES (109,5,13,'Infused Power',0,'All Shall Burn gains an additional charge level, increasing its maximum damage by 40%.');
INSERT INTO hots_talent VALUES (110,5,16,'Battleborn',0,'If Globe of Annihilation hits an enemy, a Demon Warrior is summoned at the impact point.');
INSERT INTO hots_talent VALUES (111,5,16,'Demonic Smite',0,'Every 7.5 seconds, the Demon Lieutenant will blast enemy Non-Heroic units with demonic energy, dealing 411 damage.');
INSERT INTO hots_talent VALUES (112,5,16,'Sin for Sin',0,'Activate to deal 10% of target enemy Hero''s Max Health and heal for twice that amount. Can be cast while channeling All Shall Burn. 45 second Cooldown.');
INSERT INTO hots_talent VALUES (113,5,20,'Perishing Flame',0,'When the Grunts die they explode, dealing 68 damage to nearby enemies.');
INSERT INTO hots_talent VALUES (114,5,20,'Fifth Circle',0,'Black Pool makes Basic Attacks and Abilities slow enemies Attack and Movement Speeds by 40% for 3 seconds.');
INSERT INTO hots_talent VALUES (115,5,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (116,5,20,'Forced Recruitment',0,'Reduces General of Hell''s cooldown by 10 seconds and gains an additional charge.');
INSERT INTO hots_talent VALUES (117,6,1,'Dream Shot',0,'Reduces the cooldown of Arcane Flare by 1 second for each enemy Hero hit by the outer radius, and 3 seconds for each hit by the inner radius.');
INSERT INTO hots_talent VALUES (118,6,1,'Unfurling Spray',0,'Increases Soothing Mist''s range by 20%.');
INSERT INTO hots_talent VALUES (119,6,1,'Hyper Shift',0,'Each allied Hero healed by Soothing Mist reduces the cooldown of Phase Shift by 2 seconds.');
INSERT INTO hots_talent VALUES (120,6,1,'Bribe',0,'Enemy Minions or captured Mercenaries killed near your Hero grant you stacks of Bribe. Use 20 stacks to bribe target Mercenary, instantly defeating them. Does not work on Bosses. Maximum stacks available: 50.Current number of Bribe stacks: 1');
INSERT INTO hots_talent VALUES (121,6,4,'Arcane Barrage',0,'Increases the range of Arcane Flare by 50%.');
INSERT INTO hots_talent VALUES (122,6,4,'Unstable Anomaly',0,'When Polymorph ends, deal 250 (119 + 4% per level) damage to the target and all nearby enemies.');
INSERT INTO hots_talent VALUES (123,6,4,'Manic Pixie',0,'When Soothing Mist heals an ally with Pixie Dust on them, they heal for an additional 228 (119 + 4% per level) over 4 seconds.');
INSERT INTO hots_talent VALUES (124,6,4,'Peekaboo!',0,'Phase Shifting to an ally reveals a large area around them and all enemies in it for 6 seconds.');
INSERT INTO hots_talent VALUES (125,6,7,'Mistified',0,'Reduces the cooldown of Soothing Mist by 0.5 second every time you cast a Basic Ability.');
INSERT INTO hots_talent VALUES (126,6,7,'Phase Shield',0,'After finishing the teleport, the target of your Phase Shift gains a 877 (416 + 4% per level) point Shield for 20 seconds.');
INSERT INTO hots_talent VALUES (127,6,7,'Cleanse',0,'Activate to make target ally Unstoppable for 1 second. Cannot be cast on yourself.');
INSERT INTO hots_talent VALUES (128,6,10,'Blink Heal',0,'Teleport to a nearby ally, healing them for 447 (213 + 4% per level). Can store 2 charges.');
INSERT INTO hots_talent VALUES (129,6,10,'Emerald Wind',0,'reate an expanding nova of wind, dealing 699 (332 + 4% per level) damage and pushing enemies away. Also passively increases the healing of Soothing Mist by 8%.');
INSERT INTO hots_talent VALUES (130,6,13,'Sticky Flare',0,'Targets are slowed by 40% Movement Speed for 2 seconds.');
INSERT INTO hots_talent VALUES (131,6,13,'Pixie Boost',0,'Pixie Dust gives 50% bonus Move Speed, decaying to 20% over 1.5 seconds.');
INSERT INTO hots_talent VALUES (132,6,13,'Shield Dust',0,'Pixie Dust reduces Ability damage taken by 40%.');
INSERT INTO hots_talent VALUES (133,6,13,'Ice Block',0,'Activate to place yourself in Stasis and gain Invulnerability for 3 seconds.');
INSERT INTO hots_talent VALUES (134,6,16,'Greater Polymorph',0,'Increases the duration of Polymorph by 0.75 second.');
INSERT INTO hots_talent VALUES (135,6,16,'Critterize',0,'Polymorph makes enemies Vulnerable, increasing the damage they take by 25%.');
INSERT INTO hots_talent VALUES (136,6,16,'Bouncy Dust',0,'Pixie Dust bounces to another nearby ally upon impact.');
INSERT INTO hots_talent VALUES (137,6,16,'Hardened Focus',0,'While above 80% life, your Basic Ability cooldowns regenerate 50% faster.');
INSERT INTO hots_talent VALUES (138,6,20,'Double Wyrmhole',0,'Blink Heal can be cast a second time on a different target within 2 seconds without consuming a charge.');
INSERT INTO hots_talent VALUES (139,6,20,'Continuous Winds',0,'Emerald Wind releases two additional novas that deal 25% damage.');
INSERT INTO hots_talent VALUES (140,6,20,'Revitalizing Mist',0,'Healing another Hero with Soothing Mist increases their healing received from Soothing Mist by 25% for 6 seconds. Stacks 3 times.');
INSERT INTO hots_talent VALUES (141,6,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (142,7,1,'Invigoration',0,'If Hamstring hits a Hero, half of the Mana cost is refunded and the cooldown is reduced by 1 second.');
INSERT INTO hots_talent VALUES (143,7,1,'Block',0,'Every 5 seconds, gain 75 Physical Armor against the next Hero Basic Attack, reducing the damage taken by 75%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (144,7,1,'Chop Meat',0,'Hamstring does 100% more damage to Minions and Mercenaries.');
INSERT INTO hots_talent VALUES (145,7,1,'Abattoir',0,'Decreases the amount of Fresh Meat lost on death from 10 to 5. Once you complete the Fresh Meat quest, Heroes continue to drop Meat that grants Attack Damage. This bonus Meat is not lost on death.');
INSERT INTO hots_talent VALUES (146,7,4,'Flail Axe',0,'Increases the length of Hamstring by 40%.');
INSERT INTO hots_talent VALUES (147,7,4,'Unrelenting Pursuit',0,'Reduces the cooldown of Ruthless Onslaught by 33% upon impact.');
INSERT INTO hots_talent VALUES (148,7,4,'Cheap Shot',0,'Hamstring does 100% more damage to targets affected by a slow, root, or stun.');
INSERT INTO hots_talent VALUES (149,7,7,'Insatiable Blade',0,'Increases Butcher''s Brand''s healing from 75% to 100% of your Basic Attack damage. While facing the branded enemy, your Movement Speed is increased by 20%.');
INSERT INTO hots_talent VALUES (150,7,7,'Victuals',0,'Every time a nearby enemy minion dies, you regain 4% of your maximum Health.');
INSERT INTO hots_talent VALUES (151,7,7,'Meat Shield',0,'When Ruthless Onslaught impacts an enemy Hero, gain 50 Spell Armor for 2.5 seconds, reducing Ability damage taken by 50%.');
INSERT INTO hots_talent VALUES (152,7,10,'Furnace Blast',60,'After a 3 second delay, fire explodes around you dealing 1096 (520 + 4% per level) damage to enemies.Can be cast while using Ruthless Onslaught.');
INSERT INTO hots_talent VALUES (153,7,10,'Lamb to the Slaughter',80,'Throw a hitching post that attaches to the nearest enemy Hero after a 1 second delay. This deals 375 (178 + 4% per level) damage and causes the enemy to be chained to the post and Silenced for 3 seconds.');
INSERT INTO hots_talent VALUES (154,7,13,'Cleaver',0,'Basic Attack deal 35% of your Basic Attack Damage in an area around the target.');
INSERT INTO hots_talent VALUES (155,7,13,'Savage Charge',0,'Ruthless Onslaught deals bonus damage to Heroes equal to 10% of their maximum Health.');
INSERT INTO hots_talent VALUES (156,7,13,'Brutal Strike',0,'After using Hamstring, your next 3 Basic Attacks within 5 seconds deal an additional 15% damage.');
INSERT INTO hots_talent VALUES (157,7,16,'Crippling Slam',0,'Hamstring''s slow no longer fades out, and the duration is increased by 25%.');
INSERT INTO hots_talent VALUES (158,7,16,'Enraged',25,'Receiving damage that reduces you below 50% of your maximum Health causes you to become Enraged for 10 seconds. While Enraged, you gain 40% Attack Speed and 25 Armor, reducing damage taken by 25%.');
INSERT INTO hots_talent VALUES (159,7,16,'Blood Frenzy',0,'Basic Attacks against enemy Heroes increase your Attack and Movement Speed by 5% for 3 seconds, stacking up to 5 times.');
INSERT INTO hots_talent VALUES (160,7,20,'Fires of Hell',0,'Furnace Blast explodes a second time 3 seconds after the initial explosion.');
INSERT INTO hots_talent VALUES (161,7,20,'Slaughterhouse',0,'Lamb to the Slaughter now chains all enemy Heroes in range.');
INSERT INTO hots_talent VALUES (162,7,20,'Nexus Blades',0,'Basic attacks deal 20% more damage and slow the target for 1 second.');
INSERT INTO hots_talent VALUES (163,7,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (164,8,1,'Accumulating Fire',0,'Quest: Everytime you set a Hero on fire with Breath of Fire, increase its damage over time by 2%, up to 60%. Reward: After igniting 30 Heroes, you gain Resistant for 1 second per Hero set on fire, reducing damage taken by 25%.');
INSERT INTO hots_talent VALUES (165,8,1,'Grounding Brew',0,'Fortifying Brew reduces all incoming Ability Damage by 30% while drinking.');
INSERT INTO hots_talent VALUES (166,8,1,'Freshest Ingredients',0,'Quest: Gathering a Regeneration Globe increases your Health Regeneration by 1 per second, up to 30. Reward: After gathering 30 Regeneration Globes, 50% of the Shield from Fortifying Brew persists indefinitely after drinking.');
INSERT INTO hots_talent VALUES (167,8,1,'Elusive Brawler',20,'Activate to evade enemy Basic Attacks for 2 seconds. Your Basic Attacks reduce this cooldown by 3 seconds.');
INSERT INTO hots_talent VALUES (168,8,4,'Deadly Strike',0,'Flying Kick no longer costs Brew. Additionally, its damage is increased by 100% while you have Shields from Fortifying Brew.');
INSERT INTO hots_talent VALUES (169,8,4,'Keg Toss',0,'Quest: Everytime Keg Smash hits a Hero, increase its damage by 3, up to 60. Reward: After hitting 20 Heroes, increase its range by 125% and gain an additional charge.');
INSERT INTO hots_talent VALUES (170,8,4,'Ring of Fire',0,'After using Breath of Fire, ignite in a fiery aura, dealing 114 (55 + 4% per level) damage every second to nearby enemies for 3 seconds.');
INSERT INTO hots_talent VALUES (171,8,7,'Brewmaster''s Balance',0,'While at or below 50 Brew, gain 20% Movement Speed. While at or above 50 Brew, regenerate an additional 40 (19 + 4% per level) Health per second.');
INSERT INTO hots_talent VALUES (172,8,7,'Bolder Flavor',0,'Fortifying Brew instantly Shields you for 697 (331 + 4% per level). Additionally, Shields persists for 1 extra second after you stop drinking.');
INSERT INTO hots_talent VALUES (173,8,7,'Refreshing Elixir',0,'Increases regeneration effects and all healing received by 30%, or by 60% while drinking Fortifying Brew.');
INSERT INTO hots_talent VALUES (174,8,10,'Wandering Keg',70,'Roll around inside an Unstoppable barrel, dealing 130 (62 + 4% per level) damage to enemies in the way and knocking them back. Lasts for 5 seconds.');
INSERT INTO hots_talent VALUES (175,8,10,'Storm, Earth, Fire',100,'Split into three elemental spirits for 12.15 seconds, each with 75% of your maximum Health and a unique ability. If all three spirits are killed, Chen will die as well. Storm can grant your spirits Movement Speed. Earth can leap to an area and slow enemies. Fire can grant your spirits Attack Speed.');
INSERT INTO hots_talent VALUES (176,8,13,'Pressure Point',0,'Flying Kick slows the target enemy by 35% for 1 second, or by 70% if they''re soaked in Brew.');
INSERT INTO hots_talent VALUES (177,8,13,'A Touch of Honey',0,'Increase the slow from Keg Smash to 40%.');
INSERT INTO hots_talent VALUES (178,8,13,'Withering Flames',0,'Setting an enemy Hero on fire reduces their Ability Power by 25% for 3 seconds.');
INSERT INTO hots_talent VALUES (179,8,16,'Flying Leap',0,'Increases Flying Kick''s range by 20%.');
INSERT INTO hots_talent VALUES (180,8,16,'Another Round',0,'After hitting an enemy Hero with Keg Smash, the cooldown of your next Basic Ability will be reduced by 3 seconds.');
INSERT INTO hots_talent VALUES (181,8,16,'Enough to Share',0,'Fortifying Brew also Shields nearby allied Heroes for 119 (57 + 4% per level) per second.');
INSERT INTO hots_talent VALUES (182,8,20,'Untapped Potential',0,'Wandering Keg increases Movement Speed by 25% and reduces damage taken by 50%.');
INSERT INTO hots_talent VALUES (183,8,20,'Elemental Conduit',0,'Increases the spirits'' Health to 100% of your maximum Health and empowers their abilities. Storm can grant your spirits Unstoppable. Earth''s leap cooldown is reduced by 3 seconds. Fire grants Attack Speed as long as it is alive.');
INSERT INTO hots_talent VALUES (184,8,20,'Purifying Brew',5,'The next Stun or Silence used against you has its duration reduced by 75% and resets the cooldown of Fortifying Brew. Can only trigger once every 10 seconds.');
INSERT INTO hots_talent VALUES (185,8,20,'Stormstout Secret Recipe',0,'Heal for 1.5% of your maximum Health every time your Basic Abilities hit an enemy Hero.');
INSERT INTO hots_talent VALUES (186,9,1,'Surging Dash',0,'Increases Surging Fist range and speed by 25%.');
INSERT INTO hots_talent VALUES (187,9,1,'Blazing Bulwark',0,'Consuming Blaze grants youÿ??? stack of Block when you hit an enemy Hero, up to 10. Block reduces damage taken from enemy Basic Attacks by 50%.');
INSERT INTO hots_talent VALUES (188,9,1,'Fuel for the Flame',0,'Gathering a Regeneration Globe increases your next Consuming Blaze heal by 50%.');
INSERT INTO hots_talent VALUES (189,9,4,'Runed Gauntlet',0,'Rune Bomb increases your next Basic Attack by 75%.');
INSERT INTO hots_talent VALUES (190,9,4,'Rollback',0,'Rune Bomb now returns to you, damaging enemies in its path.');
INSERT INTO hots_talent VALUES (191,9,4,'Seared Flesh',0,'Every third consecutive Basic Attack against the same target deals 75% bonus damage.');
INSERT INTO hots_talent VALUES (192,9,7,'Power Surge',0,'Reduces the initial delay of Surging Fist by 50% and it is 100% wider.');
INSERT INTO hots_talent VALUES (193,9,7,'Fire Eater',0,'Basic Attacks against targets inflicted with Consuming Blaze heal you for 50% of the damage dealt.');
INSERT INTO hots_talent VALUES (194,9,7,'I AM Hurrying!',0,'Increases the duration of Gall''s "Hurry Up, Oaf!" by 1.5 second and it no longer fades over time.');
INSERT INTO hots_talent VALUES (195,9,10,'Hammer of Twilight',0,'Passively increases Basic Attack damage by 25%. Activate to swing the Hammer to deal 377 (164 + 4.5% per level) damage, push enemies away, and stun for 0.75 seconds.');
INSERT INTO hots_talent VALUES (196,9,10,'Upheaval',0,'After 1 second pull enemies towards your direction, slowing them by 25% for 3 seconds and dealing 220 (104 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (197,9,13,'Runic Feedback',0,'Gall''s Runic Blast reduces your Rune Bomb cooldown by 1 second per enemy hit.');
INSERT INTO hots_talent VALUES (198,9,13,'Surge of Stamina',0,'After using Surging Fist, the duration of silences, stuns, slows, roots, and polymorphs applied to you are reduced by 50% for 5 seconds.');
INSERT INTO hots_talent VALUES (199,9,13,'Molten Block',0,'Activate to place yourself in Stasis and gain Invulnerability for 3 seconds, damaging nearby enemies for 202 (96 + 4% per level) damage per second.');
INSERT INTO hots_talent VALUES (200,9,16,'Twilight Veil',0,'Consuming Blaze reduces damage taken from Abilities by 50% for 2 seconds per enemy Hero hit.');
INSERT INTO hots_talent VALUES (201,9,16,'Frenzied Fists',0,'If Surging Fist hits an enemy Hero, your Attack Speed is increased by 100% for 4 seconds.');
INSERT INTO hots_talent VALUES (202,9,16,'Crippling Blow',0,'Enemies hit by Surging Fist are slowed by 90% for 1.25 seconds.');
INSERT INTO hots_talent VALUES (203,9,20,'C''thun''s Gift',0,'Your Basic Attack becomes ranged and slows targets by 20% for 2 seconds.');
INSERT INTO hots_talent VALUES (204,9,20,'Favor of the Old Gods',0,'Upheaval grants you Resistant, reducing your damage taken by 50% for 5 seconds.');
INSERT INTO hots_talent VALUES (205,9,20,'The Will Of Gall',0,'Gall can activate Will of Gall to make you Unstoppable for 2 seconds.');
INSERT INTO hots_talent VALUES (206,10,1,'Compounding Aether',0,'Reward:ÿAfter hitting 25 Heroes with Sand Blast increase its damage by 100.');
INSERT INTO hots_talent VALUES (207,10,1,'Deep Breathing',0,'Quest:ÿEvery time Dragon''s Breath hits a Hero increase its damage by 2, up to 50. Reward:ÿAfter hitting 25 Heroes, increase its damage by an additional 150 and also increase your sight radius by 100%.');
INSERT INTO hots_talent VALUES (208,10,1,'Timewalker''s Pursuit',25,'Activate to reveal a targeted area for 2 Seconds. Enemies are revealed for 4 Seconds. Quest:ÿGathering a Regeneration Globe increases your Mana Regeneration by 0.1, up to 1.5. Reward:ÿAfter gathering 15 Globes you also gain 5% Ability Power.');
INSERT INTO hots_talent VALUES (209,10,2,'Piercing Sands',0,'Sand Blast will now hit the first two Heroes in its path.');
INSERT INTO hots_talent VALUES (210,10,2,'Bronze Talons',0,'Increases your Basic Attack range by 35%. Using Sand Blast increases the damage of your next Basic Attack by 250%.');
INSERT INTO hots_talent VALUES (211,10,2,'Enveloping Assault',0,'Increases Dragon''s Breath''s radius by 25%.');
INSERT INTO hots_talent VALUES (212,10,5,'Mobius Loop',0,'Reduces Dragon''s Breath''s Mana cost and cooldown by 50%, but also reduces its damage by 25%.');
INSERT INTO hots_talent VALUES (213,10,5,'Dragon''s Eye',0,'Dragon''s Breath does 25% more damage to enemies in the center.');
INSERT INTO hots_talent VALUES (214,10,5,'Chrono Sickness',0,'Reduce Time Trap''s cooldown and Mana cost by 50%. After the Stasis ends, the enemy is also slowed by 50% for 4 seconds.');
INSERT INTO hots_talent VALUES (215,10,8,'Slowing Sands',5,'Place a sand vortex that greatly slows enemies inside it. The longer it is active the more it slows, up to 50% after 5 seconds.');
INSERT INTO hots_talent VALUES (216,10,8,'Temporal Loop',75,'Choose an enemy Hero. After 3 seconds, they will teleport back to the location where you cast Temporal Loop on them.');
INSERT INTO hots_talent VALUES (217,10,11,'Bye Bye!',0,'Reduces the cast time of your Hearthstone by 75%, and it is not interrupted by taking damage.');
INSERT INTO hots_talent VALUES (218,10,11,'Reaching through Time',0,'Increases Sand Blast and Dragon?s Breath''s range by 15%.');
INSERT INTO hots_talent VALUES (219,10,11,'Time Out',60,'Activate to place yourself in Stasis and gain Invulnerability for up to 7 seconds. Can be reactivated to end the effect early.');
INSERT INTO hots_talent VALUES (220,10,14,'Shifting Sands',0,'Hitting an enemy Hero with Sand Blast increases your Ability Power by 8% for the next 10 seconds. This bonus can be stacked up to 40%, and the duration is refreshed whenever you damage enemy Heroes with Sand Blast.');
INSERT INTO hots_talent VALUES (221,10,14,'Fast Forward',0,'If Sand Blast travels at least 75% of its base distance and hits a Hero, its cooldown is reduced to 0.75 seconds.');
INSERT INTO hots_talent VALUES (222,10,14,'Quantum Overdrive',30,'Activate to increase Ability Power by 20% for 10 seconds.');
INSERT INTO hots_talent VALUES (223,10,18,'Pocket of Time',0,'Removes Slowing Sands Mana cost and increases the slow from 50% to 80%.');
INSERT INTO hots_talent VALUES (224,10,18,'Loophole',0,'Temporal Loop hits all enemy Heroes near your initial target.');
INSERT INTO hots_talent VALUES (225,10,18,'Past and Future Me',0,'After casting Sand Blast, leave an echo of yourself behind. The next time you cast Sand Blast, the echo also casts an untalented Sand Blast that does 40% damage.');
INSERT INTO hots_talent VALUES (226,10,18,'Andorhal Anomaly',0,'You gain 3 charges of Time Trap, and can have 3 active at once. When your cooldown finishes, you gain 3 charges at once.');
INSERT INTO hots_talent VALUES (227,11,1,'Enduring Swarm',0,'While active, Dark Swarm reduces damage taken from Spells by 60%.');
INSERT INTO hots_talent VALUES (228,11,1,'Primal Aggression',0,'Dark Swarm duration increased by 0.5 seconds and it deals 90% bonus damage to Minions and Mercenaries.');
INSERT INTO hots_talent VALUES (229,11,1,'Enhanced Agility',0,'Quest:ÿEach time you collect 50 Essence, permanently increase your Movement Speed by 1%, up to 10%.');
INSERT INTO hots_talent VALUES (230,11,1,'Tissue Regeneration',0,'Quest:ÿEach time you collect 50 Essence, permanently increase your Health Regeneration by 5, up to 50.');
INSERT INTO hots_talent VALUES (231,11,4,'Lurker Strain',0,'Burrow grants Stealth for 3 seconds. Emerging from Burrow knocks nearby enemies back and slows them by 30% for 2 seconds.');
INSERT INTO hots_talent VALUES (232,11,4,'One-Who-Collects',0,'Increases Essence collected from Minions by 50%.');
INSERT INTO hots_talent VALUES (233,11,4,'Hero Stalker',0,'Increases Essence gained from Takedowns by 100%.');
INSERT INTO hots_talent VALUES (234,11,7,'Feeding Frenzy',0,'Basic Attacks reduce Drag''s cooldown by 1.5 seconds.');
INSERT INTO hots_talent VALUES (235,11,7,'Constriction',0,'Increases Drag duration by 0.5 seconds.');
INSERT INTO hots_talent VALUES (236,11,7,'Symbiosis',0,'Every time Dark Swarm damages an enemy Hero, reduce its cooldown by 0.4 seconds.');
INSERT INTO hots_talent VALUES (237,11,7,'Essence Devourer',0,'Quest:ÿGathering Regeneration Globes grant 10 Essence and increase your maximum Essence by 1, to a maximum of 10 increased Essence. Reward:ÿAfter collecting 10 Regeneration Globes, the amount of Essence you gain from Regeneration Globes is increased to 15.');
INSERT INTO hots_talent VALUES (238,11,10,'Isolation',0,'Launch biomass that hits the first enemy Hero dealing 439 (208 + 4% per level) damage, silencing and slowing them 30% for 3 seconds. Only allows them to see a very short distance for 6 seconds.');
INSERT INTO hots_talent VALUES (239,11,10,'Adaptation',0,'After 5 seconds, heal for 60% of the damage you took over this period.');
INSERT INTO hots_talent VALUES (240,11,13,'Swift Pursuit',0,'Brushstalker''s Movement Speed duration after leaving a Bush is increased from 1 to 3 seconds.');
INSERT INTO hots_talent VALUES (241,11,13,'Ferocious Stalker',0,'After using Brushstalker, increase all damage you deal by 25% for 10 seconds.');
INSERT INTO hots_talent VALUES (242,11,13,'Primal Swarm',0,'Dark Swarm causes enemies hit to take 10% extra damage for 0.75 seconds.');
INSERT INTO hots_talent VALUES (243,11,16,'Paralyzing Enzymes',0,'Drag slows enemies by 50% for 2 seconds after it ends.');
INSERT INTO hots_talent VALUES (244,11,16,'Elongated Tongue',0,'Increase Drag range by 20%.');
INSERT INTO hots_talent VALUES (245,11,16,'Tunneling Claws',0,'You can move while Burrowed');
INSERT INTO hots_talent VALUES (246,11,20,'Contagion',0,'Isolation hits all Heroes near the first target.');
INSERT INTO hots_talent VALUES (247,11,20,'Change Is Survival',0,'Increases Adaptation healing to 200% of the damage received.');
INSERT INTO hots_talent VALUES (248,11,20,'Apex Predator',0,'Reduces Brushstalker''s cooldown by 25 seconds and the cast time by 0.5 seconds.');
INSERT INTO hots_talent VALUES (249,11,20,'Essence Claws',0,'Your Basic Attacks slow the target by 20% for 1 second. If the target is a Hero, you gain 5 Essence.');
INSERT INTO hots_talent VALUES (250,12,1,'Bulwark',0,'Increase the duration of Shadow Charge?s Resistance effect from 2 to 5 seconds.');
INSERT INTO hots_talent VALUES (251,12,1,'Devil''s Due',0,'Regeneration Globes and Healing Fountains are 2% more effective for every stack of Black Soulstone.');
INSERT INTO hots_talent VALUES (252,12,1,'Life Leech',0,'Basic Attacks against enemy Heroes deal bonus damage equal to 1% of the Hero''s maximum Health and heal you for the same amount.');
INSERT INTO hots_talent VALUES (253,12,4,'From the Shadows',0,'Enemies knocked against unpathable locations are stunned for an additional 0.5 seconds.');
INSERT INTO hots_talent VALUES (254,12,4,'Speed Demon',0,'Diablo gains 30% Movement Speed for 5 seconds after being Stunned or Rooted.');
INSERT INTO hots_talent VALUES (255,12,4,'Demonic Strength',0,'Once Overpower''s stun expires, the target is slowed by 30% for 3 seconds.');
INSERT INTO hots_talent VALUES (256,12,7,'Soul Feast',0,'Each Soulstone stack grants 0.4 Health Regeneration per second.');
INSERT INTO hots_talent VALUES (257,12,7,'Soul Shield',0,'Each Black Soulstone stack Diablo has grants him 0.35% Resistance to enemy Abilities.');
INSERT INTO hots_talent VALUES (258,12,7,'Diabolical Momentum',0,'Basic Attacks lower the cooldown of Shadow Charge and Overpower by 1.5 seconds.');
INSERT INTO hots_talent VALUES (259,12,10,'Apocalypse',100,'Create a demonic rune under each enemy Hero on the battleground. After 1.75 seconds the rune explodes dealing 137 damage and stunning for 2 seconds.');
INSERT INTO hots_talent VALUES (260,12,10,'Lightning Breath',60,'Become Unstoppable while channeling lightning that deals 800 damage over 4 seconds. The direction of the Lightning changes with your mouse cursor position.');
INSERT INTO hots_talent VALUES (261,12,13,'Devastating Charge',0,'Shadow Charging an enemy into unpathable terrain deals an additional 5% of that targets max Health in damage. Quest:ÿEvery time you charge an enemy into unpathable terrain, increase the bonus damage by 2%, stacking up to a 10% bonus (15% max health possible)');
INSERT INTO hots_talent VALUES (262,12,13,'Fire Devil',0,'Fire Stomp increases your Basic Attack damage by 25% and surrounds you in flames that deal 20 damage every second for 6 seconds.');
INSERT INTO hots_talent VALUES (263,12,13,'Hellfire',0,'Each enemy Hero hit by Fire Stomp increases the damage of the next Fire Stomp by 10%, stacking up to 100%.');
INSERT INTO hots_talent VALUES (264,12,16,'Debilitating Flames',0,'Enemy Heroes hit by Fire Stomp are slowed by 15% for 2 seconds, up to 30%.');
INSERT INTO hots_talent VALUES (265,12,16,'Domination',0,'Reduces the cooldown of Overpower by 4 seconds. Casting Overpower resets the cooldown of Shadow Charge.');
INSERT INTO hots_talent VALUES (266,12,16,'Fearful Presence',20,'Activate to reduce the damage dealt by nearby enemy Heroes by 30% for 3 seconds. Passive:ÿHeroes and Summons that attack Diablo have their Attack Speed slowed by 20% for 2.5 seconds.');
INSERT INTO hots_talent VALUES (267,12,20,'Dying Breath',0,'Apocalypse''s cooldown is reduced by 20 seconds and is cast for free when you die.');
INSERT INTO hots_talent VALUES (268,12,20,'Hellstorm',0,'Lightning Breath lasts and reaches 50% longer.');
INSERT INTO hots_talent VALUES (269,12,20,'Lord of Terror',60,'Activate to steal 10% of the maximum Health of nearby enemy Heroes.');
INSERT INTO hots_talent VALUES (270,12,20,'Hellgate',90,'Activate to teleport a short distance and place a Demonic Rune at that location. After 1.75 seconds the rune explodes dealing 137 damage and stuns enemies for 1.75 seconds.');
INSERT INTO hots_talent VALUES (271,13,1,'Guitar Hero',0,'While Guitar Solo is active, you heal for 30% of the damage dealt by Basic Attacks. Also increases the Attack Speed bonus of Rockstar by 5%.');
INSERT INTO hots_talent VALUES (272,13,1,'Prog Rock',0,'Quest: Gathering a Regeneration Globe permanently increases the healing per second of Guitar Solo by 5, to a maximum of 100. Reward: After reaching 100 increased healing, Guitar Solar also helas nearby allied Heroes for 117 (56 + 4% per level) Health every second while it is active.');
INSERT INTO hots_talent VALUES (273,13,1,'Block Party',0,'Rockstar also grants allies a stack of Block, reducing the damage they take from the next Basic Attack by 50% for 8 seconds. Stacks up to 2 times.');
INSERT INTO hots_talent VALUES (274,13,4,'Crowd Surfer',0,'Allows Powerslide to travel over walls and terrain.');
INSERT INTO hots_talent VALUES (275,13,4,'Loud Speakers',0,'Increases Face Melt range and knockback by 50%.');
INSERT INTO hots_talent VALUES (276,13,4,'Speed Metal',0,'Rockstar also gives 20% Movement Speed for 2 seconds.');
INSERT INTO hots_talent VALUES (277,13,7,'Pinball Wizard',0,'Face Melt does 150% more damage to enemies recently affected by Powerslide.');
INSERT INTO hots_talent VALUES (278,13,7,'Echo Pedal',0,'Using a Basic or Heroic ability releases two pulses of 71 (34 + 4% per level) damage. This deals 100% bonus damage to Minions and Mercenaries. The first occurs instantly, the second occurs 2 seconds later.');
INSERT INTO hots_talent VALUES (279,13,7,'Hammer-on',0,'After using an Ability, your next 2 Basic Attacks deal 30% more damage.');
INSERT INTO hots_talent VALUES (280,13,10,'Mosh Pit',120,'After 0.75 seconds, channel to stun nearby enemies for 4 seconds.');
INSERT INTO hots_talent VALUES (281,13,10,'Stage Dive',75,'Leap to target location, landing after 2.75 seconds, dealing 724 (330 + 4% per level) damage to enemies in the area, and slowing them by 50% for 3 seconds.');
INSERT INTO hots_talent VALUES (282,13,13,'Mic Check',0,'Hitting at least 2 targets with Face Melt reduces its cooldown by 5 seconds.');
INSERT INTO hots_talent VALUES (283,13,13,'Encore',0,'Face Melt leaves an Amp behind, which will knock enemies away again 2 seconds later.');
INSERT INTO hots_talent VALUES (284,13,13,'Face Smelt',0,'Face Melt slows enemies by 60% fading over 2 seconds.');
INSERT INTO hots_talent VALUES (285,13,16,'Show Stopper',0,'Reduces all damage taken by 25% for 4 seconds after using Powerslide.');
INSERT INTO hots_talent VALUES (286,13,16,'Aggressive Shredding',0,'Your Basic Attacks reduce the cooldown of Guitar Solo by 1 second.');
INSERT INTO hots_talent VALUES (287,13,16,'Imposing Presence',20,'Heroes and Summons that attacks you have their Attack Speed slowed by 20% for 2.5 seconds. Activate to slow the Attack Speed by 50% and Movement Speed by 20% of nearby Heroes and Summons for 2.5 seconds.');
INSERT INTO hots_talent VALUES (288,13,20,'Tour Bus',0,'Mosh Pit refreshes the cooldown of Powerslide. You can Powerslide during Mosh Pit, which also increases its duration by 2 seconds.');
INSERT INTO hots_talent VALUES (289,13,20,'Crowd Pleaser',0,'Stage Dive''s impact area is 50% bigger, and its cooldown is reduced by 15 seconds for every enemy Hero hit.');
INSERT INTO hots_talent VALUES (290,13,20,'Death Metal',0,'Upon dying, a ghost uses Mosh Pit at your location.');
INSERT INTO hots_talent VALUES (291,13,20,'Storm Shield',45,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (292,13,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (293,14,1,'Gathering Storm',0,'Quest:ÿEvery time Hammerang hits a Hero increase its damage by 1.5. Reward:ÿNone');
INSERT INTO hots_talent VALUES (294,14,1,'Seasoned Marksman',60,'Quest:ÿEvery Minion killed near you grants 0.2 Attack Damage, and Takedowns grant 0.5 Attack Damage. Reward:ÿUpon gaining 40 bonus Attack Damage, you can also activate Seasoned Marksman to increase your Attack Speed by 40% for 3 seconds.');
INSERT INTO hots_talent VALUES (295,14,1,'Wingman',0,'Enemy Minions killed near you grant a stack of Bribe. Use 20 stacks to bribe a Mercenary, instantly defeating them and permenantly increasing the damage of Lightning Rod by 5%. Does not work on Bosses. Maximum of 80 stacks.');
INSERT INTO hots_talent VALUES (296,14,4,'Static Shield',0,'Gain a Shield equal to 4% of your maximum Health after every Lightning Rod strike. Lasts 4 seconds and stacks.');
INSERT INTO hots_talent VALUES (297,14,4,'Updraft',0,'Increase Barrel Roll''s range and Shield amount by 40%.');
INSERT INTO hots_talent VALUES (298,14,4,'Hammer Gains',0,'Basic Attacks heal for 20% of the damage dealt to the primary target.');
INSERT INTO hots_talent VALUES (299,14,7,'Secret Weapon',0,'Increases Hammerang'' range by 30% and Basic Attacks deal 60% bonus damage while Hammerang is in flight.');
INSERT INTO hots_talent VALUES (300,14,7,'BOOMerang',0,'Reactivate Hammerang mid-flight to deal 384 (182 + 4% per level) damage around the Hammer.');
INSERT INTO hots_talent VALUES (301,14,7,'Charged Up',0,'Increases the number of Lightning Rod strikes by 2 and its range by 25%.');
INSERT INTO hots_talent VALUES (302,14,10,'Hinterland Blast',0,'After a short delay, deal 901 (428 + 4% per level) damage to enemies within a long line.');
INSERT INTO hots_talent VALUES (303,14,10,'Mighty Gust',0,'Push enemies away, and slow their Movement Speed by 40% decaying over 4 seconds.');
INSERT INTO hots_talent VALUES (304,14,13,'Thunderstrikes',0,'Lightning Rod deals 20% more damage each subsequent strike.');
INSERT INTO hots_talent VALUES (305,14,13,'Flow Rider',0,'While Tailwind is active, your Basic Abilities recharge 100% faster.');
INSERT INTO hots_talent VALUES (306,14,13,'Giant Killer',0,'Basic Attacks against enemy Heroes deal bonus damage equal to 1.5% of the Hero''s maximum Health.');
INSERT INTO hots_talent VALUES (307,14,16,'Crippling Hammer',0,'Increases the Hammerang''s slow from 25% to 50%.');
INSERT INTO hots_talent VALUES (308,14,16,'Aerie Gusts',0,'Reduces the activation time for Tailwind from 6 to 3 seconds, and increase the Movement Speed bonus from 15% to 25%.');
INSERT INTO hots_talent VALUES (309,14,16,'Afterburner',0,'Barrel Roll increases your Movement Speed by 60%, decaying over 3 seconds.');
INSERT INTO hots_talent VALUES (310,14,20,'Call of the Wildhammer',0,'Hinterland Blast has double the range and deals 25% more damage.');
INSERT INTO hots_talent VALUES (311,14,20,'Wind Tunnel',0,'Mighty Gust creates a wind tunnel for 4 seconds. Enemies caught in the tunnel will periodically be pushed back.');
INSERT INTO hots_talent VALUES (312,14,20,'Nexus Frenzy',0,'Increases Attack Speed by 20% and Attack Range by 20%.');
INSERT INTO hots_talent VALUES (313,14,20,'Epic Mount',0,'Reduce the cooldown of Flight to 30 seconds, reduce the cast time before flying to 0.5 seconds, and increase the speed by 50%.');
INSERT INTO hots_talent VALUES (314,15,1,'Spurred Onward',0,'Increase the Initial speed boost of Hurry Up, Oaf! to 70%. Hurry Up, Oaf! cooldown reduced by 2 seconds when hitting an enemy Hero with an Ability.');
INSERT INTO hots_talent VALUES (315,15,1,'Shove',20,'Nudge Cho a small distance in the direction you choose.');
INSERT INTO hots_talent VALUES (316,15,1,'Eye of Kilrogg',45,'Place an eye, granting vision of a large area around it for 45 seconds. The eye can be killed by enemies with 2 Basic Attacks. Stores up to 4 charges.');
INSERT INTO hots_talent VALUES (317,15,4,'Bomb''s Away',0,'Increases Cho''s Rune Bomb range by 20%.');
INSERT INTO hots_talent VALUES (318,15,4,'Runic Persistence',0,'Using Runic Blast no longer destroys Rune Bomb.');
INSERT INTO hots_talent VALUES (319,15,4,'Double Back',0,'Dread Orb''s third bounce instead bounces backwards.');
INSERT INTO hots_talent VALUES (320,15,7,'Edge of Madness',0,'Increases Shadowflame damage by 20% against nearby targets, and 10% to mid-range targets. Distant targets take normal damage.');
INSERT INTO hots_talent VALUES (321,15,7,'Double Trouble',0,'If Shadowflame hits an enemy Hero afflicted with Cho''s Consuming Blaze, its cooldown is reduced by 1.25 seconds.');
INSERT INTO hots_talent VALUES (322,15,7,'Dark Descent',0,'Increases Runic Blast''s damage by 5% everytime you get a Hero takedown, up to 20%. These bonuses are lost upon dying.');
INSERT INTO hots_talent VALUES (323,15,10,'Shadow Bolt Volley',0,'After 1 second, unleash 19.375 Shadow Bolts over 3.875 seconds, each dealing 103 damage to the first target hit. The bolts fire towards your mouse.');
INSERT INTO hots_talent VALUES (324,15,10,'Twisting Nether',0,'After 1 second, nearby enemies are slowed by 40% while you channel, up to 5 seconds. Activate to deal 342 damage.');
INSERT INTO hots_talent VALUES (325,15,13,'Rising Dread',0,'Dread Orb does 25% more damage on the second bounce and 75% more damage the third bounce.');
INSERT INTO hots_talent VALUES (326,15,13,'Speed of Twilight',0,'When Dread Orb hits an enemy Hero, gain 30% Movement Speed for 5 seconds.');
INSERT INTO hots_talent VALUES (327,15,13,'Dread Shield',0,'When Dread Orb hits an enemy Hero, gain a Shield absorbing 561 damage for 5 seconds.');
INSERT INTO hots_talent VALUES (328,15,16,'Twilight Nova',0,'After the first bounce, 2 extra bombs bounce to the sides once.');
INSERT INTO hots_talent VALUES (329,15,16,'Giant Scorcher',0,'Shadowflame also does 3.5% of a Hero''s maximum Health.');
INSERT INTO hots_talent VALUES (330,15,16,'Shadowflare',0,'Increases Shadowflare''s width by 50%. Enemies hit are slowed by 25% for 1 second.');
INSERT INTO hots_talent VALUES (331,15,20,'Shadowfury',0,'Shadow Bolt Volley hits all enemies in its path.');
INSERT INTO hots_talent VALUES (332,15,20,'The Nether Calls',0,'Increases Twisting Nether''s slow by 10% and damage by 10% for every second channeled, to a maximum of 40% increase.');
INSERT INTO hots_talent VALUES (333,15,20,'Psychotic Break',0,'Increases your Ability Damage by 5%. Upon dying, the cooldown on your Heroic Ability is reset and you can continue to use Abilities for 10 seconds.');
INSERT INTO hots_talent VALUES (334,16,1,'Extra TNT',0,'Increases Xplodium Charge damage by 10% per target hit, up to 100%.');
INSERT INTO hots_talent VALUES (335,16,1,'Scrap-o-Matic Smelter',0,'Increases the Mana restored from Scrap by 100%.');
INSERT INTO hots_talent VALUES (336,16,1,'Break it Down!',0,'Scrap causes Abilities to cooldown four times as fast for 3 seconds.');
INSERT INTO hots_talent VALUES (337,16,1,'Regeneration Master',0,'Quest:ÿGathering a Regeneration Globe increases your Health Regeneration by 1 per second, up to 30. Reward:ÿAfter gathering 30 Regeneration Globes, you also gain 500 Health.');
INSERT INTO hots_talent VALUES (338,16,4,'Clockwerk Steam Fists',0,'Quest:ÿBasic Attacks increase the duration of active Rock-It! Turrets by 2 seconds. Reward: After increasing turret duration by 600 total seconds, reduce the charge cooldown of Rock-It! Turret by 3 seconds.');
INSERT INTO hots_talent VALUES (339,16,4,'Ark Reaktor',0,'Reduces Xplodium Charge''s cooldown by 2 seconds. If Xplodium Charge hits an enemy Hero, you gain 2 charges of Rock-It! Turret.');
INSERT INTO hots_talent VALUES (340,16,4,'Reduce, Reuse, Recycle',0,'Enemy Minions that die near you have a 15% chance to drop Scrap.');
INSERT INTO hots_talent VALUES (341,16,4,'Mercenary Lord',0,'Friendly Non-Boss Mercenaries near your hero deal 50% more damage. Gain 50 Armor against Minions and Mercenaries, reducing the damage taken by 50%.');
INSERT INTO hots_talent VALUES (342,16,7,'Rock-It! Turret XL',0,'Rock-It! Turrets attack up to 2 additonal enemies for 60% damage.');
INSERT INTO hots_talent VALUES (343,16,7,'Engine Gunk',0,'Rock-It! Turret attacks slow enemies by 25% for 2 seconds.');
INSERT INTO hots_talent VALUES (344,16,7,'Hyperfocus Coils',0,'Deth Lazor charges twice as fast.');
INSERT INTO hots_talent VALUES (345,16,10,'Robo-Goblin',0,'Basic Attacks deal an additional 150% damage to Minions, Mercenaries, and Structures.');
INSERT INTO hots_talent VALUES (346,16,10,'Grav-O-Bomb 3000',0,'After a 2 second delay, pull enemies toward the center of an area and deal 550 (262 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (347,16,13,'Turret Storage',0,'Increases Rock-It! Turret maximum charges from 2 to 3.');
INSERT INTO hots_talent VALUES (348,16,13,'EZ-PZ Dimensional Ripper',0,'Deth Lazor slows Heroes by 40% and freezes non-Heroes for 3 seconds.');
INSERT INTO hots_talent VALUES (349,16,13,'X-Tra Large Bombs',0,'Increases Xplodium Charge range and radius by 30%.');
INSERT INTO hots_talent VALUES (350,16,13,'Sprint',60,'Activate to gain 75% Movement Speed for 3 seconds.');
INSERT INTO hots_talent VALUES (351,16,16,'Superior Schematics',0,'Increase Rock-It! Turrets damage by 25% when you are within their attack range.');
INSERT INTO hots_talent VALUES (352,16,16,'Goblin Fusion',0,'Deth Lazor can be charged for 1 additional second to increase its damage bonus by an additional 100%.');
INSERT INTO hots_talent VALUES (353,16,16,'Kwik Release Charge',0,'Xplodium Charge gains a second charge.');
INSERT INTO hots_talent VALUES (354,16,20,'Mecha-Lord',0,'Basic attacks deal 200% damage to Heroes.');
INSERT INTO hots_talent VALUES (355,16,20,'Miniature Black Hole',0,'Grav-O-Bomb radius increased by 25% and damage increased by 50%.');
INSERT INTO hots_talent VALUES (356,16,20,'Firin'' Mah Lazorz',0,'Firing Deth Lazor causes all of your Rock-It! Turrets to fire a Deth Lazor of their own that deals 301 (143 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (357,16,20,'It''s Raining Scrap',60,'Activate to create 5 Scrap near you over 5 seconds.');
INSERT INTO hots_talent VALUES (358,17,1,'Wolfheart',0,'While Inner Beast is active, each Basic Attack lowers its cooldown by 0.8 seconds.');
INSERT INTO hots_talent VALUES (359,17,1,'Perfect Aim',0,'Increases Gilnean Cocktail''s range by 30% and refunds 50 Mana if it hits an enemy Hero.');
INSERT INTO hots_talent VALUES (360,17,1,'Viciousness',0,'Increases Inner Beast''s duration to 4 seconds, and causes Ability damage to also refresh its duration.');
INSERT INTO hots_talent VALUES (361,17,4,'Thick Skin',0,'Using Darkflight grants 50 Physical Armor against the next 2 Hero Basic Attacks while inÿWorgenÿForm, reducing the damage taken by 50%');
INSERT INTO hots_talent VALUES (362,17,4,'Eyes in the Dark',0,'Disengage grants Stealth for 3 seconds.');
INSERT INTO hots_talent VALUES (363,17,4,'Insatiable',0,'Inner Beast causes Basic Attacks to restore 10 Mana, up to 140.');
INSERT INTO hots_talent VALUES (364,17,4,'Draught Overflow',0,'Increases Gilnean Cocktail''s explosion length by 35%.');
INSERT INTO hots_talent VALUES (365,17,7,'Quicksilver Bullets',0,'IncreasesÿHumanÿBasic Attack range by 20%.');
INSERT INTO hots_talent VALUES (366,17,7,'Incendiary Elixir',0,'Quest:ÿEvery time you hit an enemy Hero with the explosion damage from Gilnean Cocktail increase its explosion damage by 15, up to 225. Reward:ÿAfter hitting 15 Heroes, the cooldown is also reduced by 4 seconds.');
INSERT INTO hots_talent VALUES (367,17,7,'Wizened Duelist',0,'Quest:ÿHero takedowns increase Basic Attack damage by 3%, to a maximum of 30%. This bonus is lost on death. Reward:ÿNone');
INSERT INTO hots_talent VALUES (368,17,10,'Go for the Throat',0,'Leap at an enemy Hero and shapeshift into aÿWorgen, slashing for 921 (437 + 4% per level) total damage. If this kills them, the Ability can be used a second time within 10 seconds for free.');
INSERT INTO hots_talent VALUES (369,17,10,'Marked for the Kill',0,'Shapeshift into aÿHumanÿand fire a shot hitting the first enemy Hero in its path for 149 (71 + 4% per level) damage. For 5 seconds, their Armor is lowered by 25, taking 25% more damage. Each time Greymane damages the Marked Hero, the duration is refreshed.');
INSERT INTO hots_talent VALUES (370,17,13,'Running Wild',0,'Increases Darkflight and Disengage''s range by 35%.');
INSERT INTO hots_talent VALUES (371,17,13,'Visceral Attacks',0,'WorgenÿBasic Attacks reduce Razor Swipe''s cooldown by 1 second.');
INSERT INTO hots_talent VALUES (372,17,13,'On the Prowl',0,'Inner Beast increases your Movement Speed by 30% once it has been active for 3 seconds.');
INSERT INTO hots_talent VALUES (373,17,13,'Unfettered Assault',0,'Increases Razor Swipe''s lunge distance by 60%.');
INSERT INTO hots_talent VALUES (374,17,16,'Eager Wolf',0,'Increases the Attack Speed bonus of Inner Beast by an additional 40% after it has been active for 4 seconds.');
INSERT INTO hots_talent VALUES (375,17,16,'Executioner',0,'Attacking a Hero that is slowed, rooted, or stunned increases your Basic Attack damage by 30% for 3 seconds.');
INSERT INTO hots_talent VALUES (376,17,16,'Alpha Killer',0,'WorgenÿBasic Attacks against Heroes deal bonus damage equal to 3% of the Hero''s maximum Health.');
INSERT INTO hots_talent VALUES (377,17,20,'Unleashed',0,'If the free cast of Go for the Throat kills its target, another free cast is provided that deals 35% more damage, up to 140%.');
INSERT INTO hots_talent VALUES (378,17,20,'Gilnean Roulette',0,'Marked for the Kill''s Armor reduction is now refreshed by any damage done to the Marked Hero.');
INSERT INTO hots_talent VALUES (379,17,20,'Hunter''s Blunderbuss',0,'HumanÿBasic Attacks splash for 100% damage behind the target.');
INSERT INTO hots_talent VALUES (380,17,20,'Tooth and Claw',0,'WorgenÿBasic Attacks cleave for 100% damage.');
INSERT INTO hots_talent VALUES (381,18,1,'Pursuit of Flame',0,'Quest:ÿHit 40 enemy Heroes with Fel Flame. Reward:ÿFel Flame''s radius is increased by 10%.');
INSERT INTO hots_talent VALUES (382,18,1,'Glyph of Drain Life',0,'Increases the cast range of Drain Life by 25%.');
INSERT INTO hots_talent VALUES (383,18,1,'Echoed Corruption',0,'Quest:ÿHit 40 enemy Heroes with Corruption. Reward:ÿAfter the third strike, Corruption strikes 3 times in the opposite direction.');
INSERT INTO hots_talent VALUES (384,18,1,'Chaotic Energy',0,'Quest:ÿGathering a Regen Globe causes your next Basic Ability with a Mana cost to refund 40 Mana. Reward:ÿAfter Gathering 20 Regen Globes your Basic Ability Mana costs are permanently reduced by 20.');
INSERT INTO hots_talent VALUES (385,18,4,'Health Funnel',0,'If an enemy dies while under the effect of Drain Life, the cooldown is instantly refreshed.');
INSERT INTO hots_talent VALUES (386,18,4,'Improved Life Tap',0,'Life Tap now restores 35% Mana.');
INSERT INTO hots_talent VALUES (387,18,4,'Consume Soul',30,'Instantly kill an enemy Minion and heal for 800 (380 + 4% per level) Health. Stores 2 charges.');
INSERT INTO hots_talent VALUES (388,18,7,'Bound by Shadow',0,'Each enemy Hero hit with Fel Flame reduces the cooldown of Corruption by 1 second.');
INSERT INTO hots_talent VALUES (389,18,7,'Devour the Frail',0,'Drain Life deals 50% more damage to enemies below 50% Health.');
INSERT INTO hots_talent VALUES (390,18,7,'Curse of Exhaustion',0,'Upon expiration, Corruption slows enemy Movement Speed by 50% for 2.5 seconds.');
INSERT INTO hots_talent VALUES (391,18,7,'Hunger for Power',0,'Increases Ability Power by 15% but reduces healing received from allies by 25%.');
INSERT INTO hots_talent VALUES (392,18,10,'Horrify',80,'After a short delay, deal 263 (125 + 4% per level) damage and fear enemy Heroes in the area for 2 seconds.');
INSERT INTO hots_talent VALUES (393,18,10,'Rain of Destruction',100,'Summon a rain of meteors in an area for 7 seconds. Each meteor deals 362 (172 + 4% per level) damage in a small area.');
INSERT INTO hots_talent VALUES (394,18,13,'Fel Armor',0,'Hitting an enemy Hero with Fel Flame grants 40 Spell Armor for 2.5 seconds, reducing Ability Damage taken by 40%.');
INSERT INTO hots_talent VALUES (395,18,13,'Harvest Life',0,'Drain Life heals for 50% more Health when used on Heroes.');
INSERT INTO hots_talent VALUES (396,18,13,'Dark Bargain',0,'Your maximum Health is permanently increased by 25% but your Death Respawn time is increased by 15 seconds.');
INSERT INTO hots_talent VALUES (397,18,13,'Healthstone',60,'Activate to heal for 25% of your maximum Health.');
INSERT INTO hots_talent VALUES (398,18,16,'Rampant Hellfire',0,'Fel Flame''s damage is increased by 8% for 5 seconds when hitting an enemy Hero. This can stack up to 5 times.');
INSERT INTO hots_talent VALUES (399,18,16,'Ruinous Affliction',0,'Corruption deals an additional 171 (82 + 4% per level) damage on impact. If the enemy is hit by all three strikes, the third strike deals 511 (243 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (400,18,16,'Darkness Within',0,'After using Life Tap, the next ability you cast has 25% increased Ability Power.');
INSERT INTO hots_talent VALUES (401,18,20,'Haunt',0,'Increases the duration of Horrify by 1 second and feared enemies lose 25 Armor, causing them to take 25% increased damage.');
INSERT INTO hots_talent VALUES (402,18,20,'Deep Impact',0,'Rain of Destruction slows enemies Movement Speed by 90% for 0.5 seconds.');
INSERT INTO hots_talent VALUES (403,18,20,'Demonic Circle',60,'Summon a Demonic Circle at your location. Activate to teleport to the Demonic Circle.');
INSERT INTO hots_talent VALUES (404,19,1,'Immolation',0,'After using Sweeping Strike, burn nearby enemies for 49 (23 + 4% per level) damage a second for 4 seconds.');
INSERT INTO hots_talent VALUES (405,19,1,'Battered Assault',0,'Increase Sweeping Strike''s Basic Attack damage bonus duration from 3 to 5 seconds. If Sweeping Strike hits 2 Heroes its damage bonus is increased from 35% to 125%.');
INSERT INTO hots_talent VALUES (406,19,1,'Unending Hatred',0,'Quest:ÿEvery Minion you kill gives you 0.1 Attack Damage. Every Takedown gives 1 Attack Damage. Reward:ÿOnce you reach 20 Attack Damage, receive an additional 20 Attack damage.');
INSERT INTO hots_talent VALUES (407,19,4,'Rapid Chase',0,'Dive grants 15% Movement Speed for 2 seconds.');
INSERT INTO hots_talent VALUES (408,19,4,'Friend or Foe',0,'Increases the range of Dive by 20% and allows it to be used on allied Heroes without damaging them.');
INSERT INTO hots_talent VALUES (409,19,4,'Unbound',0,'Sweeping Strike can go over walls and terrain. Reward:ÿAfter hitting 30 Heroes with Sweeping Strike, gain a second charge.');
INSERT INTO hots_talent VALUES (410,19,7,'Reflexive Block',0,'Using Dive grants 75 Physical Armor against the next 2 Hero Basic Attacks for 3 seconds, reducing the damage taken by 75%.');
INSERT INTO hots_talent VALUES (411,19,7,'Thirsting Blade',0,'Betrayer''s Thirst''s healing from Basic Attacks is increased from 30% to 50% while Sweeping Strike''s damage bonus is active.');
INSERT INTO hots_talent VALUES (412,19,7,'Hunter''s Onslaught',0,'Basic Abilities heal for 25% of the damage they deal. Double this bonus versus Heroes.');
INSERT INTO hots_talent VALUES (413,19,10,'Metamorphosis',120,'Transform into Demon Form at the target location, dealing 101 (48 + 4% per level) damage in the area. Temporarily increase your maximum Health by 439 (208 + 4% per level) for each Hero hit. Lasts for 18 seconds.');
INSERT INTO hots_talent VALUES (414,19,10,'The Hunt',60,'Charge to target unit, dealing 550 (262 + 4% per level) damage on impact and stunning for 1 second.');
INSERT INTO hots_talent VALUES (415,19,13,'Nimble Defender',0,'If Sweeping Strikes hits an enemy Hero, gain 25 Armor for 2 seconds, reducing damage taken by 25%.');
INSERT INTO hots_talent VALUES (416,19,13,'Elusive Strike',0,'Sweeping Strike reduces the cooldown of Evasion by 3 seconds every time it damages an enemy Hero.');
INSERT INTO hots_talent VALUES (417,19,13,'Sixth Sense',0,'Evasion grants Illidan 75 Spell Armor against the next 2 sources of Spell damage, reducing their damage by 75%.');
INSERT INTO hots_talent VALUES (418,19,16,'Marked for Death',0,'Dive deals an extra 395 (188 + 4% per level) damage if you hit a target consecutively within 10 seconds.');
INSERT INTO hots_talent VALUES (419,19,16,'Fiery Brand',0,'Every 4th attack against the same Hero deals an additional 6% of their maximum Health as damage.');
INSERT INTO hots_talent VALUES (420,19,16,'Blades of Azzinoth',0,'Hitting 5 Heroes with Sweeping Strike allows you to activate Blades of Azzinoth to increase your Basic Attack damage by 75% for 8 seconds.');
INSERT INTO hots_talent VALUES (421,19,20,'Demonic Form',0,'Permanently remain in Demonic Form. Metamorphosis also increases your Attack Speed by 20% and reduces the duration of slows, roots, and stuns against you by 50%. You can now mount in Demonic Form.');
INSERT INTO hots_talent VALUES (422,19,20,'Nowhere to Hide',0,'The Hunt gains unlimited range. You passively reveal enemy Heroes below 25% Health anywhere on the Battleground.');
INSERT INTO hots_talent VALUES (423,19,20,'Nexus Blades',0,'Basic Attacks deal 20% more damage and slow enemy Movement Speed by 20% for 1 second.');
INSERT INTO hots_talent VALUES (424,19,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (425,20,1,'Winter''s Reach',0,'Increases the range of Frostbolt by 30%.');
INSERT INTO hots_talent VALUES (426,20,1,'Lingering Chill',0,'Increases the duration of Chill from 4 seconds to 6 seconds.');
INSERT INTO hots_talent VALUES (427,20,1,'Deep Chill',0,'Increases the slow of Chill from 25% to 30%.');
INSERT INTO hots_talent VALUES (428,20,1,'Conjurer''s Pursuit',0,'Quest:ÿGathering Regeneration Globes increases your Mana Regeneration by 0.1 per second, up to 2.5 per second. Reward:ÿAfter gathering 25 Globes, also increase your maximum Mana by 100.');
INSERT INTO hots_talent VALUES (429,20,4,'Frost Shards',0,'Frostbolt will now pierce the first target to hit an additional target behind them.');
INSERT INTO hots_talent VALUES (430,20,4,'Arcane Intellect',0,'Dealing damage to a Chilled target returns Mana to Jaina. Basic Attacks return 5 Mana and abilities return 20.');
INSERT INTO hots_talent VALUES (431,20,4,'Frost Armor',0,'Enemy Heroes that attack you are Chilled. Additionally, every 10 seconds, gain 50 Physical Armor against the next enemy Hero Basic attack, reducing the damage taken by 50%.');
INSERT INTO hots_talent VALUES (432,20,7,'Ice Floes',0,'Doubles the width of Cone of Cold and causes each target hit to reduce its cooldown by 1 seconds, to a maximum of 5 seconds per cast.');
INSERT INTO hots_talent VALUES (433,20,7,'Frostbitten',0,'Increases the damage bonus of Frostbite from 50% to 65%.');
INSERT INTO hots_talent VALUES (434,20,7,'Ice Lance',0,'When Frostbolt hits a Chilled target its cooldown is reduced by 2 seconds and you regain 10 Mana.');
INSERT INTO hots_talent VALUES (435,20,10,'Ring of Frost',0,'After a 1.5 second delay, create a Ring of Frost in an area that deals 310 damage and roots enemies for 3 seconds. The ring persists for 3 seconds afterward, Chilling any enemies who touch it.');
INSERT INTO hots_talent VALUES (436,20,10,'Summon Water Elemental',0,'Summons a Water Elemental at target location. The Water Elemental''s Basic Attacks do 78 damage, splash for 25% damage and Chill. Can reactivate the Ability to retarget the Water Elemental. Lasts 20 seconds.');
INSERT INTO hots_talent VALUES (437,20,13,'Storm Front',0,'Increases the cast range of Blizzard by 100%.');
INSERT INTO hots_talent VALUES (438,20,13,'Ice Barrier',0,'When Jaina does increased damage from Frostbite, she is shielded for 25% of the total damage dealt. This Shield lasts 4 seconds.');
INSERT INTO hots_talent VALUES (439,20,13,'Icy Veins',60,'Activate to make your Basic Abilities'' cooldowns recharge three times as fast and reduce their Mana cost by 50% for 5 seconds.');
INSERT INTO hots_talent VALUES (440,20,16,'Snowstorm',0,'Increases the radius of Blizzard by 30%.');
INSERT INTO hots_talent VALUES (441,20,16,'Northern Exposure',0,'Enemies damaged by Cone of Cold have their Armor lowered by 25 for 2 seconds, increasing the damage they take by 25%.');
INSERT INTO hots_talent VALUES (442,20,16,'Numbing Blast',0,'Cone of Cold also roots Chilled targets for 1 second.');
INSERT INTO hots_talent VALUES (443,20,20,'Cold Snap',0,'The center of the ring also explodes with frost after the first ring expires.');
INSERT INTO hots_talent VALUES (444,20,20,'Wintermute',0,'Increases the cast range of Water Elemental by 50%, and the Water Elemental will now mimic your Basic Abilities for 50% damage.');
INSERT INTO hots_talent VALUES (445,20,20,'Improved Ice Block',20,'Activate to place yourself in Stasis and gain Invulnerability for 2.5 seconds. When this effect expires, nearby enemies are Chilled.');
INSERT INTO hots_talent VALUES (446,20,20,'Arcane Power',60,'Activate to instantly restore 400 Mana and increase Ability Power by 15% for 10 seconds.');
INSERT INTO hots_talent VALUES (447,21,1,'Regeneration Master',0,'Quest: Gathering a Regeneration Globe increases your Health Regeneration by 1 per second, up to 30. Reward: After gathering 30 Regeneration Globes, you also gain 500 Health.');
INSERT INTO hots_talent VALUES (448,21,1,'Reinforce',0,'Using Basic Abilities reduces the next Basic Attack against you by 50%. Maximum 2 stacks.');
INSERT INTO hots_talent VALUES (449,21,1,'Righteous Smash',0,'Punish restores 10 Mana per enemy hit.');
INSERT INTO hots_talent VALUES (450,21,1,'Knight Takes Pawn',0,'Condemn deals 165 additional damage to Minions and Mercenaries and stuns them for 3 seconds.');
INSERT INTO hots_talent VALUES (451,21,4,'Amplified Healing',0,'Increases regeneration effects and all healing received by 30%.');
INSERT INTO hots_talent VALUES (452,21,4,'Roar',0,'Increases Punish damage by 50%.');
INSERT INTO hots_talent VALUES (453,21,4,'Eternal Retaliation',0,'Condemn''s cooldown is lowered by 0.75 seconds for each enemy affected. Maximum of 10 targets.');
INSERT INTO hots_talent VALUES (454,21,4,'Laws of Hope',0,'Regenerating 10 Health per second.Activate to heal 20% of your max Health over 4 seconds.');
INSERT INTO hots_talent VALUES (455,21,7,'Blessed Momentum',0,'Basic Attacks reduce your Basic Ability cooldowns by 0.5 seconds.');
INSERT INTO hots_talent VALUES (456,21,7,'Conviction',0,'Movement Speed is increased by 25% while Condemn is charging up.');
INSERT INTO hots_talent VALUES (457,21,7,'The Crusade Marches On',0,'Basic and Heroic Abilities lower the cooldown of Iron Skin by 1.5 seconds.');
INSERT INTO hots_talent VALUES (458,21,7,'Sins Exposed',0,'Shield Glare marks enemies for 4 seconds. The next time any ally damages them, they take 68 extra damage and the mark is removed.');
INSERT INTO hots_talent VALUES (459,21,10,'Falling Sword',0,'You leap towards an area. While in the air, you can steer the landing location by moving. After 2 seconds you land, dealing 356 damage to nearby enemies and knocking them into the air.');
INSERT INTO hots_talent VALUES (460,21,10,'Blessed Shield',0,'Deal 114 damage and stun the first enemy hit for 1.5 seconds. Blessed Shield then bounces to 2 nearby enemies, dealing 57 damage and stunning them for 0.75 seconds.');
INSERT INTO hots_talent VALUES (461,21,13,'Burning Rage',0,'Deal 23 damage per second to nearby enemies.');
INSERT INTO hots_talent VALUES (462,21,13,'Hold Your Ground',0,'Increases Iron Skin''s Shield by 20%, and if the Shield is destroyed by damage the cooldown is reduced by 4 seconds.');
INSERT INTO hots_talent VALUES (463,21,13,'Subdue',0,'Increases Punish''s slow to 80% decaying over 3 seconds.');
INSERT INTO hots_talent VALUES (464,21,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (465,21,16,'Holy Renewal',0,'Every enemy Hero affected by Shield Glare heals you for 114.');
INSERT INTO hots_talent VALUES (466,21,16,'Blessed Hammer',0,'Condemn also creates a hammer that spirals around you, dealing 41 damage to enemies it hits.');
INSERT INTO hots_talent VALUES (467,21,16,'Fanaticism',0,'While Iron Skin is active, gain 8% Movement Speed each time you take damage. Stacks up to 40%.');
INSERT INTO hots_talent VALUES (468,21,16,'Imposing Presence',0,'Enemies that attack you have their Attack Speed slowed by 40%.');
INSERT INTO hots_talent VALUES (469,21,20,'Heaven''s Fury',0,'While in the air, holy bolts rain down on enemies dealing 75 damage and reducing the cooldown of Falling Sword by 2 seconds for each enemy hit.');
INSERT INTO hots_talent VALUES (470,21,20,'Radiating Faith',0,'Increases Blessed Shield''s stun duration by 33% and maximum enemies hit by 2.');
INSERT INTO hots_talent VALUES (471,21,20,'Indestructible',0,'Upon taking fatal damage, gain a Shield equal to your maximum Health for 5 seconds. This effect has a 120 second cooldown.');
INSERT INTO hots_talent VALUES (472,21,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (473,22,1,'Convection',0,'Quest:ÿWhen Flamestrike damages an enemy Hero, increase its damage by 5, up to 100. Lose all damage bonuses if you die. Reward:ÿAfter gaining 100 bonus damage, increase Flamestrike damage by an additional 100 and no longer lose the bonus if you die.');
INSERT INTO hots_talent VALUES (474,22,1,'Fel Infusion',0,'Increases your Ability Power by 4%. Heal for 94 Health when you activate Verdant Spheres.');
INSERT INTO hots_talent VALUES (475,22,1,'Mana Addict',0,'Quest: Gathering a Regeneration Globe increases your maximum Mana by 15. Reward:ÿAfter gathering 20 Regeneration Globes, you can also activate Arcane Barrier to gain a Shield equal to 100% of your maximum Mana for 4 seconds. 45 second cooldown.');
INSERT INTO hots_talent VALUES (476,22,4,'Nether Wind',0,'Increases Gravity Lapse''s range by 30%. When Gravity Lapse hits an enemy Hero, refund 80 Mana.');
INSERT INTO hots_talent VALUES (477,22,4,'Energy Roil',0,'When Gravity Lapse hits a Hero, reduce its cooldown by 9 seconds.');
INSERT INTO hots_talent VALUES (478,22,4,'Mana Tap',0,'Activating Verdante Spheres restores 4% of your maximum Mana.');
INSERT INTO hots_talent VALUES (479,22,7,'Burned Flesh',0,'When Flamestrike damages 2 or more Heroes, they take additional damage to 8% of their maximum Health.');
INSERT INTO hots_talent VALUES (480,22,7,'Sun King''s Fury',0,'Living Bombs that spread to enemy Heroes deal 35% more damage.');
INSERT INTO hots_talent VALUES (481,22,7,'Sunfire Enchantment',0,'Activating Verdant Spheres causes your next Basic Attack to instead shoot a spell dealing 362 (165 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (482,22,10,'Phoenix',0,'Launch a Phoenix to an area, dealing 171 damage to enemies along the way. The Phoenix persists for 7 seconds, attacking enemies for 171 damage and splashing for 50%.');
INSERT INTO hots_talent VALUES (483,22,10,'Pyroblast',0,'After 2 seconds, cast a slow-moving fireball that deals 2150 damage to an enemy Hero and 1075 damage to enemies nearby.');
INSERT INTO hots_talent VALUES (484,22,13,'Pyromaniac',0,'Each time Living Bomb deals periodic damage, your Basic Ability cooldowns are refreshed by 1 second.');
INSERT INTO hots_talent VALUES (485,22,13,'Backdraft',0,'Living Bomb''s explosion slows enemies Movement Speed by 30% for 2 seconds.');
INSERT INTO hots_talent VALUES (486,22,13,'Fission Bomb',0,'Increases Living Bomb''s explosion radius by 20%.');
INSERT INTO hots_talent VALUES (487,22,16,'Fury of the Sunwell',0,'Flamestrike will explode a second time 1.5 seconds later.');
INSERT INTO hots_talent VALUES (488,22,16,'Twin Spheres',0,'Verdant Spheres gains a second charge.');
INSERT INTO hots_talent VALUES (489,22,16,'Arcane Dynamo',0,'Using a Basic Ability increases your Ability Power by 3% for 5 seconds, stacking up to 15%.');
INSERT INTO hots_talent VALUES (490,22,20,'Rebirth',0,'Increases Phoenix duration by 100%. You may order the Phoenix to move to a different location once while the Phoenix is alive.');
INSERT INTO hots_talent VALUES (491,22,20,'Presence Of Mind',0,'Increases Pyroblast''s explosion radius by 50% and reduces its cooldown by 25 seconds per enemy Hero hit.');
INSERT INTO hots_talent VALUES (492,22,20,'Master of Flames',0,'Living Bomb''s spread from explosions can now also spread Living Bomb.');
INSERT INTO hots_talent VALUES (493,22,20,'Flamethrower',0,'Increases the cast range of Flamestrike by 40%. If you hit 2 or more Heroes, Flamestrike''s cooldown is reduced by 4 seconds.');
INSERT INTO hots_talent VALUES (494,23,1,'Siphoning Impact',0,'If the targeted enemy dies within 1.5 seconds, Kerrigan heals for 10% of her maximum Health.');
INSERT INTO hots_talent VALUES (495,23,1,'Sharpened Blades',0,'Impaling Blades deals 25% more damage.');
INSERT INTO hots_talent VALUES (496,23,1,'Energizing Grasp',0,'Reduces the Mana cost of Primal Grasp by 75%.');
INSERT INTO hots_talent VALUES (497,23,1,'Block',0,'Every 5 seconds, gain 75 Physical Armor against the next Hero Basic Attack, reducing the damage taken by 75%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (498,23,4,'Clean Kill',0,'If Ravage kills the target, it restores 75% of its Mana cost and increases the damage of your next Ravage by 25%.');
INSERT INTO hots_talent VALUES (499,23,4,'Psionic Pulse',0,'After casting Primal Grasp, deal 88 (42 + 4% per level) damage per second to nearby enemies. Lasts 5 seconds.');
INSERT INTO hots_talent VALUES (500,23,4,'Fury of the Swarm',0,'Basic Attacks splash for 60% damage around the target.');
INSERT INTO hots_talent VALUES (501,23,4,'Envenom',60,'Activate to poison an enemy Hero, dealing 352 damage over 10 seconds.');
INSERT INTO hots_talent VALUES (502,23,7,'Adaptation',0,'Ravage can be used to jump to allies, refunding 50% of the cooldown and 100% of the Mana cost.');
INSERT INTO hots_talent VALUES (503,23,7,'Blade Torrent',0,'Increases Impaling Blades'' radius by 30%.');
INSERT INTO hots_talent VALUES (504,23,7,'Assimilation Mastery',0,'Increases the duration of Assimilation by 100%. While Assimilation Shields are active your Health and Mana regeneration is increased by 100%.');
INSERT INTO hots_talent VALUES (505,23,7,'Bladed Momentum',0,'Basic Attacks reduce your Basic Ability cooldowns by 0.6 seconds.');
INSERT INTO hots_talent VALUES (506,23,10,'Maelstrom',0,'Deals 82 damage per second to nearby enemies. Lasts for 7 seconds.');
INSERT INTO hots_talent VALUES (507,23,10,'Summon Ultralisk',0,'Summon an Ultralisk that attacks the target to deal 91 damage. Attacks splash to nearby enemies for 50% damage. Can reactivate the Ability to retarget the Ultralisk. Lasts for 20 seconds.');
INSERT INTO hots_talent VALUES (508,23,13,'Lingering Essence',0,'Increases Assimilation Shield''s duration to 20 seconds.');
INSERT INTO hots_talent VALUES (509,23,13,'Eviscerate',0,'Increases Ravage''s range by 40%.');
INSERT INTO hots_talent VALUES (510,23,13,'Double Strike',0,'When your Basic Abilities damage an enemy, your next Basic Attack hits for 75% bonus damage.');
INSERT INTO hots_talent VALUES (511,23,13,'Queen''s Rush',50,'Activate to increase your Movement Speed by 30% for 4 seconds. Queen''s Rush is also applied for free on Takedowns.');
INSERT INTO hots_talent VALUES (512,23,16,'Aggressive Defense',0,'Increases base Shield amount gained from Assimilation by 100%.');
INSERT INTO hots_talent VALUES (513,23,16,'Essence for Essence',60,'Activate to deal 10% of target enemy Hero''s Max Health and gain Assimilation Shields for twice that amount.');
INSERT INTO hots_talent VALUES (514,23,16,'Overdrive',25,'Activate to increase Ability Power by 25% and Mana costs by 40% for 5 seconds.');
INSERT INTO hots_talent VALUES (515,23,20,'Omegastorm',0,'Maelstrom size increased by 25% . Amount of Assimilation Shields generated by Maelstrom increased by 100%.');
INSERT INTO hots_talent VALUES (516,23,20,'Torrasque',0,'The Ultralisk morphs into an egg when it dies. If the egg isn''t killed within 4 seconds, a new Ultralisk is born.');
INSERT INTO hots_talent VALUES (517,23,20,'Nexus Blades',0,'Basic Attacks deal 20% more damage and slow enemy Movement Speed by 20% for 1 second.');
INSERT INTO hots_talent VALUES (518,23,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (519,24,1,'Transcendence',0,'Every 3rd Basic Attack heals the lowest nearby allied Hero for 160 (76 + 4% per level).');
INSERT INTO hots_talent VALUES (520,24,1,'Iron Fists',0,'Every 3rd Basic Attack deals 125% bonus damage and gives 30% increased Move Speed for 2 seconds.');
INSERT INTO hots_talent VALUES (521,24,1,'Insight',0,'Quest: Every 3rd Basic Attack restores 31 (15 + 4% per level) Mana and grants a stack of Insight. Reward: Once you have 100 stacks of Insight, every 3rd attack also reduces the cooldown of all your Basic Abilities by 1 second.');
INSERT INTO hots_talent VALUES (522,24,4,'Spirit Ally',45,'Place a Spirit Ally that heals allies in a large area around it for 2% of their maximum Health every second. Has 316 (150 + 4% per level) Health and lasts 10 seconds. You can Radiant Dash to Spirit Allies.');
INSERT INTO hots_talent VALUES (523,24,4,'Earth Ally',30,'Place an Earth Ally that reduces Heroic Basic Attack damage nearby allied Heroes receive by 50%. Has 843 (400 + 4% per level) Health and lasts 10 seconds. Kharazim can Radiant Dash to Earth Allies.');
INSERT INTO hots_talent VALUES (524,24,4,'Air Ally',20,'Place an Air Ally that grants vision of a large area around it. Has 158 (75 + 4% per level) Health, lasts 40 seconds, and stores up to 2 charges. Kharazim can Radiant Dash to Air Allies.');
INSERT INTO hots_talent VALUES (525,24,7,'Blinding Speed',0,'Decreases Radiant Dash''s cooldown by 2 seconds and increases the maximum number of charges by 1.');
INSERT INTO hots_talent VALUES (526,24,7,'Heavenly Zeal',0,'Increases Breath of Heaven''s Movement Speed bonus from 10% to 25%.');
INSERT INTO hots_talent VALUES (527,24,7,'Blazing Fists',0,'Every 3rd Basic Attack reduces the cooldown of Deadly Reach by 0.75 seconds.');
INSERT INTO hots_talent VALUES (528,24,10,'Divine Palm',0,'Protect an allied Hero from death, causing them to be healed for 2501 (1187 + 4% per level) if they take fatal damage in the next 3 seconds.');
INSERT INTO hots_talent VALUES (529,24,10,'Seven-Sided Strike',0,'Become Invulnerable and strike 7 times over 1.81 seconds. Each strike hits the highest Health nearby Hero for 7% of their maximum Health.');
INSERT INTO hots_talent VALUES (530,24,13,'Quicksilver',0,'Radiant Dashing to an ally gives you and the target 30% bonus Movement Speed for 3 seconds.');
INSERT INTO hots_talent VALUES (531,24,13,'Fists of Fury',0,'Increases Deadly Reach''s duration by 100%.');
INSERT INTO hots_talent VALUES (532,24,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. This can only trigger once every 30 seconds.Can be toggled to allow or prevent this talent from triggering.');
INSERT INTO hots_talent VALUES (533,24,13,'Sixth Sense',0,'While stunned or rooted, Block all Basic Attacks, reducing their damage by 75% for 4 seconds.');
INSERT INTO hots_talent VALUES (534,24,16,'Cleansing Touch',0,'Radiant Dashing to an ally makes them Unstoppable for 1 second.');
INSERT INTO hots_talent VALUES (535,24,16,'Way of the Hundred Fists',0,'Radiant Dashing to an enemy launches a rapid volley of 6 Basic Attacks dealing 50% damage each.');
INSERT INTO hots_talent VALUES (536,24,16,'Echo of Heaven',0,'Breath of Heaven heals 75% of its normal amount, but heals a second time 3 seconds later.');
INSERT INTO hots_talent VALUES (537,24,16,'Dash of Light',0,'Radiant Dashing to an ally increases the healing they receive from Breath of Heaven by 50% for 3 seconds.');
INSERT INTO hots_talent VALUES (538,24,20,'Peaceful Repose',0,'Divine Palm''s cooldown is set to 5 seconds if the Hero does not die.');
INSERT INTO hots_talent VALUES (539,24,20,'Transgression',0,'Seven-Sided Strike hits 4 additional times.');
INSERT INTO hots_talent VALUES (540,24,20,'Storm Shield',45,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (541,24,20,'Epiphany',60,'Activate to restore 32.81% of your maximum Mana and refill 2 charges of Radiant Dash.');
INSERT INTO hots_talent VALUES (542,25,1,'Mana Thirst',0,'Skeletal Swing restores 10 Mana per enemy hit.');
INSERT INTO hots_talent VALUES (543,25,1,'Hopelessness',0,'Increases the range of Drain Hope by 20%.');
INSERT INTO hots_talent VALUES (544,25,1,'Block',0,'Every 5 seconds, you can Block a Basic Attack from an enemy Hero reducing its damage by 50%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (545,25,1,'Reanimation',0,'You can gather Regeneration Globes while Undying. Quest: Gathering a Regeneration Glove increases your Health Regeneration by 1 per second, up to 30 per second. Reward: After gathering 30 Globes, you also respawn 10 seconds faster.');
INSERT INTO hots_talent VALUES (546,25,4,'Fealty Unto Death',0,'When a nearby Minion dies, you restore 1% of your maximum Health and 5 Mana. Half as effective while Undying.');
INSERT INTO hots_talent VALUES (547,25,4,'Willing Vessel',0,'Increases the healing from Drain Hope to 25% of your maximum Health and Drain Essence to 12.5% of your maximum Health.');
INSERT INTO hots_talent VALUES (548,25,4,'Hardened Bones',0,'During Wraith Walk, you take 25% less damage.');
INSERT INTO hots_talent VALUES (549,25,4,'Royal Focus',0,'If your body takes no damage during Wraith Walk''s duration, the cooldown is reduced to 4 seconds.');
INSERT INTO hots_talent VALUES (550,25,7,'Ghastly Reach',0,'Increases the range of Skeletal Swing by 25%.');
INSERT INTO hots_talent VALUES (551,25,7,'Lingering Apparition',0,'Increases the duration of Wraith Walk by 80%.');
INSERT INTO hots_talent VALUES (552,25,7,'Paralyzing Rage',0,'Increases the Movement Speed slow of Skeletal Swing to 60%.');
INSERT INTO hots_talent VALUES (553,25,7,'Ossein Renewal',0,'Activate to heal 20% of your maximum life over 6 seconds. Half as effective while Undying.');
INSERT INTO hots_talent VALUES (554,25,10,'Entomb',0,'Create an unpathable tomb in front of you for 4 seconds.');
INSERT INTO hots_talent VALUES (555,25,10,'March of the Black King',0,'Become Unstoppable and swing your mace three times, healing yourself for 7.03% of your maximum Health for each enemy Hero hit and dealing 401 (191 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (556,25,13,'Burning Rage',0,'Deal 23 damage per second to nearby enemies.');
INSERT INTO hots_talent VALUES (557,25,13,'Crushing Hope',0,'If Drain Hope lasts its full duration, it deals bonus damage equal to 10% of the victim''s Maximum Health. This damage does not heal you.');
INSERT INTO hots_talent VALUES (558,25,13,'Drain Momentum',0,'Drain Hope now increases your Movement Speed by 10% instead of reducing it.');
INSERT INTO hots_talent VALUES (559,25,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (560,25,16,'Renewed Swing',0,'Skeletal Swing can be recast again for free within 3 seconds for 50% damage.');
INSERT INTO hots_talent VALUES (561,25,16,'Consume Vitality',0,'Skeletal Swing heals you for 2% of your maximum Health per target hit, up to 10%. Half as effective while Undying.');
INSERT INTO hots_talent VALUES (562,25,16,'Unyielding Despair',0,'Every second Drain Hope is active, its cooldown is reduced by 1 second.');
INSERT INTO hots_talent VALUES (563,25,16,'Imposing Presence',0,'Enemies that attack you have their Attack Speed slowed by 40%.');
INSERT INTO hots_talent VALUES (564,25,20,'Buried Alive',0,'Enemies inside Entomb take 198 (94 + 4% per level) damage per second.');
INSERT INTO hots_talent VALUES (565,25,20,'Death March',0,'Your final swing of March of the Black King also applies the base version of Drain Hope to all enemy Heroes in a large area.');
INSERT INTO hots_talent VALUES (566,25,20,'Spectral Leech',0,'Basic Attacks against enemy Heroes deal bonus damage equal to 5% of the Hero''s maximum Health and heal you for the same amount.');
INSERT INTO hots_talent VALUES (567,25,20,'Hardened Shield',0,'Activate to reduce damage taken by 75% for 4 seconds.');
INSERT INTO hots_talent VALUES (568,26,1,'Conjurer''s Pursuit',0,'Quest: Gathering Regeneration Globes increases your Mana Regeneration by 0.1 per second, up to 2.54 per second. Reward: After gathering 25 Globes, also increase your maximum Mana by 100.');
INSERT INTO hots_talent VALUES (569,26,1,'Pro Toss',0,'Increases the range of Healing Brew by 30%.');
INSERT INTO hots_talent VALUES (570,26,1,'Timeless Creature',0,'Increases the duration of Cloud Serpent by 50%.');
INSERT INTO hots_talent VALUES (571,26,1,'Gale Force',0,'Increases Blinding Wind damage by 50%.');
INSERT INTO hots_talent VALUES (572,26,4,'Healing Ward',0,'Activate to place a ward on the ground that heals allies in an area for 1.95% of their max Health every second for 10 seconds.');
INSERT INTO hots_talent VALUES (573,26,4,'Mending Serpent',0,'Cloud Serpent heals the friendly unit for 22 Health each time it attacks.');
INSERT INTO hots_talent VALUES (574,26,4,'Mass Vortex',0,'Increases the number of enemies hit by Blinding Wind from 2 to 4.');
INSERT INTO hots_talent VALUES (575,26,4,'Lingering Blind',0,'Increases the duration of Blinding Wind by 50%.');
INSERT INTO hots_talent VALUES (576,26,7,'Pitch Perfect',0,'After casting Healing Brew, its cost is reduced by 10 Mana for 6 seconds. This effect does not stack.');
INSERT INTO hots_talent VALUES (577,26,7,'The Good Stuff',0,'Healing Brew heals for an additional 60 Health over 6 seconds.');
INSERT INTO hots_talent VALUES (578,26,7,'Lightning Serpent',0,'Cloud Serpent''s attacks bounce to 3 nearby enemy targets, dealing 15 damage each.');
INSERT INTO hots_talent VALUES (579,26,7,'Cleanse',0,'Activate to make target ally Unstoppable for 1 second. Cannot be cast on yourself.');
INSERT INTO hots_talent VALUES (580,26,10,'Jug of 1,000 Cups',0,'Rapidly tosses brew to the most injured nearby allies, prioritizing Heroes, restoring a total of 1632 Health over 6 seconds.');
INSERT INTO hots_talent VALUES (581,26,10,'Water Dragon',0,'Summon a Water Dragon that after a delay hits the nearest enemy Hero and all enemies near them, dealing 318 damage and slowing their Movement Speed by 70% for 4 seconds.');
INSERT INTO hots_talent VALUES (582,26,13,'Elusive Feet',0,'When Fast Feet is triggered, gain 2 charges of Block (75% reduced Basic Attack damage) for 10 seconds. Can only trigger once every 10 seconds.');
INSERT INTO hots_talent VALUES (583,26,13,'Hindering Winds',0,'Blinding Wind also slows enemy Movement Speed by 25% for 2 seconds.');
INSERT INTO hots_talent VALUES (584,26,13,'Surging Winds',0,'Gain 5% Ability Power for 8 seconds for every enemy hit by Blinding Wind. Additional enemies hit refresh the duration of this buff and further increase Ability Power. Stacks up to 4 times.');
INSERT INTO hots_talent VALUES (585,26,13,'Shrink Ray',0,'Activate to reduce an enemy Hero''s damage by 50% and Movement Speed by 50% for 4 seconds.');
INSERT INTO hots_talent VALUES (586,26,16,'Shake It Off',0,'Reduces the duration of the next Stun or Root against you by 75%. Can only trigger once every 15 seconds.');
INSERT INTO hots_talent VALUES (587,26,16,'Safety Sprint',0,'Increase the Movement Speed bonus of Fast Feet from 10% to 20% while under 50% Health.');
INSERT INTO hots_talent VALUES (588,26,16,'Two For One',0,'Increases the number of allies healed by Healing Brew to 2, but increases the cooldown by 1.5 seconds.');
INSERT INTO hots_talent VALUES (589,26,16,'Serpent Sidekick',0,'You also gain a Cloud Serpent whenever you cast it on another ally.');
INSERT INTO hots_talent VALUES (590,26,20,'Jug of 1,000,000 Cups',0,'Jug of 1,000 Cups hits two targets at a time.');
INSERT INTO hots_talent VALUES (591,26,20,'Double Dragon',0,'After hitting a target with Water Dragon, another dragon is summoned at the point of impact.');
INSERT INTO hots_talent VALUES (592,26,20,'Kung Fu Hustle',0,'Ability cooldowns refresh 150% faster while Fast Feet is active.');
INSERT INTO hots_talent VALUES (593,26,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (594,26,20,'Bolt of the Storm',0,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (595,27,1,'Astral Presence',0,'Your Mana regeneration is increased by 100% while below 25% Mana.');
INSERT INTO hots_talent VALUES (596,27,1,'Power Hungry',0,'Regeneration Globes restore 100% more Mana and grant 10% Ability Power for 20 seconds.');
INSERT INTO hots_talent VALUES (597,27,1,'Force Armor',0,'When Magic Missiles damages an enemy Hero, gain 50 Spell Armor against the next enemy Ability, reducing the damage taken by 50%. Can only gain 1 charge per cast, up to 4 charges maximum.');
INSERT INTO hots_talent VALUES (598,27,1,'Aether Walker',0,'If you haven''t taken damage in the last 5 seconds, Teleport costs no Mana and its cooldown is decreased by 2 seconds.');
INSERT INTO hots_talent VALUES (599,27,4,'Charged Blast',0,'Basic Attacking a target recently hit by a Magic Missile does an extra 191 (91 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (600,27,4,'Triumvirate',0,'If Arcane Orb hits an enemy Hero after traveling at least 50% of its base range, the cooldown is reduced by 50%.');
INSERT INTO hots_talent VALUES (601,27,4,'Dominance',0,'Takedowns restore 20% of your maximum Health.');
INSERT INTO hots_talent VALUES (602,27,7,'Seeker',0,'If three Magic Missiles hit the same target, the third one deals an additional 274 (130 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (603,27,7,'Zei''s Vengeance',0,'Arcane Orb does up to 25% more damage to enemies based on distance. Additionally, it''s cooldown is reduced by 2 seconds.');
INSERT INTO hots_talent VALUES (604,27,7,'Calamity',0,'Teleport does 542 (309 + 3% per level) damage to enemy Heroes near your destination.');
INSERT INTO hots_talent VALUES (605,27,10,'Disintegrate',0,'Channel a powerful beam, dealing 1168 (462 + 5% per level) damage over 2.5 seconds to enemies while they are in it. The direction of the beam changes with your mouse cursor position.');
INSERT INTO hots_talent VALUES (606,27,10,'Wave of Force',0,'Knock away all enemies from an area and deal 425 (168 + 5% per level) damage.');
INSERT INTO hots_talent VALUES (607,27,13,'Cannoneer',0,'When you use an Ability, increase your next Basic Attack by 75% and cause it to deal Ability damage. Stacks up to 3 times.');
INSERT INTO hots_talent VALUES (608,27,13,'Glass Cannon',0,'Increases your Ability Power by 15%, but decreases your maximum Health by 15%.');
INSERT INTO hots_talent VALUES (609,27,13,'Illusionist',0,'Increases Teleport range by 50%, and if you lose more than 20% of your Health at once, its cooldown is instantly refreshed. This cannot happen more than once every 4 seconds.');
INSERT INTO hots_talent VALUES (610,27,16,'Fireflies',0,'Drastically increases Magic Missiles speed. Its cooldown is reduced by 1 second and its Mana cost is reduced by 5.');
INSERT INTO hots_talent VALUES (611,27,16,'Mirrorball',0,'Magic Missiles fires an additional 2 missiles, but its Mana cost is increased by 5.');
INSERT INTO hots_talent VALUES (612,27,16,'Arcane Orbit',0,'Arcane Orb travels 25% farther, doing up to 25% more damage.');
INSERT INTO hots_talent VALUES (613,27,16,'Diamond Skin',0,'When you Teleport, gain 20% of your maximum Health as a Shield for 4 seconds.');
INSERT INTO hots_talent VALUES (614,27,20,'Temporal Flux',0,'Disintegrate gradually slows enemies caught in its beam, to a maximum of 60%.');
INSERT INTO hots_talent VALUES (615,27,20,'Repulsion',0,'Increases Wave of Force knockback distance by 150% and increases its cast range by 100%.');
INSERT INTO hots_talent VALUES (616,27,20,'Tal Rasha''s Elements',0,'Using abilities grants 5% Ability Power, up to a maximum of 20%. This bonus is reset when the same ability is used within a chain.');
INSERT INTO hots_talent VALUES (617,27,20,'Archon: Pure Power',0,'Activate to enter Archon form, allowing you to repeatedly use Disintegrate, but be unable to cast other Abilities.');
INSERT INTO hots_talent VALUES (618,28,1,'Olaf the Stout',0,'Every 8 seconds Olaf can block a Basic Attack, reducing its damage by 75%. Can store up to 2 charges.');
INSERT INTO hots_talent VALUES (619,28,1,'Spy Games',0,'After standing still for 3 seconds, Erik gains Stealth and his Sight Radius is increased by 75%. The Stealth persists for 3 seconds after moving.');
INSERT INTO hots_talent VALUES (620,28,1,'Explosive Attacks',0,'Increases Baleog?s splash damage against non-Heroic enemies to 100%.');
INSERT INTO hots_talent VALUES (621,28,1,'Viking Bribery',0,'Enemy Minions or captured Mercenaries killed near your Hero grant you stacks of Viking Bribery. Use 40 stacks to bribe target Mercenary, instantly defeating them. Does not work on Bosses. Maximum stacks available: 100.Current number of Viking Bribery stacks:');
INSERT INTO hots_talent VALUES (622,28,4,'Pain Don''t Hurt',0,'Baleog''s Basic Attacks and splash damage heal for 20% of the damage dealt. Healing is doubled against Heroes.');
INSERT INTO hots_talent VALUES (623,28,4,'Erik the Swift',0,'Permanently increases Erik''s base Movement Speed by 10%, and as long as Erik is moving he heals 34 Health per second.');
INSERT INTO hots_talent VALUES (624,28,4,'It''s a Sabotage!',0,'Erik''s Basic Attacks against Structures destroy 5 Ammo and deal 135 damage over 10 seconds.');
INSERT INTO hots_talent VALUES (625,28,4,'Mercenary Lord',0,'Non-Boss Mercenaries near your hero deal 50% more damage. Reduces damage taken from Minions and Mercenaries by 50%.');
INSERT INTO hots_talent VALUES (626,28,7,'Baleog the Fierce',0,'Baleog''s Basic Attacks increase his Attack Speed by 8%, stacking up to 5 times. After 3 seconds of not attacking, these stacks will rapidly decay.');
INSERT INTO hots_talent VALUES (627,28,7,'Spin To Win!',0,'Activate to have each Viking deal 101 damage to nearby enemies.');
INSERT INTO hots_talent VALUES (628,28,7,'Norse Force!',0,'All Vikings gain a 110 to 220 point Shield, increasing in strength for each Viking alive. Lasts 4 seconds.');
INSERT INTO hots_talent VALUES (629,28,7,'Norse Force',30,'All Vikings gain a 240 (50 + 10 per level) to 480 (100 + 20 per level) point Shield, increasing in strength for each Viking alive. Lasts 4 seconds.');
INSERT INTO hots_talent VALUES (630,28,10,'Longboat Raid!',0,'Hop into an Unstoppable Longboat that fires at nearby enemies for 112 damage per second and can fire a mortar that deals 205 damage in an area. The boat has increased Health for each Viking inside. If the boat is destroyed by enemies, all Vikings are stunned for 1.5 seconds. Lasts 15 seconds.Requires all surviving Vikings to be nearby.');
INSERT INTO hots_talent VALUES (631,28,10,'Play Again!',0,'Summon, fully heal, and revive all Lost Vikings at target location after a Viking channels for 2 seconds. Only one Viking may attempt to summon at a time.');
INSERT INTO hots_talent VALUES (632,28,13,'Hunka'' Burning Olaf',0,'Olaf deals 34 damage every second to nearby enemies.');
INSERT INTO hots_talent VALUES (633,28,13,'Jump!',0,'Makes all Vikings Invulnerable and able to pass over enemies for 1.5 seconds.');
INSERT INTO hots_talent VALUES (634,28,13,'Nordic Attack Squad',0,'Activate to have all Viking Basic Attacks deal bonus damage equal to 1% of a Hero''s maximum Health for 5 seconds.');
INSERT INTO hots_talent VALUES (635,28,16,'Large and In Charge',0,'When Olaf charges enemies, they are stunned for 1 second.');
INSERT INTO hots_talent VALUES (636,28,16,'Impatience Is a Virtue',0,'Enemies damaged by a Viking''s Basic Attack reduce the cooldown of all Viking Abilities by 0.25 seconds.');
INSERT INTO hots_talent VALUES (637,28,16,'64 KB Marathon',0,'Gain an additional 40% Movement Speed when activating Go Go Go! that decays over 4 seconds. Additionally, the Vikings will break out of Roots and Slows.');
INSERT INTO hots_talent VALUES (638,28,16,'Executioner',0,'Basic Attacks deal 40% more damage against slowed, rooted, or stunned targets.');
INSERT INTO hots_talent VALUES (639,28,20,'Ragnarok ''n'' Roll!',0,'The Longboat can attack two targets at once and the range of its Mortar is increased by 100%.');
INSERT INTO hots_talent VALUES (640,28,20,'Checkpoint Reached',0,'10 seconds after using Play Again!, any dead Vikings are revived and summoned again, and all are healed to full.');
INSERT INTO hots_talent VALUES (641,28,20,'The Sequel!',0,'Reduces the Lost Vikings'' death timer by 50%.');
INSERT INTO hots_talent VALUES (642,28,20,'Fury of the Storm',0,'Every 5 seconds, your next Basic Attack will deal an additional 41 damage to the target, and 105 damage to all nearby Minions and Mercenaries. Each Viking has their own cooldown.');
INSERT INTO hots_talent VALUES (643,29,1,'Prolonged Safeguard',0,'Increases Safeguard''s duration by 1 second.');
INSERT INTO hots_talent VALUES (644,29,1,'Trauma Trigger',0,'You gain an untalented Safeguard automatically if you take damage while below 50% Health. This effect has a 20 second cooldown.');
INSERT INTO hots_talent VALUES (645,29,1,'Feedback Loop',0,'When Safeguard expires, 45 Mana is refunded.');
INSERT INTO hots_talent VALUES (646,29,1,'Scouting Drone',0,'Places a Scouting Drone at target location, revealing a large area around it for 45 seconds. This drone cannot be hidden and is killed by enemies with 2 Basic Attacks. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (647,29,4,'Bioshield',0,'If your target is at full Health, they gain a Shield that absorbs 78 damage, stacking up to 5 times.');
INSERT INTO hots_talent VALUES (648,29,4,'Advanced Block',0,'Periodically reduces the damage received from Hero Basic Attacks by 50%. Stores up to 3 charges.');
INSERT INTO hots_talent VALUES (649,29,4,'Upgraded Ballistics',0,'Displacement Grenade travels 50% faster and enemies directly impacted take 33% more damage.');
INSERT INTO hots_talent VALUES (650,29,4,'Infused Grenade',0,'Displacement Grenade''s Mana cost is refunded if you hit an enemy Hero.');
INSERT INTO hots_talent VALUES (651,29,7,'Clear!',0,'Displacement Grenade''s explosion radius increased by 33% and knocks back farther.');
INSERT INTO hots_talent VALUES (652,29,7,'Irradiate',0,'Enemies near your Healing Beam''s target take 22 damage a second.');
INSERT INTO hots_talent VALUES (653,29,7,'Calldown: MULE',0,'Activate to calldown a Mule that repairs Structures, one at a time, near target point for 40 seconds, healing for 100 Health every 1 second. Grants 1 ammo every 3 seconds.');
INSERT INTO hots_talent VALUES (654,29,7,'Cleanse',0,'Activate to remove all stuns, roots, silences, and slows from the target and reduce the duration of their reapplication by 50% for 2 seconds.');
INSERT INTO hots_talent VALUES (655,29,10,'Stim Drone',0,'Grant an allied Hero 75% Attack Speed and 25% Movement Speed for 10 seconds.');
INSERT INTO hots_talent VALUES (656,29,10,'Medivac Dropship',0,'Target a location for a Medivac transport. For up to 10.5 seconds before takeoff, allies can right-click to enter the Medivac.');
INSERT INTO hots_talent VALUES (657,29,13,'Intensive Care',0,'When Healing Beam is on a single target for over 3 seconds, its healing amount increases by 25% and Mana cost increases by 4.');
INSERT INTO hots_talent VALUES (658,29,13,'Couples Therapy',0,'While channeling Healing Beam you are healed for 25% of the healing amount at the cost of an additional 4 Mana per second.');
INSERT INTO hots_talent VALUES (659,29,13,'Preventative Care',0,'Basic Attacks against your Healing Beam target reduce the attacker''s Attack Speed by 25% for 2.5 seconds.');
INSERT INTO hots_talent VALUES (660,29,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (661,29,16,'Shield Sequencer',0,'After casting Safeguard, you can cast it a second time within 3 seconds at no cost.');
INSERT INTO hots_talent VALUES (662,29,16,'System Shock',0,'Displacement Grenade slows enemies by 50% for 4 seconds. The slow amount decays over its duration.');
INSERT INTO hots_talent VALUES (663,29,16,'Second Opinion',0,'Reduces Displacement Grenade''s cooldown by 2 seconds and it now holds a second charge.');
INSERT INTO hots_talent VALUES (664,29,20,'Transfusion',0,'Increases the duration of Stim Drone by 2 seconds. You also gain the effect of Stim Drone when cast on an ally.');
INSERT INTO hots_talent VALUES (665,29,20,'Medbay',0,'Medivac heals nearby allies and everyone aboard for 137 Health per second.');
INSERT INTO hots_talent VALUES (666,29,20,'Caduceus Reactor 2.0',0,'While Caduceus Reactor is active you restore 8 Mana a second and gain a Shield that absorbs 96 damage, stacking up to 5 times.');
INSERT INTO hots_talent VALUES (667,29,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (668,30,1,'Blossom Swell',0,'Increases Noxious Blossom''s radius by 20%.');
INSERT INTO hots_talent VALUES (669,30,1,'Photosynthesis',0,'Crippling Spores returns 10 Mana per enemy hit, up to 40 Mana.');
INSERT INTO hots_talent VALUES (670,30,1,'Natural Perspective',0,'Nature''s Toxin reveals enemies for its duration.');
INSERT INTO hots_talent VALUES (671,30,1,'Cruel Spores',0,'When Crippling Spores hits only Minions or Mercenaries, its cooldown is reduced by 80% and 20 mana is restored.');
INSERT INTO hots_talent VALUES (672,30,4,'Nimble Wisp',0,'Increases Wisp Movement Speed by 100% and vision radius by 50%.');
INSERT INTO hots_talent VALUES (673,30,4,'Timelost Wisp',0,'Wisp costs no Mana and its cooldown recharges 125% faster while no Wisp is active.');
INSERT INTO hots_talent VALUES (674,30,4,'Skybound Wisp',0,'Wisp can see over obstacles and reveals the area for 4 seconds after dying.');
INSERT INTO hots_talent VALUES (675,30,4,'Dividing Wisp',0,'The first time you relocate a Wisp it leaves a copy of itself in the previous location.');
INSERT INTO hots_talent VALUES (676,30,7,'Siphoning Toxin',0,'As long as you have Nature''s Toxin active on an enemy you heal for 40 (19 + 4% per level) Health a second.');
INSERT INTO hots_talent VALUES (677,30,7,'Wild Vigor',0,'Using Crippling Spores increases the damage of your next 4 Basic Attacks by 50%.');
INSERT INTO hots_talent VALUES (678,30,7,'Splintered Spear',0,'Using Noxious Blossom causes your next Basic Attack to hit up to 4 enemies. These extra attacks can apply Nature''s toxin.');
INSERT INTO hots_talent VALUES (679,30,7,'Nature''s Culling',0,'Increases Nature''s Toxin''s damage by 150% to non-Heroic enemies.');
INSERT INTO hots_talent VALUES (680,30,10,'Thornwood Vine',0,'Send forth vines that deal 360 (171 + 4% per level) damage to all enemies in a line. Can hold 3 charges.');
INSERT INTO hots_talent VALUES (681,30,10,'Leaping Strike',0,'Leap over an enemy, slowing them by 80% for 0.35 seconds and attacking for 594 (286 + 4% per level) damage. Has 2 charges.');
INSERT INTO hots_talent VALUES (682,30,13,'Pestering Blossom',0,'Increases Noxious Blossom''s range by 50%.');
INSERT INTO hots_talent VALUES (683,30,13,'Unfair Advantage',0,'Nature''s Toxin deals 50% more damage to Heroes that are slowed.');
INSERT INTO hots_talent VALUES (684,30,13,'Giant Killer',0,'Basic Attacks against enemy Heroes deal bonus damage equal to 1.5% of the Hero''s maximum Health.');
INSERT INTO hots_talent VALUES (685,30,13,'Greater Spell Shield',0,'Every 30 seconds, gain 75 Spell Armor against the next enemy Ability and subsequent Abilities for 1.5 seconds, reducing the damage taken by 75%. Can be toggled to allow or prevent this talent from triggering automatically.');
INSERT INTO hots_talent VALUES (686,30,16,'Choking Pollen',0,'Increases Noxious Blossom damage by 125% against enemies afflicted with Nature''s Toxin.');
INSERT INTO hots_talent VALUES (687,30,16,'Star Wood Spear',0,'Using Crippling Spores increases your Basic Attacks range by 50% for 6 seconds.');
INSERT INTO hots_talent VALUES (688,30,16,'Invigorating Spores',0,'Using Crippling Spores increases your Attack Speed by 50% for 6 seconds.');
INSERT INTO hots_talent VALUES (689,30,16,'Let Them Wither',0,'Increases Crippling Spores'' slow to 50%, and causes it to no longer decay.');
INSERT INTO hots_talent VALUES (690,30,20,'Forest''s Wrath',0,'Increases Thornwood Vine''s range by 30%, its speed by 20%, and your vision radius by 35%.');
INSERT INTO hots_talent VALUES (691,30,20,'Boundless Stride',0,'All Leaping Strike charges are returned every 20 seconds. You can also use Leaping Strike on allies.');
INSERT INTO hots_talent VALUES (692,30,20,'Galloping Gait',0,'Activate to increase the Movement Speed bonus of Dryad''s Swiftness to 80% for 6 seconds.');
INSERT INTO hots_talent VALUES (693,30,20,'Abolish Magic',35,'Target an Ally to remove all damage over time and disabling effects from them and yourself. For 2 seconds after, the duration of disabling effects is reduced by 50%.');
INSERT INTO hots_talent VALUES (694,31,1,'Shan''do''s Clarity',0,'Reduces Innervate''s cooldown by 10 seconds.');
INSERT INTO hots_talent VALUES (695,31,1,'Moonburn',0,'Increases Moonfire''s damage to Minions and Mercenaries by 100%.');
INSERT INTO hots_talent VALUES (696,31,1,'Scouting Drone',45,'Places a Scouting Drone at target location, revealing a large area around it for 45 seconds. This drone cannot be hidden and is killed by enemies with 2 Basic Attacks. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (697,31,4,'Elune''s Grace',0,'Increases the range of Regrowth, Moonfire, and Entangling Roots by 30%.');
INSERT INTO hots_talent VALUES (698,31,4,'Versatile',0,'Increases the Mana return of Innervate to 25%.');
INSERT INTO hots_talent VALUES (699,31,4,'Vengeful Roots',0,'Entangling Roots also spawns a Treant that does 141 (67 + 4% per level) damage per second and lasts 10 seconds.');
INSERT INTO hots_talent VALUES (700,31,7,'Strangling Vines',0,'Entangling Roots deals 100% more damage.');
INSERT INTO hots_talent VALUES (701,31,7,'Calldown: MULE',60,'Activate to calldown a Mule that repairs Structures, one at a time, near target point for 40 seconds, healing for 100 Health every 1 second. Grants 1 ammo every 3 seconds.');
INSERT INTO hots_talent VALUES (702,31,7,'Cleanse',60,'Activate to remove all stuns, roots, silences, and slows from the target and reduce the duration of their reapplication by 50% for 2 seconds.');
INSERT INTO hots_talent VALUES (703,31,10,'Tranquility',100,'Heals 176 (84 + 4% per level) Health per second to nearby allies over 10 seconds.');
INSERT INTO hots_talent VALUES (704,31,10,'Twilight Dream',90,'After a short delay, deal 820 (389 + 4% per level) damage in a large area around you, silencing enemies making them unable to use Abilities for 3 seconds. Also passively increases your Mana Regeneration by 1.5.');
INSERT INTO hots_talent VALUES (705,31,13,'Life Seed',0,'Nearby damaged allied Heroes will automatically gain the heal over time portion of Regrowth. This effect has a 20 second cooldown.');
INSERT INTO hots_talent VALUES (706,31,13,'Full Moonfire',0,'Increases Moonfire''s radius by 60% and reduces its Mana cost by 50%.');
INSERT INTO hots_talent VALUES (707,31,13,'Shrink Ray',0,'Activate to reduce an enemy Hero''s damage by 50% and Movement Speed by 50% for 4 seconds.');
INSERT INTO hots_talent VALUES (708,31,13,'Ice Block',60,'Activate to place yourself in Stasis and gain Invulnerability for 3 seconds.');
INSERT INTO hots_talent VALUES (709,31,16,'Hardened Focus',0,'While above 80% life, your Basic Ability cooldowns regenerate 50% faster.');
INSERT INTO hots_talent VALUES (710,31,16,'Tenacious Roots',0,'Entangling Roots grows 25% larger, lasts 25% longer, and roots targets for 0.5 seconds longer.');
INSERT INTO hots_talent VALUES (711,31,16,'Hindering Moonfire',0,'Moonfire slows targets by 25% for 2 seconds.');
INSERT INTO hots_talent VALUES (712,31,16,'Lunar Shower',0,'Using Moonfire reduces the cooldown of your next Moonfire by 0.5 seconds, and increases the damage by 15%. Stacks up to 3 times and resets after 6 seconds.');
INSERT INTO hots_talent VALUES (713,31,20,'Serenity',0,'Increases Tranquility''s healing by 25% and it also restores 5 Mana per second.');
INSERT INTO hots_talent VALUES (714,31,20,'Nightmare',0,'Increases Twilight Dream''s silence duration to 4 seconds and it also slows enemies by 50%.');
INSERT INTO hots_talent VALUES (715,31,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (716,31,20,'Rewind',60,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (717,31,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (718,32,1,'Stable Portal',0,'Increases Portal duration by 50%.');
INSERT INTO hots_talent VALUES (719,32,1,'Portal Mastery',0,'Medivh can manually place both Portal locations. Activate your Trait to cancel an unliked Portal.');
INSERT INTO hots_talent VALUES (720,32,1,'Raven''s Intellect',0,'Raven Form increases Medivh''s Mana Regeneration by 100%.');
INSERT INTO hots_talent VALUES (721,32,4,'Mage Armor',0,'Allies gain Block the first time they use a Portal reducing damage taken from the next 3 enemy Heroic Basic Attacks by 50%. Lasts 5 seconds.');
INSERT INTO hots_talent VALUES (722,32,4,'Bird''s Eye View',0,'Permanently increase Raven Form''s vision range by 25%. Activate to increase this bonus to 200% for 5 seconds.');
INSERT INTO hots_talent VALUES (723,32,4,'Dust of Appearance',0,'Activate to reveal enemy Heroes in the area surrounding Medivh for 10 seconds. Does not cancel Raven Form.');
INSERT INTO hots_talent VALUES (724,32,7,'Arcane Charge',0,'When Arcane Rift damages an enemy Hero, the next Arcane Rift deals 25% more damage.');
INSERT INTO hots_talent VALUES (725,32,7,'The Master''s Touch',0,'Quest: Hit 30 enemy Heroes with Arcane Rift without dying. Reward: Permanently increases the damage dealt by 75 and cooldown reduction for hitting a Hero by 1 second.');
INSERT INTO hots_talent VALUES (726,32,7,'Arcane Explosion',0,'The first time Force of Will absorbs damage, it deals 401 (191 + 4% per level) damage to nearby enemies.');
INSERT INTO hots_talent VALUES (727,32,7,'Raven Familiar',0,'A Raven Familiar joins allies that use a Portal. The Raven will dive at the ally''s next Basic Attack target for 250 (119 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (728,32,10,'Poly Bomb',0,'Polymorph an enemy Hero, suppressing their attacks and Silecing them for 2 seconds. On expiration, Poly Bomb spreads to other nearby enemy Heroes.');
INSERT INTO hots_talent VALUES (729,32,10,'Ley Line Seal',0,'After 0.5 seconds, unleash a wave of energy that imprisons enemy Heroes in Stasis for 3 seconds.');
INSERT INTO hots_talent VALUES (730,32,13,'Quickening',0,'Reduces Portal cooldown by 50%.');
INSERT INTO hots_talent VALUES (731,32,13,'Astral Projection',0,'Increases Portal cast range by 50%.');
INSERT INTO hots_talent VALUES (732,32,13,'Winds of Celerity',0,'Increases Raven Form''s Movement Speed bonus by 50%.');
INSERT INTO hots_talent VALUES (733,32,16,'Circle of Protection',0,'An untalented Force of Will is also applied to allies near the target.');
INSERT INTO hots_talent VALUES (734,32,16,'Enduring Will',0,'Increases Force of Will duration by 33.33%');
INSERT INTO hots_talent VALUES (735,32,16,'Reabsorption',0,'Upon expiration, Force of Will heals the target for 50% of the damage it absorbed.');
INSERT INTO hots_talent VALUES (736,32,20,'Glyph of Poly Bomb',0,'Poly Bomb explodes 1 second sooner and the spread radius is increased by 25%.');
INSERT INTO hots_talent VALUES (737,32,20,'Medivh Cheats!',0,'Increase the duration of the Stasis effect by 33.33% and gain the ability to redirect the wave once while it''s activate.');
INSERT INTO hots_talent VALUES (738,32,20,'Guardian of Tirisfal',0,'Minions and Catapults hit by Arcane Rift are instantly killed.');
INSERT INTO hots_talent VALUES (739,32,20,'Arcane Brilliance',0,'Activate to instantly restore 200 Mana to all nearby allied Heroes and grant them 10% Ability Power for 10 seconds.');
INSERT INTO hots_talent VALUES (740,32,20,'Invisibility',0,'Stealth an allied Hero for 20 seconds.');
INSERT INTO hots_talent VALUES (741,33,1,'Block',0,'Every 5 seconds, you can Block a Basic Attack from an enemy Hero reducing its damage by 50%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (742,33,1,'Perfect Storm',0,'Reduces Storm Bolt''s Mana cost by 25%. Quest: Every time Storm Bolt hits a Hero, increase its damage by 5.');
INSERT INTO hots_talent VALUES (743,33,1,'Third Wind',0,'Increases Health Restoration rate to 169 (81 + 4% per level) per second, and raises Health threshold to 50% Health for improved 336 (160 + 4% per level) per second Restoration.');
INSERT INTO hots_talent VALUES (744,33,4,'Sledgehammer',0,'Deals 400% damage to Minions, Structures and Mercenaries. Destroys 4 ammo from Structures.');
INSERT INTO hots_talent VALUES (745,33,4,'Reverberation',0,'Increases the Attack Speed slow from 25% to 50% and the duration from 2.5 seconds to 3 seconds.');
INSERT INTO hots_talent VALUES (746,33,4,'Crowd Control',0,'Each enemy hit by Thunder Clap reduces its cooldown by 0.75 seconds.');
INSERT INTO hots_talent VALUES (747,33,4,'Thunder Burn',0,'Thunder Clap leaves a zone on the ground taht explodes after 2 seconds dealing 106 (50 + 4% per level) damage and applying a 25% slow for 2.5 seconds.');
INSERT INTO hots_talent VALUES (748,33,7,'Piercing Bolt',0,'Penetrates through the first target hit, hitting 1 additional target.');
INSERT INTO hots_talent VALUES (749,33,7,'Landing Momentum',0,'Increases your Movement Speed by 25% for 4 seconds upon landing with Dwarf Toss.');
INSERT INTO hots_talent VALUES (750,33,7,'Skullcracker',0,'Every 3rd Basic Attack against the same target will stun them for 0.25 seconds.');
INSERT INTO hots_talent VALUES (751,33,7,'Iron-forged Momentum',0,'Basic Attacks reduce your Basic Ability cooldowns by 0.75 seconds.');
INSERT INTO hots_talent VALUES (752,33,10,'Avatar',90,'Transform for 20 seconds, gaining 2463 (1169 + 4% per level) Health and causing your Basic Attacks to stun enemies.');
INSERT INTO hots_talent VALUES (753,33,10,'Haymaker',40,'Stun target enemy Hero, and wind up a punch dealing 699 (332 + 4% per level) damage and knocking the target back, hitting enemies in the way for 699 (332 + 4% per level) damage and knocking them aside.');
INSERT INTO hots_talent VALUES (754,33,13,'Burning Rage',0,'Deal 23 damage per second to nearby enemies.');
INSERT INTO hots_talent VALUES (755,33,13,'Healing Static',0,'Heal for 5% of your Max Health for each target hit by Thunder Clap.');
INSERT INTO hots_talent VALUES (756,33,13,'Thunder Strike',0,'Thunder Clap deals 300% damage if only one target is hit.');
INSERT INTO hots_talent VALUES (757,33,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (758,33,16,'Dwarf Launch',0,'Increases the range and impact radius of Dwarf Toss by 50%.');
INSERT INTO hots_talent VALUES (759,33,16,'Heavy Impact',0,'Enemies hit by Dwarf Toss are stunned for 0.75 seconds.');
INSERT INTO hots_talent VALUES (760,33,16,'Give ''em the Axe!',0,'Attacking a Hero that is slowed, rooted, or stunned increases your Basic Attack damage by 60% for 3 seconds.');
INSERT INTO hots_talent VALUES (761,33,16,'Imposing Presence',20,'Heroes and Summons that attack you have their Attack Speed slowed by 20% for 2.5 seconds.Activate to slow the Attack Speed by 50% and Movement Speed by 20% of nearby Heroes and Summons for 2.5 seconds.');
INSERT INTO hots_talent VALUES (762,33,16,'Stoneform',0,'Activate to heal for 40% of your maximum Health over 10 seconds. Second Wind is disabled during this time.');
INSERT INTO hots_talent VALUES (763,33,20,'Unstoppable Force',0,'Increases the duration of Avatar by 30%, and the duration of Disables are reduced by 75% while in Avatar.');
INSERT INTO hots_talent VALUES (764,33,20,'Grand Slam',0,'Damage of Haymaker increased by 25%, Mana cost lowered by 40, and can store 2 charges.');
INSERT INTO hots_talent VALUES (765,33,20,'Hardened Shield',60,'Activate to reduce damage taken by 75% for 4 seconds.');
INSERT INTO hots_talent VALUES (766,33,20,'Rewind',60,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (767,34,1,'Fishtank',0,'Every 5 seconds, reduce the damage taken from the next Hero Basic Attack by 50%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (768,34,1,'Bubble Breeze',0,'Gain 20% Movement Speed while in Safety Bubble.');
INSERT INTO hots_talent VALUES (769,34,1,'Assault Egg',0,'Health and sight range of Egg increased by 150%.');
INSERT INTO hots_talent VALUES (770,34,1,'Bribe',0,'Enemy Minions killed near you grant a stack of Bribe. Use 20 stacks to bribe a Mercenary, instantly defeating them. Does not work on Bosses. Maximum of 100 stacks. If a camp is defeated entirely with Bribe, the camp respawns 50% faster. Current number of Bribe stacks: 1.');
INSERT INTO hots_talent VALUES (771,34,4,'Bigger Slime',0,'Slime area increased by 30%.');
INSERT INTO hots_talent VALUES (772,34,4,'Tufferfish',0,'Pufferfish take an additional attack before being disarmed.');
INSERT INTO hots_talent VALUES (773,34,4,'Living The Dream',0,'You gain 5% Ability Power. Quest: Every 5 seconds you are alive you gain an additional 1% Ability Power, up to an additional 15%. These stacks are lost on death.');
INSERT INTO hots_talent VALUES (774,34,4,'Envenom',0,'Activate to poison an enemy Hero, dealing 352 damage over 10 seconds.');
INSERT INTO hots_talent VALUES (775,34,7,'Slime Advantage',0,'Your Basic Attacks deal 100% bonus damage to Slimed targets.');
INSERT INTO hots_talent VALUES (776,34,7,'Hindering Slime',0,'Increases the slow amount of Slime from 20% to 30%.');
INSERT INTO hots_talent VALUES (777,34,7,'Compressed Air',0,'Area of effect of Pufferfish increased by 50%.');
INSERT INTO hots_talent VALUES (778,34,7,'Clairvoyance',0,'Activate to reveal an area for 10 seconds. Enemies in the area are revealed for 4 seconds.');
INSERT INTO hots_talent VALUES (779,34,10,'March of the Murlocs',0,'Command a legion of Murlocs to march in a target direction, each one leaping onto the first enemy Hero or Structure they find. Each Murloc deals 95 damage and slow its target by 15% for 5 seconds. Does half damage to Structures.');
INSERT INTO hots_talent VALUES (780,34,10,'Octo-Grab',0,'Summon an octopus to stun target enemy Hero for 3.06 seconds while you hit them for 1 damage a second.');
INSERT INTO hots_talent VALUES (781,34,13,'Continuous Slime',0,'Decreases the cooldown of Slime from 4 seconds to 3 seconds.');
INSERT INTO hots_talent VALUES (782,34,13,'Wrath of Cod',0,'Increase Pufferfish''s damage by 35% against Slimed targets.');
INSERT INTO hots_talent VALUES (783,34,13,'Bubble Machine',0,'Safety Bubble cooldown reduced by 5 seconds.');
INSERT INTO hots_talent VALUES (784,34,13,'Hidden Assault',0,'When you respawn from the Egg, you gain Stealth and 20% Movement Speed for 5.125 seconds.');
INSERT INTO hots_talent VALUES (785,34,16,'Slimy End',0,'Slime is used on death.');
INSERT INTO hots_talent VALUES (786,34,16,'Slimy Pufferfish',0,'The Pufferfish casts Slime at its location upon landing.');
INSERT INTO hots_talent VALUES (787,34,16,'Rejuvenating Bubble',0,'Safety Bubble restores 50% of your Health.');
INSERT INTO hots_talent VALUES (788,34,16,'Blood for Blood',0,'Activate to deal 10% of target enemy Hero''s Max Health and heal for twice that amount.');
INSERT INTO hots_talent VALUES (789,34,20,'Never-Ending Murlocs',0,'Murlocs from March of the Murlocs travel farther and cling to targets for 2 seconds longer.');
INSERT INTO hots_talent VALUES (790,34,20,'... And A Shark Too!',0,'Increases the damage of Octo-Grab by 13700%.');
INSERT INTO hots_talent VALUES (791,34,20,'Rewind',0,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (792,34,20,'Bolt of the Storm',0,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (793,35,1,'Widowmakers',0,'Reward:ÿAfter hitting Heroes 100 times with Corpse Spider attacks, their damage is increased by 30%.');
INSERT INTO hots_talent VALUES (794,35,1,'Pandemic',0,'Reward:ÿAfter hitting 40 Heroes with Plague of Toads, it spawns 2 additional toads.');
INSERT INTO hots_talent VALUES (795,35,1,'Thing of the Deep',0,'Passive:ÿIncreases the range of your Basic Abilities by 20%.');
INSERT INTO hots_talent VALUES (796,35,4,'Hexed Crawlers',0,'Corpse spiders restore 0.75% of your maximum Health and Mana when tey attack an enemy Hero.');
INSERT INTO hots_talent VALUES (797,35,4,'Big Voodoo',0,'Passive:ÿIncreases the Health and Mana bonuses from Voodoo Ritual by 100%.');
INSERT INTO hots_talent VALUES (798,35,4,'Blood Ritual',0,'Passive:ÿIf an enemy dies while poisoned by Voodoo Ritual, restore 2% of your maximum Health and Mana.');
INSERT INTO hots_talent VALUES (799,35,7,'Spirit of Arachyr',0,'If your jar of Corpse Spiders hits only 1 enemy, it spawns 2 additional spiders.');
INSERT INTO hots_talent VALUES (800,35,7,'Dead Rush',0,'Wall of Zombies deals 75% more damage. When it expires up to 5 remaining Zombies uproot and attack nearby enemies for 3 seconds.');
INSERT INTO hots_talent VALUES (801,35,7,'Toads of Hugeness',0,'Increase the damage and explosion radius of Plague of Toads by 20% after each hop, up to maximum of 80%.');
INSERT INTO hots_talent VALUES (802,35,10,'Gargantuan',70,'Summon a Gargantuan that guards an area for 20 seconds. Deals 331 (158 + 4% per level) damage to nearby enemies when summoned, attacks for 428 (203 + 4% per level) damage, and can be ordered to stomp.');
INSERT INTO hots_talent VALUES (803,35,10,'Ravenous Spirit',90,'Channel a Ravenous Spirit that deals 412 (196 + 4% per level) damage per second. Cannot move while channeling. Lasts for 8 seconds.');
INSERT INTO hots_talent VALUES (804,35,13,'Guardian Toads',0,'Hitting an enemy Hero with Plague of Toads gives 25 Armor for 2 seconds, reducing damage taken by 25%.');
INSERT INTO hots_talent VALUES (805,35,13,'Superstition',0,'Gain 50 Spell Armor, taking 50% less damage from Abilities, but lose 30 Physical Armor, taking 30% more damage from Basic Attacks.');
INSERT INTO hots_talent VALUES (806,35,13,'Ice Block',60,'Active:ÿActivate to place yourself in Stasis and gain Invulnerability for 3 seconds.');
INSERT INTO hots_talent VALUES (807,35,16,'Spider Colony',0,'Corpse Spiders'' cooldown recharges 100% faster while above 1863 (884 +4% per level) Health.');
INSERT INTO hots_talent VALUES (808,35,16,'Ring of Poison',0,'Zombie Wall last 1 second longer, and the center is filled with poison that deals a total of 822 (390 + 4% per level) damage over 4 seconds. This damage starts small and increases over the duration.');
INSERT INTO hots_talent VALUES (809,35,16,'Soul Harvest',15,'Active:ÿActivate to increase your Health and Ability Power by 5% for each nearby enemy, up to a maximum of 25%. Lasts 15 seconds.');
INSERT INTO hots_talent VALUES (810,35,20,'Humongoid',0,'Reduce Gargantuan''s cooldown by 45 seconds and its mana cost by 50%.');
INSERT INTO hots_talent VALUES (811,35,20,'Annihilating Spirit',0,'Increases the range of Ravenous Spirit by 50% and Movement Speed by 30%.');
INSERT INTO hots_talent VALUES (812,35,20,'Fury of the Storm',0,'Passive:ÿEvery 5 seconds, your next basic attack will deal an additional 91 damage to the target, and 228 damage to all nearby Minions and Mercenaries.');
INSERT INTO hots_talent VALUES (813,35,20,'Vile Infection',0,'Reward:ÿAfter reaching 150 stacks of Voodoo Ritual, it can also be applied to Heroes and its damage is increased by 200%.');
INSERT INTO hots_talent VALUES (814,36,1,'Advanced Cloaking',0,'While Stealthed, Nova gains 2 Mana per second and 25% movement speed.');
INSERT INTO hots_talent VALUES (815,36,1,'Longshot',0,'Increases the cast range of Pinning Shot by 30%. Pinning Shot also increases your next Basic Attack range by 30%.');
INSERT INTO hots_talent VALUES (816,36,1,'Covert Ops',0,'Increases Pinning Shot''s slow by 2% for every second that Nova is Cloaked, to a maximum of a 50%. Bonus fades when Nova is un-Cloaked for 1 second.');
INSERT INTO hots_talent VALUES (817,36,4,'Remote Delivery',0,'Increases Holo Decoy cast range by 100% and its sight range by 50%.');
INSERT INTO hots_talent VALUES (818,36,4,'Rapid Projection',0,'Reduces Holo Decoy''s cooldown and Mana cost by 40%.');
INSERT INTO hots_talent VALUES (819,36,4,'Holo Stability',0,'Increases the duration of Holo Decoy by 120%.');
INSERT INTO hots_talent VALUES (820,36,4,'Covert Mission',0,'Enemy minions killed near you grant stacks. Hero Takedowns grant 10 stacks. Use 25 stacks to bribe a mercenary, instantly defeating them. Does not work on Bosses. Maximum 100 stacks. If a camp is defeated entirely with Bribe, the camp respawns 50% faster.');
INSERT INTO hots_talent VALUES (821,36,7,'One in the Chamber',0,'After using an ability, your next Basic Attack within 3 seconds deals 80% additional damage.');
INSERT INTO hots_talent VALUES (822,36,7,'Anti-Armor Shells',0,'Your Basic Attacks deal 250% damage, but your Attack Speed is proportionally slower.');
INSERT INTO hots_talent VALUES (823,36,7,'Snipe Master',0,'Hitting an enemy Hero with Snipe permanently increases the damage of Snipe by 15%. Stacks up to 5 times. All stacks are lost if Snipe fails to hit an enemy Hero.');
INSERT INTO hots_talent VALUES (824,36,10,'Triple Tap',0,'Locks in on the target Hero, then fires 3 shots that hit the first Hero or Structure they come in contact with for 741 (352 + 4% per level) damage each.');
INSERT INTO hots_talent VALUES (825,36,10,'Precision Strike',0,'After a 1.5 second delay, deals 1000 (475 + 4% per level) damage to enemies within an area. Unlimited range.');
INSERT INTO hots_talent VALUES (826,36,13,'Double Tap',0,'Pinning Shot now has 2 charges.');
INSERT INTO hots_talent VALUES (827,36,13,'Psionic Efficiency',0,'Removes Snipe''s Mana cost and increases its range by 10%.');
INSERT INTO hots_talent VALUES (828,36,13,'Explosive Round',0,'Snipe also deals 50% damage to enemies near the impact.');
INSERT INTO hots_talent VALUES (829,36,16,'Perfect Shot',0,'Hitting an enemy Hero with Snipereduces the cooldown by 3 seconds.');
INSERT INTO hots_talent VALUES (830,36,16,'Crippling Shot',0,'Pinning Shot lowers a Hero''s Armor by 25 for the duration of the slow, causing them to take 25% increased damage.');
INSERT INTO hots_talent VALUES (831,36,16,'Lethal Decoy',0,'Holo Decoy does 40% of Nova''s damage.');
INSERT INTO hots_talent VALUES (832,36,20,'Fast Reload',0,'Triple Tap''s cooldown is reset if it kills an enemy Hero.');
INSERT INTO hots_talent VALUES (833,36,20,'Precision Barrage',0,'Precision Strike holds two charges with a short cooldown.');
INSERT INTO hots_talent VALUES (834,36,20,'Rewind',60,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (835,36,20,'Ghost Protocol',60,'Activate to gain Stealth and become unrevealable for 2 seconds. You do not lose Stealth from attacking, or using Abilities during this time.');
INSERT INTO hots_talent VALUES (836,37,1,'Give Me More!',0,'Increases Adrenaline Rush healing by 50%.');
INSERT INTO hots_talent VALUES (837,37,1,'Seasoned Marksman',0,'Quest:ÿEvery Minion killed near you grants 0.2 Attack Damage, and Takedowns grant 0.5 Attack Damage. Reward:ÿUpon gaining 40 bonus Attack Damage, you can also activate Seasoned Marksman to increase your Attack Speed by 40% for 3 seconds. 60 second cooldown.');
INSERT INTO hots_talent VALUES (838,37,1,'Scouting Drone',45,'Places a Scouting Drone at target location, revealing a large area around it for 45 seconds. This drone cannot be hidden and is killed by enemies with 2 Basic Attacks. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (839,37,4,'Focused Attack',0,'Every 10 seconds, your next Basic Attack against a Hero deals 60% additional damage. Basic Attacks reduce this cooldown by 1 second.');
INSERT INTO hots_talent VALUES (840,37,4,'Vigorous Assault',0,'Basic Attacks heal for 15% of the damage dealt to the primary target.');
INSERT INTO hots_talent VALUES (841,37,4,'Confident Aim',0,'Lowers the cooldown of Penetrating Round by 4 seconds if it hits an enemy Hero.');
INSERT INTO hots_talent VALUES (842,37,4,'Relentless Leader',0,'Once every 8 seconds, if you are stunned or rooted you knock nearby enemies away and reduce the cooldown of Adrenaline Rush by 15 seconds.');
INSERT INTO hots_talent VALUES (843,37,7,'Hamstring Shot',0,'Enemies hit by Penetrating Round have a 20% Movement Speed slow for 3 seconds.');
INSERT INTO hots_talent VALUES (844,37,7,'Revolution Overdrive',0,'Gain 10% Movement Speed while affected by Inspire. Increase this bonus by 5% for each allied Hero nearby when Inspire is cast.');
INSERT INTO hots_talent VALUES (845,37,7,'Fight or Flight',0,'Whenever Adrenaline Rush activates it gives 25 Armor, reducing damage taken by 25% for 4 seconds. Adrenaline Rush can also be manually activated.');
INSERT INTO hots_talent VALUES (846,37,7,'Puttin'' On a Clinic',0,'Whenever an enemy Minion you have recently damaged is destroyed, your Ability cooldowns are reduced by 1.5 seconds.');
INSERT INTO hots_talent VALUES (847,37,10,'Hyperion',0,'Order the Hyperion to make a strafing run dealing 66 damage a second, hitting up to 4 enemies. Also occasionally fires its Yamato Cannon on Structures for 794 damage. Lasts 12 seconds.');
INSERT INTO hots_talent VALUES (848,37,10,'Raynor''s Raiders',0,'Summon two Stealthed Banshees that attack an enemy. Each Banshee deals 43.2 damage a second and lasts 22 seconds. Can reactivate the Ability to retarget the Banshees.');
INSERT INTO hots_talent VALUES (849,37,13,'Giant Killer',0,'Basic Attacks against enemy Heroes deal bonus damage equal to 1.5% of the Hero''s maximum Health.');
INSERT INTO hots_talent VALUES (850,37,13,'Double-Barreled',0,'Penetrating Round gains a second charge.');
INSERT INTO hots_talent VALUES (851,37,13,'Steel Resolve',0,'Increases Inspire''s duration by 50% and causes Adrenaline Rush to also apply Inspire.');
INSERT INTO hots_talent VALUES (852,37,16,'Executioner',0,'Attacking a Hero that is slowed, rooted, or stunned increases your Basic Attack damage by 30% for 3 seconds.');
INSERT INTO hots_talent VALUES (853,37,16,'Cluster Round',0,'Penetrating Round damage is increased by 20% for each additional target hit up to 100%, and the width is increased by 50%.');
INSERT INTO hots_talent VALUES (854,37,16,'Bullseye',0,'The first enemy hit by Penetrating Round is stunned for 1 second.');
INSERT INTO hots_talent VALUES (855,37,20,'Scorched Earth',0,'An additional set of lasers blast the ground 5 times per second, dealing 40 damage in an area.');
INSERT INTO hots_talent VALUES (856,37,20,'Dusk Wings',0,'Banshees remain Stealthed while attacking and fire 50% more frequently.');
INSERT INTO hots_talent VALUES (857,37,20,'A Card to Play',0,'Whenever a Hero (ally or enemy) is killed, the cooldown of your Heroic Ability is reduced by 15 seconds.');
INSERT INTO hots_talent VALUES (858,37,20,'Nexus Frenzy',0,'Increases Attack Speed by 20% and Attack Range by 20%.');
INSERT INTO hots_talent VALUES (859,37,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (860,38,1,'Colossal Totem',0,'Increases the area and range of Earthbind Totem by 50%.');
INSERT INTO hots_talent VALUES (861,38,1,'Electric Charge',0,'Increases the radius of Lightning Shield by 25%.');
INSERT INTO hots_talent VALUES (862,38,1,'Wolf Run',0,'Increases the Movement Speed of Ghost Wolf from 30% to 40%.');
INSERT INTO hots_talent VALUES (863,38,1,'Lightning Bond',0,'Casting Lightning Shield on an ally also cast an untalented version on you.');
INSERT INTO hots_talent VALUES (864,38,4,'Spiritwalker''s Grace',0,'Reduces Chain Heal''s Mana cost from 65 to 45.');
INSERT INTO hots_talent VALUES (865,38,4,'Feral Heart',0,'Increases Health and Mana Regeneration by 75% while in Ghost Wolf form.');
INSERT INTO hots_talent VALUES (866,38,4,'Stormcaller',0,'Reduces Lightning Shield''s Mana cost from 60 to 35.');
INSERT INTO hots_talent VALUES (867,38,4,'Healing Totem',0,'Activate to place a Totem that heals allies in an area for 1.95% of their max Health every second for 10 seconds.');
INSERT INTO hots_talent VALUES (868,38,7,'Blood and Thunder',0,'Ghost Wolf attacks reduce Basic Ability cooldowns by 2 seconds.');
INSERT INTO hots_talent VALUES (869,38,7,'Farsight',0,'Activate to reveal an area for 10 seconds. Enemies in the area are revealed for 4 seconds.');
INSERT INTO hots_talent VALUES (870,38,7,'Cleanse',0,'Activate to make target ally Unstoppable for 1 second. Cannot be cast on yourself.');
INSERT INTO hots_talent VALUES (871,38,7,'Totemic Projection',0,'Reactivate Earthbind Totem to move an existing totem to a new location once.');
INSERT INTO hots_talent VALUES (872,38,10,'Ancestral Healing',0,'After 1 second, heal an allied Hero for 1552 Health.');
INSERT INTO hots_talent VALUES (873,38,10,'Bloodlust',0,'Grant nearby allied Heroes 40% Attack Speed and 25% Movement Speed. Lasts for 8 seconds.');
INSERT INTO hots_talent VALUES (874,38,13,'Earth Shield',0,'Lightning Shield gives a Shield that absorbs damage equal to 12% of their maximum Health for 3 seconds.');
INSERT INTO hots_talent VALUES (875,38,13,'Tidal Waves',0,'Reduces Chain Heal''s cooldown by 1 second for each Hero healed.');
INSERT INTO hots_talent VALUES (876,38,13,'Earthliving Enchant',0,'When Chain Heal heals a Hero below 50% Health, they are healed an additional 439 Health over 5 seconds.');
INSERT INTO hots_talent VALUES (877,38,16,'Earthgrasp Totem',0,'When Earthbind Totem is first cast, it slows nearby enemies by 90% for 1.5 second.');
INSERT INTO hots_talent VALUES (878,38,16,'Hunger of the Wolf',0,'Ghost Wolf attacks against Heroes deal an additional 5% of the target''s maximum Health and heal you for 5% of your maximum Health.');
INSERT INTO hots_talent VALUES (879,38,16,'Rising Storm',0,'Every time Lightning Shield damage an enemy Hero, increase that Lightning Shield''s damage by 10%. Stacks up to 20 times.');
INSERT INTO hots_talent VALUES (880,38,20,'Farseer''s Blessing',0,'Increases healing amount by 50%. Allies near the target are healed for 25% of the amount of health regained.');
INSERT INTO hots_talent VALUES (881,38,20,'Gladiator''s War Shout',0,'All alies affected by Bloodlust now heal for 30% of their Basic Attack damage done to their primary target.');
INSERT INTO hots_talent VALUES (882,38,20,'Rewind',0,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (883,38,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (884,39,1,'Grizzled Bear',0,'Misha periodically reduces the damage received from Hero Basic Attacks by 50%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (885,39,1,'Hunter-Gatherer',0,'Quest: Gathering a Regeneration Globe increases your Health Regeneration by 1 per second, up to 30 per second. Reward: After gathering 30 Globes, Rexxar gains 600 maximum Health.');
INSERT INTO hots_talent VALUES (886,39,1,'Survivalist Training',0,'Regeneration Globes restore 100% more Mana.');
INSERT INTO hots_talent VALUES (887,39,1,'Flare',0,'Fire a flare at an area, revealing it for 5 seconds.');
INSERT INTO hots_talent VALUES (888,39,4,'Hungry Bear',0,'Misha''s Basic Attacks heal her for 3.9% of her maximum Health.');
INSERT INTO hots_talent VALUES (889,39,4,'Crippling Talons',0,'Increases Spirit Swoop''s slow amount to 40% and its duration to 3 seconds.');
INSERT INTO hots_talent VALUES (890,39,4,'Taking Flight',0,'Increases Spirit Swoop''s range by 20%. If Spirit Swoop hits an enemy Hero, the Mana cost is refunded.');
INSERT INTO hots_talent VALUES (891,39,4,'Easy Prey',0,'Increases Misha''s damage to Minions and Mercenaries by 150%, and reduces the damage Misha takes from Minions and Mercenaries by 50%.');
INSERT INTO hots_talent VALUES (892,39,7,'Blood of the Rhino',0,'Increases Mend Pet''s duration by 5 seconds.');
INSERT INTO hots_talent VALUES (893,39,7,'Throwing Axes',0,'Increases your Basic Attack range by 25%.');
INSERT INTO hots_talent VALUES (894,39,7,'Aspect of the Beast',0,'Misha''s Basic Attacks lower the cooldown of Misha, Charge! by 1.5 seconds.');
INSERT INTO hots_talent VALUES (895,39,7,'Bird of Prey',0,'Increases Spirit Swoop''s damage by 200% to non-Heroic enemies.');
INSERT INTO hots_talent VALUES (896,39,10,'Bestial Wrath',0,'Increases Misha''s Basic Attack damage by 150% for 12 seconds.');
INSERT INTO hots_talent VALUES (897,39,10,'Unleash the Boars',0,'Release a herd of boars that track down all enemy Heroes in a direction, dealing 242 (115 + 4% per level) damage, revealing, and slowing enemies by 40% for 5 seconds.');
INSERT INTO hots_talent VALUES (898,39,13,'Wildfire Bear',0,'Misha deals 28 damage per second to nearby enemies.');
INSERT INTO hots_talent VALUES (899,39,13,'Thrill of the Hunt',0,'Your Basic Attacks increase both you and Misha''s Movement Speed by 25% for 2 seconds.');
INSERT INTO hots_talent VALUES (900,39,13,'Bear Necessities',0,'If Misha, Charge! doesn''t hit an enemy Hero, it can be cast again for free for the next 3 seconds.');
INSERT INTO hots_talent VALUES (901,39,13,'Barkskin',0,'Misha takes 50% less damage from Abilities for 5 seconds after using Misha, Charge!');
INSERT INTO hots_talent VALUES (902,39,16,'Critical Care',0,'Increases the healing of Mend Pet by 50% while Misha is under 50% health.');
INSERT INTO hots_talent VALUES (903,39,16,'Aspect of the Hawk',0,'When Spirit Swoop hits an enemy Hero, you gain 100% Attack Speed for 3 seconds.');
INSERT INTO hots_talent VALUES (904,39,16,'Primal Intimidation',0,'Enemies that Basic Attack you or Misha have their Attack Speed slowed by 40%.');
INSERT INTO hots_talent VALUES (905,39,16,'Feign Death',0,'Fake your death, becoming Invulnerable and untargetable for 5 seconds. During this time you control Misha.');
INSERT INTO hots_talent VALUES (906,39,20,'Spirit Bond',0,'Increases the duration of Bestial Wrath by 50% and Misha''s Basic Attacks heal Rexxar for 50% of her damage dealt during Bestial Wrath.');
INSERT INTO hots_talent VALUES (907,39,20,'Kill Command',0,'Unleash the Boars deals 50% more damage and roots for 1.5 seconds.');
INSERT INTO hots_talent VALUES (908,39,20,'Frenzy of Kalimdor',0,'Your Basic Attacks deal 10% more damage, and Misha''s Basic Attacks slow the target by 20% for 1.25 seconds.');
INSERT INTO hots_talent VALUES (909,39,20,'Hardened Skin',0,'You and Misha take 75% less damage for 4 seconds.');
INSERT INTO hots_talent VALUES (910,40,1,'Advanced Artillery',0,'Increase the damage bonus to long distance enemies by 10%.');
INSERT INTO hots_talent VALUES (911,40,1,'Resistant',0,'While in Siege Mode, the duration of Silences, Stuns, Slows, and Roots are reduced by 75%.');
INSERT INTO hots_talent VALUES (912,40,1,'Ambush',0,'Stealth when entering Siege Mode. Your next Basic Attack from Siege Mode will deal 100% more damage. Lose Stealth when Basic Attacking, using an Ability, taking damage, or returning to Tank Mode.');
INSERT INTO hots_talent VALUES (913,40,1,'Regeneration Master',0,'Quest: Gathering a Regeneration Globe increases your Health Regeneration by 1 per second, up to 30. Reward: After gathering 30 Regeneration Globes, you also gain 500 Health.');
INSERT INTO hots_talent VALUES (914,40,4,'Vigorous Assault',0,'Basic Attacks heal for 15% of the damage dealt to the primary target.');
INSERT INTO hots_talent VALUES (915,40,4,'Focused Attack',0,'Every 10 seconds, your next Basic Attack against a Hero deals 75% additional damage. Basic Attacks reduce this cooldown by 1 second.');
INSERT INTO hots_talent VALUES (916,40,4,'Excessive Force',0,'Double the knock back distance.');
INSERT INTO hots_talent VALUES (917,40,7,'Mine Field',0,'Increase the number of mines by 2.');
INSERT INTO hots_talent VALUES (918,40,7,'Hyper-Cooling Engines',0,'Reduce the cooldown of Thrusters by 10 seconds. Thrusters are always active while at the Altar.');
INSERT INTO hots_talent VALUES (919,40,7,'First Aid',0,'Activate to heal 11.07% of your max Health over 6 seconds.');
INSERT INTO hots_talent VALUES (920,40,10,'Blunt Force Gun',0,'Fire a missile across the battlefield, dealing 365 damage to enemies in its path.');
INSERT INTO hots_talent VALUES (921,40,10,'Napalm Strike',0,'Deals 164 damage on impact, and leaves a napalm area that deals 50 damage per second. Lasts for 4 seconds.');
INSERT INTO hots_talent VALUES (922,40,13,'Giant Killer',0,'Basic Attacks against enemy Heroes deal bonus damage equal to 1.5% of the Hero''s maximum Health.');
INSERT INTO hots_talent VALUES (923,40,13,'First Strike',0,'Basic Attacks deal 25% more damage if you haven''t been attacked within the last 5 seconds.');
INSERT INTO hots_talent VALUES (924,40,13,'Bullhead Mines',0,'Middle Spider Mine knocks target back a short distance.');
INSERT INTO hots_talent VALUES (925,40,13,'Barricade',0,'Create a wall of path blocking debris for 4 seconds.');
INSERT INTO hots_talent VALUES (926,40,16,'Executioner',0,'Basic Attacks deal 40% more damage against slowed, rooted, or stunned targets.');
INSERT INTO hots_talent VALUES (927,40,16,'Hover Siege Mode',0,'You can move at 50% Movement Speed in Siege Mode.');
INSERT INTO hots_talent VALUES (928,40,16,'Graduating Range',0,'While in Siege Mode your standard Basic Attack range increases by 20% every 3 seconds, up to 100%.');
INSERT INTO hots_talent VALUES (929,40,16,'Stoneskin',0,'Activate to gain 30% of your maximum Health as a Shield for 5 seconds.');
INSERT INTO hots_talent VALUES (930,40,20,'Orbital BFG',0,'Blunt Force Gun''s missile orbits the planet every 5 seconds. Only the last missile fired orbits.');
INSERT INTO hots_talent VALUES (931,40,20,'Advanced Lava Strike',0,'Napalm Strike''s range is increased by 75% and its impact does 50% more damage.');
INSERT INTO hots_talent VALUES (932,40,20,'Fury of the Storm',0,'Every 5 seconds, your next basic attack will deal an additional 91 damage to the target, and 228 damage to all nearby Minions and Mercenaries.');
INSERT INTO hots_talent VALUES (933,40,20,'Nexus Frenzy',0,'Increases Attack Speed by 20% and Attack Range by 20%.');
INSERT INTO hots_talent VALUES (934,41,1,'War Paint',0,'Basic Attacks heal you for 30% of the damage dealt.');
INSERT INTO hots_talent VALUES (935,41,1,'Block',0,'Every 5 seconds, you can Block a Basic Attack from an enemy Hero reducing its damage by 50%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (936,41,1,'Shot of Fury',0,'Increases your maximum Fury by 50. You can also activate your Trait to gain 50 Fury. Usable while Whirlwinding.');
INSERT INTO hots_talent VALUES (937,41,4,'Focused Attack',0,'Every 10 seconds, your next Basic Attack against a Hero deals 75% additional damage. Basic Attacks reduce this cooldown by 1 second.');
INSERT INTO hots_talent VALUES (938,41,4,'Shattered Ground',0,'Increases Seismic Slam splash damage to 75% of primary target damage.');
INSERT INTO hots_talent VALUES (939,41,4,'Hurricane',0,'Reduces the cooldown of Whirlwind by 1 second and Whirlwind removes all slows and roots on Sonya.');
INSERT INTO hots_talent VALUES (940,41,4,'Mercenary Lord',0,'Non-Boss Mercenaries near your hero deal 50% more damage. Reduces damage taken from Minions and Mercenaries by 50%.');
INSERT INTO hots_talent VALUES (941,41,7,'Poisoned Spear',0,'Ancient Spear deals an additional 75% damage over 4 seconds.');
INSERT INTO hots_talent VALUES (942,41,7,'Composite Spear',0,'Increases the range of Ancient Spear by 30% and increases Fury generated by 20.');
INSERT INTO hots_talent VALUES (943,41,7,'Follow Through',0,'After using an ability, your next Basic Attack within 6 seconds deals 40% additional damage.');
INSERT INTO hots_talent VALUES (944,41,7,'Ferocious Healing',0,'Consume 20 Fury to heal 10.15% of your maximum Health.Usable while Whirlwinding.');
INSERT INTO hots_talent VALUES (945,41,10,'Leap',0,'Leap into the air, dealing 123 damage to nearby enemies, and stunning them for 1.5 seconds.');
INSERT INTO hots_talent VALUES (946,41,10,'Wrath of the Berserker',0,'Increase damage dealt by 40%. Reduce the duration of silences, stuns, slows, roots, and polymorphs against you by 50%. Lasts 15 seconds, and extends by 1 second for every 10 Fury gained.');
INSERT INTO hots_talent VALUES (947,41,13,'Life Funnel',0,'Increases the healing of Whirlwind to 30%, tripled versus Heroes.');
INSERT INTO hots_talent VALUES (948,41,13,'Aftershock',0,'Using Seismic Slam reduces its Fury cost by 50% for 2 seconds.');
INSERT INTO hots_talent VALUES (949,41,13,'Mystical Spear',0,'Reduces the cooldown of Ancient Spear by 3 seconds. You are pulled to the target location even if you don''t hit an enemy.');
INSERT INTO hots_talent VALUES (950,41,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (951,41,16,'Furious Blow',0,'Increases Seismic Slam damage by 50%, but costs 40 Fury.');
INSERT INTO hots_talent VALUES (952,41,16,'No Escape',0,'Increases the Movement Speed bonus from using Basic and Heroic Abilities to 25%.');
INSERT INTO hots_talent VALUES (953,41,16,'Imposing Presence',0,'Enemies that attack you have their Attack Speed slowed by 40%.');
INSERT INTO hots_talent VALUES (954,41,16,'Nerves of Steel',0,'Activate to gain 30% of your maximum Health as a Shield for 5 seconds. Usable while Whirlwinding.');
INSERT INTO hots_talent VALUES (955,41,20,'Arreat Crater',0,'Leap leaves behind an impassable crater for 5 seconds. Reduces Leap''s cooldown by 20 seconds.');
INSERT INTO hots_talent VALUES (956,41,20,'Anger Management',0,'Increases all Fury generated during Wrath of the Berserker by 100%.');
INSERT INTO hots_talent VALUES (957,41,20,'Nexus Blades',0,'Basic Attacks deal 20% more damage and slow enemy Movement Speed by 20% for 1 second.');
INSERT INTO hots_talent VALUES (958,41,20,'Ignore Pain',0,'Activate to reduce damage taken by 75% for 4 seconds. Usable while Whirlwinding.');
INSERT INTO hots_talent VALUES (959,42,1,'Chew Your Food',0,'Using Devour also heals you for 9.555% of your max Health over 3.06 seconds.');
INSERT INTO hots_talent VALUES (960,42,1,'Dampen Magic',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 1.5 seconds. Can only trigger once every 8 seconds.');
INSERT INTO hots_talent VALUES (961,42,1,'Hungry for More',0,'Collecting Regeneration Globes permanently increases your maximum Health by 30.');
INSERT INTO hots_talent VALUES (962,42,1,'Heavy Slam',0,'Slam damage increased by 50%');
INSERT INTO hots_talent VALUES (963,42,4,'Amplified Healing',0,'Increases regeneration effects and all healing received by 30%.');
INSERT INTO hots_talent VALUES (964,42,4,'Mercenary Lord',0,'Non-Boss Mercenaries near your hero deal 50% more damage. Reduces damage taken from Minions and Mercenaries by 50%.');
INSERT INTO hots_talent VALUES (965,42,4,'Vile Cleaver',0,'Basic Attacks create a cloud of Vile Gas on the target.');
INSERT INTO hots_talent VALUES (966,42,4,'Putrid Ground',0,'Enemies hit by Slam are infected with Vile Gas.');
INSERT INTO hots_talent VALUES (967,42,7,'Savor the Flavor',0,'Using Devour on an enemy Hero permanently increases your Health Regeneration by 2 per second.');
INSERT INTO hots_talent VALUES (968,42,7,'Last Bite',0,'If an enemy dies within 3 seconds of being damaged by Devour, its cooldown is reduced by 12 seconds.');
INSERT INTO hots_talent VALUES (969,42,7,'Tenderizer',0,'Basic Attacks slow enemy Movement Speed by 25% for 1.5 seconds.');
INSERT INTO hots_talent VALUES (970,42,7,'Toxic Gas',0,'Increases Vile Gas radius by 102.5% and the duration of the effect by 1 second.');
INSERT INTO hots_talent VALUES (971,42,10,'Putrid Bile',0,'Emit bile that deals 37 damage per second to enemies within, slowing them by 35%. You gain 20% Movement Speed while emitting bile. Lasts 8 seconds.');
INSERT INTO hots_talent VALUES (972,42,10,'Gorge',0,'Consume an enemy Hero, trapping them for 4 seconds. When Gorge ends, the enemy Hero takes 274 damage. The trapped Hero cannot move or act and doesn''t take damage from other sources. Cannot be used on massive Heroes.');
INSERT INTO hots_talent VALUES (973,42,13,'Relentless',0,'Reduces the duration of silences, stuns, slows, and roots against your Hero by 50%.');
INSERT INTO hots_talent VALUES (974,42,13,'Mega Smash',0,'Range and arc of Slam increased by 25%.');
INSERT INTO hots_talent VALUES (975,42,13,'Indigestion',0,'Using Devour also creates a Retchling that applies Vile Gas Poison when it attacks.');
INSERT INTO hots_talent VALUES (976,42,13,'Helping Hand',0,'Hook can also pull allied Heroes (but will not damage them). When used to pull allies, the cooldown is reduced by 50%.');
INSERT INTO hots_talent VALUES (977,42,16,'Pulverize',0,'Decreases Slam''s cooldown by 2 seconds and it also slows enemies by 75% for 1 second.');
INSERT INTO hots_talent VALUES (978,42,16,'Fishing Hook',0,'Hook has an additional 40% range.');
INSERT INTO hots_talent VALUES (979,42,16,'Shish Kabob',0,'Hook can pull up to 2 targets.');
INSERT INTO hots_talent VALUES (980,42,16,'Stoneskin',0,'Activate to gain 30% of your maximum Health as a Shield for 5 seconds.');
INSERT INTO hots_talent VALUES (981,42,20,'Regenerative Bile',0,'Putrid Bile lasts 2 seconds longer, grants an additional 10% Movement Speed and heals for 48.65% of the damage dealt.');
INSERT INTO hots_talent VALUES (982,42,20,'Hungry Hungry Stitches',0,'While active, Gorge can be repeatedly recast until the first target is expelled. Increases Gorge damage by 40%.');
INSERT INTO hots_talent VALUES (983,42,20,'Hardened Shield',0,'Activate to reduce damage taken by 75% for 4 seconds.');
INSERT INTO hots_talent VALUES (984,42,20,'Bolt of the Storm',0,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (985,43,1,'Overflowing Quiver',0,'When a nearby enemy Minion dies, a free Withering Fire is shot. This cannot hit Heroes and has a short cooldown.');
INSERT INTO hots_talent VALUES (986,43,1,'Dreadful Wake',0,'Increases the effect of Black Arrow on Minions and Mercenaries to 7 seconds. Restores 5 Mana per minion or mercenary hit.');
INSERT INTO hots_talent VALUES (987,43,1,'Mercenary Queen',0,'Friendly non-Boss Mercenaries near you deal 50% more damage.');
INSERT INTO hots_talent VALUES (988,43,4,'Withering Barrage',0,'Increase Withering Fire charges by 1. Charges can be fired 33% faster.');
INSERT INTO hots_talent VALUES (989,43,4,'With the Wind',0,'Increases Withering Fire''s range by 25%.');
INSERT INTO hots_talent VALUES (990,43,4,'Lost Soul',0,'Reduce Shadow Dagger''s cooldown by 1.25 seconds each time it spreads to a Hero.');
INSERT INTO hots_talent VALUES (991,43,7,'Barbed Shot',0,'Withering Fire deals 200% bonus damage to Minions, Mercenaries, and Monsters.');
INSERT INTO hots_talent VALUES (992,43,7,'Unstable Poison',0,'Minions and Mercenaries that die under the effects of Black Arrows explode, dealing 255 (121 + 4% per level) damage to nearby enemies. Does not damage Heroes or Structures.');
INSERT INTO hots_talent VALUES (993,43,7,'Possession',0,'Force an enemy Minion to fight for you. 3 charges. 8 second charge cooldown.');
INSERT INTO hots_talent VALUES (994,43,10,'Wailing Arrow',0,'Shoot an arrow that can be reactivated to deal 228 damage and Silencing enemies in an area making them unable to use Abilities for 2.5 seconds. The arrow detonates automatically when it reaches maximum range.');
INSERT INTO hots_talent VALUES (995,43,10,'Mind Control',0,'After 1 second cast, take control of an emeny Hero''s movement and prevent them for doing anything else. Channel last 2.5 seconds.');
INSERT INTO hots_talent VALUES (996,43,13,'Life Drain',0,'Shadow Dagger heals you for 82 (39 + 4% per level) each time it spreads to a new enemy.');
INSERT INTO hots_talent VALUES (997,43,13,'Windrunner',0,'After you teleport from Haunting Wave, you can cast a second one for free within 2 seconds.');
INSERT INTO hots_talent VALUES (998,43,13,'Will of the Forsaken',0,'Activate to become Unstoppable and gain 40% Movement Speed for 3 seconds.');
INSERT INTO hots_talent VALUES (999,43,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (1000,43,16,'Evasive Fire',0,'When you hit an emeny with Whitering Fire, gain 10% Movement Speed for 2 seconds, stacking up to 30%.');
INSERT INTO hots_talent VALUES (1001,43,16,'Cold Embrace',0,'Shadow Dagger makes the initial enemy Vulnerable, taking 25% more damage, for 2 seconds.');
INSERT INTO hots_talent VALUES (1002,43,16,'Overwhelming Affliction',0,'Black Arrows now also applies to Heroes, slowing their Movement Speed by 6% for the duration. Stacks up to 5 times.');
INSERT INTO hots_talent VALUES (1003,43,16,'Remorseless',0,'After using an Ability, your next Basic Attack within 3 seconds deals 40% additional damage.');
INSERT INTO hots_talent VALUES (1004,43,20,'Deafening Blast',0,'Enemies at the center of Wailing Arrow''s explosion take 50% more damage and are silenced for twice as long.');
INSERT INTO hots_talent VALUES (1005,43,20,'Dark Lady''s Call',0,'Mind Controlled enemies gain 100% Movement Speed for the duration.');
INSERT INTO hots_talent VALUES (1006,43,20,'Fury of the Storm',0,'Every 5 seconds, your next basic attack will deal an additional 91 damage to the target, and 228 damage to all nearby Minions and Mercenaries.');
INSERT INTO hots_talent VALUES (1007,43,20,'Bolt of the Storm',0,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (1008,44,1,'Psi-Infusion',0,'Quest:ÿGain 1 Mana for every Non-Structure enemy hit by Psionic Storm. Reward:ÿAfter hitting 500 enemies, increase the size of Psionic Storm by 20%. Reward:ÿAfter hitting 1000 enemies, increase the damage of Psionic Storm by 20%.');
INSERT INTO hots_talent VALUES (1009,44,1,'Templar?s Will',0,'Quest:ÿAttacking enemy Heroes restores 4 mana per second. Reward:ÿAfter spending 30 seconds attacking Heroes, Distortion Beam range is increased by 20%. Reward:ÿAfter spending 60 seconds attacking Heroes, Distortion Beam''s range is increased by an additional 20%.');
INSERT INTO hots_talent VALUES (1010,44,1,'Khaydarin Resonance',0,'Quest:ÿRegeneration Globes grant an additional 50% Mana.Reward:ÿAfter collecting 20 Regeneration Globes, Plasma Shield retains 50% of its value after it expires. Reward:ÿAfter collecting 40 Regeneration Globes, Plasma Shield persists indefinitely.');
INSERT INTO hots_talent VALUES (1011,44,4,'Khala''s Celerity',0,'Upon expiration or breaking, the target of Plasma Shield gains 25 Armor for 3 seconds, causing them to take 25% less damage.');
INSERT INTO hots_talent VALUES (1012,44,4,'Khala''s Embrace',0,'Plasma Shield also grants 25% Movement Speed for 5 seconds.');
INSERT INTO hots_talent VALUES (1013,44,4,'Khala''s Light',0,'Increase the Life Steal of Plasma Shield to 40%.');
INSERT INTO hots_talent VALUES (1014,44,7,'Psionic Projection',0,'Increases the cast range of Plasma SHield and Psionic Storm by 40%.');
INSERT INTO hots_talent VALUES (1015,44,7,'Resonation',0,'Distortion Beam slows enemies affected by Psionic Storm by 40%.');
INSERT INTO hots_talent VALUES (1016,44,7,'Mental Acuity',0,'Quest:ÿEach Takedown earned lowers the cooldown of Oracle by 3 seconds, to a maximum of 15 seconds. Reward:ÿUpon getting 5 Takedowns, the sight range of Oracle is increased by 50%.');
INSERT INTO hots_talent VALUES (1017,44,10,'Archon',100,'Tassadar transforms into an Archon and gains a Plasma Shield. His Basic Attacks deal 182 (+4% per level) damage, slow the target by 40% for 1 second and splashs for 91 (+4% per level) damage to enemies within 2.5 range. Lasts for 10.5 seconds.');
INSERT INTO hots_talent VALUES (1018,44,10,'Force Wall',12,'Create a wall that blocks all units from moving through it for 2.5 seconds.');
INSERT INTO hots_talent VALUES (1019,44,13,'Deep Shift',0,'Dimensional Shift duration and Movement Speed bonuses are increased by 50%.');
INSERT INTO hots_talent VALUES (1020,44,13,'Adun''s Wisdom',0,'While Oracle is active, Basic Abilities cooldown 50% faster.');
INSERT INTO hots_talent VALUES (1021,44,13,'Nulification',60,'Activate to reduce the damage the target enemy Hero deals by 75% for 3 seconds.');
INSERT INTO hots_talent VALUES (1022,44,16,'Phase Disruption',0,'Enemy Heroes being hit by Psionic Storm, have their Physical Armor reduced by 25, causing them to take 25% more damage from Basic Attacks.');
INSERT INTO hots_talent VALUES (1023,44,16,'Psionic Echo',0,'Enemy Heroes being hit by Psionic Storm, have their Physical Armor reduced by 25, causing them to take 25% more damage from Basic Attacks.');
INSERT INTO hots_talent VALUES (1024,44,16,'Focused Beam',0,'While Oracle is active, Basic Attacks against Heroes deal an additional 1% of the target''s maximum Health as damage.');
INSERT INTO hots_talent VALUES (1025,44,20,'Twilight Archon',0,'Basic Attacks while in Archon form refresh its duration.');
INSERT INTO hots_talent VALUES (1026,44,20,'Force Barrier',0,'Force Wall''s Range ins increased by 100% and its cooldown is reduced by 6 seconds.');
INSERT INTO hots_talent VALUES (1027,44,20,'Prismatic Link',0,'Basic Attacks bounce to hit 2 additional targets for 52% (+4% per level) damage.');
INSERT INTO hots_talent VALUES (1028,44,20,'Shield Battery',70,'Activate to give all nearby allied Heroes an untalented Plasma Shield.');
INSERT INTO hots_talent VALUES (1029,45,1,'Block',0,'Every 5 seconds, you can Block a Basic Attack from an enemy Hero reducing its damage by 50%. Stores up to 2 charges.');
INSERT INTO hots_talent VALUES (1030,45,1,'Rolling Thunder',0,'Increases Chain Lightning''s range by 30% and attacking enemies recently hit by Chain Lightning restores 10 Mana.');
INSERT INTO hots_talent VALUES (1031,45,1,'Rabid Wolves',0,'Damaging Heroes with Feral Spirit grants 3 stacks of Frostwolf Resilience.');
INSERT INTO hots_talent VALUES (1032,45,1,'Seasoned Marksman',0,'Quest:ÿEvery Minion killed near you grants 0.2 Attack Damage, and Takedowns grant 0.5 Attack Damage. Reward:ÿUpon gaining 40 bonus Attack Damage, you can also activate Seasoned Marksman to increase your Attack Speed by 40% for 3 seconds. 60 second cooldown.');
INSERT INTO hots_talent VALUES (1033,45,4,'Ride The Lightning',0,'Chain Lightning can hit 2 additional enemies for 50% damage.');
INSERT INTO hots_talent VALUES (1034,45,4,'Spirit Journey',0,'Feral Spirit travels 50% farther.');
INSERT INTO hots_talent VALUES (1035,45,4,'Mana Tide',0,'Frostwolf Resilience also restores 15 Mana.');
INSERT INTO hots_talent VALUES (1036,45,4,'Envenom',60,'Activate to poison an enemy Hero, dealing 352 damage over 10 seconds.');
INSERT INTO hots_talent VALUES (1037,45,7,'Wind Shear',0,'Reduces the cooldown of Windfury by 4 seconds.');
INSERT INTO hots_talent VALUES (1038,45,7,'Stone Wolves',0,'Increases the duration of Feral Spirit''s root from 1 second to 1.5 seconds.');
INSERT INTO hots_talent VALUES (1039,45,7,'Follow Through',0,'After using an ability, your next Basic Attack within 6 seconds deals 40% additional damage.');
INSERT INTO hots_talent VALUES (1040,45,7,'Frostwolf''s Grace',30,'Frostwolf Resilience can be activated to immediately heal you.');
INSERT INTO hots_talent VALUES (1041,45,10,'Sundering',75,'After a short delay, sunder the earth in a long line, dealing 601 (285 + 4% per level) damage and shoving enemies to the side, stunning them for 1.0 seconds.');
INSERT INTO hots_talent VALUES (1042,45,10,'Earthquake',60,'Summon a massive Earthquake that pulses every 2 seconds. Each pulse slows all enemies in the area by 70%, and deals 110 (52 + 4% per level) damage to enemy Heroes . Does 3 pulses..');
INSERT INTO hots_talent VALUES (1043,45,13,'Restless Wolves',0,'If Feral Spirit hits an enemy Hero, its cooldown is reduced by 50%.');
INSERT INTO hots_talent VALUES (1044,45,13,'Grace Of Air',0,'Windfury attacks grant twice as many stacks of Frostwolf Resilience.');
INSERT INTO hots_talent VALUES (1045,45,13,'Giant Killer',0,'Basic Attacks against enemy Heroes deal bonus damage equal to 1.5% of the Hero''s maximum Health.');
INSERT INTO hots_talent VALUES (1046,45,13,'Spell Shield',1,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (1047,45,16,'Forked Lightning',0,'Allows Chain Lightning to hold 2 charges that can be used in quick succession.');
INSERT INTO hots_talent VALUES (1048,45,16,'Tempest Fury',0,'The final strike of Windfury hits 3 times for 75% normal damage.');
INSERT INTO hots_talent VALUES (1049,45,16,'Ride The Wind',0,'Increases Windfury''s Movement Speed bonus from 30% to 40%. Windfury attacks increase the Movement Speed duration by 1 second.');
INSERT INTO hots_talent VALUES (1050,45,16,'Blood for Blood',60,'Activate to deal 10% of target enemy Hero''s Max Health and heal for twice that amount.');
INSERT INTO hots_talent VALUES (1051,45,20,'Worldbreaker',0,'Sundering travels indefinitely.');
INSERT INTO hots_talent VALUES (1052,45,20,'Earthen Shields',0,'You and your allies within the Earthquake area gain a Shield equal to 15% of max Health each pulse. This shield lasts 4 seconds.');
INSERT INTO hots_talent VALUES (1053,45,20,'Nexus Blades',0,'Basic Attacks deal 20% more damage and slow enemy Movement Speed by 20% for 1 second.');
INSERT INTO hots_talent VALUES (1054,45,20,'Bolt of the Storm',70,'Activate to teleport to a nearby location.');
INSERT INTO hots_talent VALUES (1055,46,1,'Pulse Strike',0,'Increases Melee''s Pulse Bomb charge from 10% to 20% against Heroes.');
INSERT INTO hots_talent VALUES (1056,46,1,'Slipstream',0,'Increases the amount of time Recalled by 1 second.');
INSERT INTO hots_talent VALUES (1057,46,1,'Tracer Rounds',0,'Your Basic Attacks reveal enemies for 4 seconds.');
INSERT INTO hots_talent VALUES (1058,46,4,'Parting Gift',0,'Recall leaves behind 3 bombs that deal 526 (250 + 4% per level) damage each to different targets.');
INSERT INTO hots_talent VALUES (1059,46,4,'Is That a Health Pack?!',0,'Increases Regeneration Globe and Healing Fountain healing by 100%.');
INSERT INTO hots_talent VALUES (1060,46,4,'Untouchable',0,'Quest:ÿTakedowns increase your Basic Attack damage by 2%, up to 30%. These bonuses are lost on death. Reward:ÿNone');
INSERT INTO hots_talent VALUES (1061,46,7,'Jumper',0,'Increases Blink''s charges by 1.');
INSERT INTO hots_talent VALUES (1062,46,7,'Bullet Time',0,'Basic Attacks lower the cooldown of Blink by 0.1 seconds.');
INSERT INTO hots_talent VALUES (1063,46,7,'Spatial Echo',0,'Hero Takedowns grant 2 charges of Blink.');
INSERT INTO hots_talent VALUES (1064,46,10,'Sticky Bomb',0,'Increases Pulse Bomb''s radius by 50% and enemies hit are slowed by 70% for 3 seconds.');
INSERT INTO hots_talent VALUES (1065,46,10,'Quantum Spike',0,'Pulse Bomb deals an additional 10% of the primary target''s maximum Health.');
INSERT INTO hots_talent VALUES (1066,46,10,'Pulse Rounds',0,'Increases Pulse Bomb''s range and charge rate from Basic Attacks against Heroes by 100%.');
INSERT INTO hots_talent VALUES (1067,46,13,'Bullet Spray',0,'Increases Melee''s radius by 40%, and causes it to damage all enemies in range.');
INSERT INTO hots_talent VALUES (1068,46,13,'Ricochet',0,'Your Basic Attacks have a 50% chance to hit another nearby enemy, prioritizing Heroes.');
INSERT INTO hots_talent VALUES (1069,46,13,'Leeching Rounds',0,'Your Basic Attacks against Heroes heal you for 20% of their damage dealt.');
INSERT INTO hots_talent VALUES (1070,46,16,'Sleight of Hand',0,'Reduces Reload time by 50%. This equals 20% more damage per second.');
INSERT INTO hots_talent VALUES (1071,46,16,'Focus Fire',0,'If an entire ammo magazine is unloaded on an enemy, the last bullet will deal 191 (91 + 4% per level) bonus damage. This is equal to 35% of the total magazine.');
INSERT INTO hots_talent VALUES (1072,46,16,'Locked and Loaded',0,'Reactivate Reload within the last 50% of its cast time to increase your Basic Attack damage by 40% for that magazine.');
INSERT INTO hots_talent VALUES (1073,46,20,'Get Stuffed!',0,'Reduces Melee''s cooldown by 3 seconds. Hitting an enemy with Melee who is stuck with a Pulse Bomb causes the bomb to instantly explode and knocks the target away from you.');
INSERT INTO hots_talent VALUES (1074,46,20,'Total Recall',0,'Recall''s cooldown is increased by 8 seconds, but it heals you equal to the amount of Health you lost during that time.');
INSERT INTO hots_talent VALUES (1075,46,20,'Composition B',0,'If you successfully stick a Pulse Bomb to an enemy Hero, you also drop another one at their feet that deals 50% damage and explodes slightly earlier.');
INSERT INTO hots_talent VALUES (1076,47,1,'Press the Advantage',0,'Run and Gun increases your Basic Attack range by 35% for 4 seconds.');
INSERT INTO hots_talent VALUES (1077,47,1,'Dash',0,'Quest:ÿRun and Gun increases your Movement Speed by 1% for each Regeneration Globe you gather, up to 25%. Lasts 2 seconds. Reward:ÿOnce you have gathered 25 Regeneration Globes, also increase the range of Run and Gun by 50%.');
INSERT INTO hots_talent VALUES (1078,47,1,'Combat Tactician',0,'Basic Attacks reduce the cooldown of Run and Gun by 0.8 seconds.');
INSERT INTO hots_talent VALUES (1079,47,4,'In the Rhythm',0,'Quest:ÿWhile Minigun is active, Basic Attack against Heroes permanently increase future Minigun durations by .03 seconds. Reward:ÿNone');
INSERT INTO hots_talent VALUES (1080,47,4,'Fully Loaded',0,'Reduce Minigun''s cooldown by 33%.');
INSERT INTO hots_talent VALUES (1081,47,4,'The Bigger They Are...',0,'Increases Minigun damage bonus to 4% while enemy Heroes are above 40% Health, but Minigun no longer has any effect on targets below 40%.');
INSERT INTO hots_talent VALUES (1082,47,4,'Master Assassin',0,'Quest:ÿHero Takedowns permanently increase your Attack Speed by 1%, stacking up to 15 times. Reward:ÿUpon reaching 15 Stacks, your attack speed is increased by an additional 10%.');
INSERT INTO hots_talent VALUES (1083,47,7,'Quarterback',0,'Increases the range of Frag Grenade by 50%.');
INSERT INTO hots_talent VALUES (1084,47,7,'Concussion Grenade',0,'Increases Frag Grenade''s radius by 25% and the knockback by 100%.');
INSERT INTO hots_talent VALUES (1085,47,7,'Relentless Soldier',0,'Being Stunned or Rooted grants 25 Armor for 3 seconds, reducing damage taken by 25%.');
INSERT INTO hots_talent VALUES (1086,47,10,'Commandeer Odin',0,'Call down an Odin to pilot. The Odin deals increased Damage, has 60% increased Basic Attack range, and uses different Abilities. The Odin has 25 Armor and lasts 23 seconds.');
INSERT INTO hots_talent VALUES (1087,47,10,'Drakken Laser Drill',30,'Active:ÿCall down a Laser Drill to attack nearby enemies, dealing 142 damage every second. Reactivate to assign a new target. Lasts 22 seconds.');
INSERT INTO hots_talent VALUES (1088,47,13,'That''s the Stuff!',0,'Minigun heals you for 100% of the bonus damage it deals to Heroes.');
INSERT INTO hots_talent VALUES (1089,47,13,'Neosteel Coating',0,'Activate to gain 50 Spell Armor for 3 seconds, reducing Ability Damage taken by 50%.');
INSERT INTO hots_talent VALUES (1090,47,13,'Spray ''n'' Pray',0,'Increases Overkill''s range by 25%.');
INSERT INTO hots_talent VALUES (1091,47,16,'Titan Grenade',0,'Frag Grenade deals bonus damage to Heroes equal to 5% of their maximum Health.');
INSERT INTO hots_talent VALUES (1092,47,16,'Lead Rain',0,'Overkill also slows enemy movement speed by 20%.');
INSERT INTO hots_talent VALUES (1093,47,16,'Armor Piercing Rounds',0,'Increases Overkill''s damage to the primary target by 50%.');
INSERT INTO hots_talent VALUES (1094,47,20,'Big Red Button',0,'Odin lasts 50% longer and Ragnarok Missiles also launches a Nuclear Missile.');
INSERT INTO hots_talent VALUES (1095,47,20,'Focusing Diodes',0,'Increases the range of the Drakken Laser Drill by 50%. Deals increased damage the longer it remains on a single target, up to 100% extra damage.');
INSERT INTO hots_talent VALUES (1096,47,20,'Sizzlin'' Attacks',0,'Your Basic Attacks deal bonus damage to Heroes equal to 1% of their maximum Health. Stacks with Minigum.');
INSERT INTO hots_talent VALUES (1097,47,20,'Bob and Weave',0,'Run and Gun and Odin''s Thrusters gain 2 additional charges and reduces Run and Gun''s Mana cost from 50 to 25.');
INSERT INTO hots_talent VALUES (1098,48,1,'Purge Evil',0,'Smite deals 30% more damage to Heroes.');
INSERT INTO hots_talent VALUES (1099,48,1,'Protection in Death',0,'When Archangel''s Wrath explodes, shield nearby allies for 50% of their max Health for 10 seconds.');
INSERT INTO hots_talent VALUES (1100,48,1,'Even In Death',0,'Increases Archangel''s Wrath''s damage by 25%. Basic Abilities also can be used before exploding, but deal no damage.');
INSERT INTO hots_talent VALUES (1101,48,1,'Regeneration Master',0,'Quest: Every Minion killed near you grants 0.2 Attack Damage, and Takedowns grant 0.5 Attack Damage, to a max of 40 damage.Reward: Upon gaining 40 bonus Attack Damage, you can also activate Seasoned Marksman to increase your Attack Speed by 30% for 3 seconds. 60 second cooldown.');
INSERT INTO hots_talent VALUES (1102,48,4,'Horadric Reforging',0,'If El''druins Might hits an enemy, its cooldown is reduced by 3 seconds.');
INSERT INTO hots_talent VALUES (1103,48,4,'Swift Retribution',0,'Increases Smite''s Movement Speed by 10% and duration by 1 second.');
INSERT INTO hots_talent VALUES (1104,48,4,'Amplified Healing',0,'Increases regeneration effects and all healing received by 30%.');
INSERT INTO hots_talent VALUES (1105,48,4,'Vigorous Strike',0,'Basic Attacks heal for 25% of the damage dealt to the primary target.');
INSERT INTO hots_talent VALUES (1106,48,7,'Angel''s Grace',0,'After teleporting using El''Druin''s Might, gain 30% Movement Speed for 3 seconds.');
INSERT INTO hots_talent VALUES (1107,48,7,'Reciprocate',0,'When your shield expires, it explodes for 439 (208 + 4% per level) damage to nearby enemies.');
INSERT INTO hots_talent VALUES (1108,48,7,'Zealotry',0,'Increases the duration of Righteousness by 50%, and reduces its cooldown by 2 seconds.');
INSERT INTO hots_talent VALUES (1109,48,7,'Searing Attacks',0,'Activate to increase Basic Attack damage by 50% for 5 seconds. Each attack costs 15 Mana.');
INSERT INTO hots_talent VALUES (1110,48,10,'Judgment',0,'After 0.75 seconds, charge an enemy Hero dealing 220 (104 + 4% per level) damage and stunning them for 1.5 seconds. Nearby enemies are knocked away and take 110 (52 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (1111,48,10,'Sanctification',0,'After 0.5 seconds create a field of holy energy that makes allied Heroes Invulnerable. Lasts 3 seconds.');
INSERT INTO hots_talent VALUES (1112,48,13,'Burning Rage',0,'Deal 23 damage per second to nearby enemies.');
INSERT INTO hots_talent VALUES (1113,48,13,'Angelic Absorption',0,'Enemies that attack you while shielded grant 138 Health over 3 seconds.');
INSERT INTO hots_talent VALUES (1114,48,13,'Imposing Will',0,'Enemies that attack you while shielded have their Attack Speed and Movement Speed slowed by 50% for 2 seconds.');
INSERT INTO hots_talent VALUES (1115,48,13,'Angelic Might',0,'Gain 25% increased damage on your next Basic Attack for each target hit by Smite.');
INSERT INTO hots_talent VALUES (1116,48,16,'Blade of Justice',0,'After teleporting using El''Druin''s Might, increase your Attack Speed by 50% for 5 seconds.');
INSERT INTO hots_talent VALUES (1117,48,16,'Holy Ground',0,'Create a ring that blocks enemies from entering the area teleported to using El''Druin''s Might.');
INSERT INTO hots_talent VALUES (1118,48,16,'Salvation',0,'Each allied Hero that is affected by Righteousness increases Tyrael''s Shield amount by 35%.');
INSERT INTO hots_talent VALUES (1119,48,16,'Blood for Blood',0,'Activate to deal 10% of target enemy Hero''s Max Health and heal for twice that amount.');
INSERT INTO hots_talent VALUES (1120,48,20,'Angel of Justice',0,'Increases the cast range of Judgment by 50%, and reduces the cooldown by 40 seconds.');
INSERT INTO hots_talent VALUES (1121,48,20,'Holy Arena',0,'Increases duration of Sanctification by 1 second and increases the damage of allies by 25%.');
INSERT INTO hots_talent VALUES (1122,48,20,'Hardened Shield',0,'Activate to reduce damage taken by 75% for 4 seconds.');
INSERT INTO hots_talent VALUES (1123,48,20,'Nexus Blades',0,'Basic Attacks deal 20% more damage and slow enemy Movement Speed by 20% for 1 second.');
INSERT INTO hots_talent VALUES (1124,49,1,'Celestial Attunement',0,'Reduce the Mana cost of Light of Elune by 15.');
INSERT INTO hots_talent VALUES (1125,49,1,'Ranger''s Mark',0,'Lower the Cooldown of Hunter''s Mark by 6 seconds.');
INSERT INTO hots_talent VALUES (1126,49,1,'Seasoned Marksman',0,'Quest: Every Minion killed near you grants 0.2 Attack Damage, and Takedowns grant 0.5 Attack Damage.Reward: Upon gaining 40 bonus Attack Damage, you can also activate Seasoned Marksman to increase your Attack Speed by 40% for 3 seconds. 60 second cooldown.');
INSERT INTO hots_talent VALUES (1127,49,1,'Empower',0,'When Sentinel impacts, your cooldowns are instantly reduced by 2 seconds.');
INSERT INTO hots_talent VALUES (1128,49,4,'Pierce',0,'Sentinel no longer stops at the first Hero hit, affecting all enemy Heroes along the path.');
INSERT INTO hots_talent VALUES (1129,49,4,'Focused Attack',0,'Every 10 seconds, your next Basic Attack against a Hero deals 75% additional damage. Basic Attacks reduce this cooldown by 1 second.');
INSERT INTO hots_talent VALUES (1130,49,4,'Protective Shield',0,'Activate to shield an allied Hero for 15% of their max Health for 5 seconds.');
INSERT INTO hots_talent VALUES (1131,49,4,'Healing Ward',0,'Activate to place a ward on the ground that heals allies in an area for 1.95% of their max Health every second for 10 seconds.');
INSERT INTO hots_talent VALUES (1132,49,4,'Searing Arrows',0,'Activate to increase Basic Attack damage by 50% for 5 seconds. Each attack costs 10 Mana.');
INSERT INTO hots_talent VALUES (1133,49,7,'Quickening Blessing',0,'If cast on an ally, Light of Elune also increases their Movement Speed by 25% for 3 seconds.');
INSERT INTO hots_talent VALUES (1134,49,7,'Lunar Blaze',0,'Increases the range of Lunar Flare by 40%.');
INSERT INTO hots_talent VALUES (1135,49,7,'Lunar Momentum',0,'Basic Attacks reduce your Basic Ability cooldowns by 0.75 seconds.');
INSERT INTO hots_talent VALUES (1136,49,7,'Calldown: MULE',0,'Activate to calldown a Mule that repairs Structures, one at a time, near target point for 40 seconds, healing for 100 Health every 1 second. Grants 1 ammo every 3 seconds.');
INSERT INTO hots_talent VALUES (1137,49,10,'Shadowstalk',0,'Stealth all allied Heroes and heal them for 256 over 8 seconds. At the conclusion of Shadowstalk, they receive a burst of 100 healing.');
INSERT INTO hots_talent VALUES (1138,49,10,'Starfall',0,'Deal 91 damage per second and slow enemies by 20% in an area. Lasts 8 seconds.');
INSERT INTO hots_talent VALUES (1139,49,13,'Overflowing Light',0,'When you are above 50% Health, Light of Elune''s allied heal is increased by 30%.');
INSERT INTO hots_talent VALUES (1140,49,13,'Huntress'' Fury',0,'Gain 40% additional Attack Speed for 5 seconds when using Hunter''s Mark.');
INSERT INTO hots_talent VALUES (1141,49,13,'Sprint',0,'Activate to gain 75% Movement Speed for 3 seconds.');
INSERT INTO hots_talent VALUES (1142,49,13,'Shrink Ray',0,'Activate to reduce an enemy Hero''s damage by 50% and Movement Speed by 50% for 4 seconds.');
INSERT INTO hots_talent VALUES (1143,49,16,'Trueshot Aura',0,'You passively grant 15% Basic Attack damage to nearby allied Heroes.');
INSERT INTO hots_talent VALUES (1144,49,16,'Mark of Mending',0,'Basic Attacks against Marked targets heal for 2.5% maximum Health.');
INSERT INTO hots_talent VALUES (1145,49,16,'Ranger',0,'Increases width of Sentinel by 100%. Increases damage dealt based on distance traveled, up to a maximum of +200% damage.');
INSERT INTO hots_talent VALUES (1146,49,16,'Shooting Star',0,'Lunar Flare does 50% more damage. Hitting an enemy Hero will also refund the mana cost.');
INSERT INTO hots_talent VALUES (1147,49,20,'Hunter''s Swiftness',0,'When using Shadowstalk, you and allied Heroes gain 30% Movement Speed for 8 seconds.');
INSERT INTO hots_talent VALUES (1148,49,20,'Celestial Wrath',0,'Starfall can be cast globally. Damage is increased by 30%.');
INSERT INTO hots_talent VALUES (1149,49,20,'Nexus Frenzy',0,'Increases Attack Speed by 20% and Attack Range by 20%.');
INSERT INTO hots_talent VALUES (1150,49,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (1151,49,20,'Rewind',0,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (1152,50,1,'Conjurer''s Pursuit',0,'Quest: Gathering Regeneration Globes increases your Mana Regeneration by 0.1 per second, up to 2.54 per second. Reward: After gathering 25 Globes, also increase your maximum Mana by 100.');
INSERT INTO hots_talent VALUES (1153,50,1,'Hammer of the Lightbringer',0,'Basic Attacks also restore 8 Mana.');
INSERT INTO hots_talent VALUES (1154,50,1,'Fist of Justice',0,'Basic Attacks reduce cooldown of Hammer of Justice by 1 second.');
INSERT INTO hots_talent VALUES (1155,50,1,'Wave of Light',0,'Each Hero healed by Holy Radiance returns 10 Mana and reduces the cooldown by 1 second, up to a maximum of 50 Mana and 5 seconds.');
INSERT INTO hots_talent VALUES (1156,50,4,'Boundless Conviction',0,'Increases the width and length of Holy Radiance by 40%.');
INSERT INTO hots_talent VALUES (1157,50,4,'Beacon of Light',0,'You heal yourself for 30% of all healing done to allied Heroes.');
INSERT INTO hots_talent VALUES (1158,50,4,'Protective Shield',0,'Activate to shield an allied Hero for 15% of their max Health for 5 seconds.');
INSERT INTO hots_talent VALUES (1159,50,7,'Burden of Guilt',0,'After Hammer of Justice''s stun fades, the enemy''s Movement Speed is slowed by 30% for 2 seconds.');
INSERT INTO hots_talent VALUES (1160,50,7,'Holy Fire',0,'Deal 40 (19 + 4% per level) damage per second to nearby enemies. Basic Attacks against enemy Heroes increase this damage by 20% for 3 seconds. This can stack up to 3 times.');
INSERT INTO hots_talent VALUES (1161,50,7,'Cleanse',0,'Activate to make target ally Unstoppable for 1 second. Cannot be cast on yourself.');
INSERT INTO hots_talent VALUES (1162,50,10,'Divine Shield',0,'Make an allied Hero Invulnerable and increase their Movement Speed by 20% for 3 seconds.');
INSERT INTO hots_talent VALUES (1163,50,10,'Divine Storm',0,'Deal 187 damage and stun nearby enemies for 1.75 seconds.');
INSERT INTO hots_talent VALUES (1164,50,13,'Blessed Champion',0,'After usding Holy Light, your Basic Attacks heal you and nearby allied Heroes for 20% of the healed amount. Last 5 seconds.');
INSERT INTO hots_talent VALUES (1165,50,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (1166,50,13,'Holy Shock',0,'Holy Light can be used on an enemy to do 49.88% of its healing amount as damage and with 6 seconds less cooldown. When used this way, your next Holy Light heals for 50% more.');
INSERT INTO hots_talent VALUES (1167,50,13,'Shrink Ray',0,'Activate to reduce an enemy Hero''s damage by 50% and Movement Speed by 50% for 4 seconds.');
INSERT INTO hots_talent VALUES (1168,50,16,'Gathering Radiance',0,'Each Hero that Holy Radiance passes through increases the healing and damage of your next Holy Radiance by 8%, to a maximum of 80% increase.');
INSERT INTO hots_talent VALUES (1169,50,16,'Hardened Focus',0,'While above 80% life, your Basic Ability cooldowns regenerate 50% faster.');
INSERT INTO hots_talent VALUES (1170,50,16,'Righteous Defense',0,'Healing a Hero with Holy Light reduces all damage they take by 50% for 2 seconds.');
INSERT INTO hots_talent VALUES (1171,50,16,'Benediction',0,'Activate to reduce the Mana cost of your next Basic Ability by 50 and its cooldown by 10 seconds.');
INSERT INTO hots_talent VALUES (1172,50,20,'Bulwark of Light',0,'Divine Shield lasts 2 seconds longer and its cooldown is reduced by 20 seconds.');
INSERT INTO hots_talent VALUES (1173,50,20,'Divine Hurricane',0,'Divine Storm''s radius is increased by 50% and its cooldown is reduced by 20 seconds.');
INSERT INTO hots_talent VALUES (1174,50,20,'Redemption',0,'After Eternal Devotion ends, return to 50% of your maximum Health at your spirit''s location. This effect has a 180 second cooldown.');
INSERT INTO hots_talent VALUES (1175,50,20,'Storm Shield',0,'Activate to give all nearby allied Heroes a Shield for 20% of their max Health for 3 seconds.');
INSERT INTO hots_talent VALUES (1176,51,1,'Monster Hunter',0,'Reduces the Mana cost of Hungering Arrow by 40 and increases the damage it deals to Minions, Mercenaries, and Monsters by 150%.');
INSERT INTO hots_talent VALUES (1177,51,1,'Caltrops',0,'Drop 3 Caltrops while Vaulting. Caltrops do 99 (47 + 4% per level) damage and slow enemies by 20% for 1 second.');
INSERT INTO hots_talent VALUES (1178,51,1,'Hot Pursuit',0,'When at 10 stacks of Hatred, the Movement Speed bonus increases to 20% total and you gain 4 Mana per second.');
INSERT INTO hots_talent VALUES (1179,51,4,'Puncturing Arrow',0,'Quest:ÿHitting an enemy Hero with the initial impact of Hungering Arrow increases its damage by 5, up to a maximum of 100. Reward:ÿAfter gaining 100 bonus damage, gain an additional 75 bonus damage and Hungering Arrow also bounces 1 additional time.');
INSERT INTO hots_talent VALUES (1180,51,4,'Punishment',0,'Each stack of Hatred increases the damage of Multishot by 4%.');
INSERT INTO hots_talent VALUES (1181,51,4,'Creed of the Hunter',0,'Increases Attack Speed by 10%.');
INSERT INTO hots_talent VALUES (1182,51,7,'Arsenal',0,'Multishot also fires 3 grenades, which deal 263 (125 + 4% per level) damage. Each enemy Hero hit by a grenade reduces the cooldown of Multishot by 2 seconds.');
INSERT INTO hots_talent VALUES (1183,51,7,'Death Dealer',0,'Increases Vault Basic Attack damage bonus from 6% to 14% per stack of Hatred. If this attack kills its victim, the Mana cost and cooldown of Vault are refunded.');
INSERT INTO hots_talent VALUES (1184,51,7,'Repeating Arrow',0,'The cooldown for Hungering Arrow is reset when Vault is used.');
INSERT INTO hots_talent VALUES (1185,51,10,'Strafe',0,'Rapidly attack nearby visible enemies for 132 (63 + 4% per level) damage per hit, prioritizing heroes over minions. Valla is able to move and use Vault while strafing. Lasts for 4 seconds.');
INSERT INTO hots_talent VALUES (1186,51,10,'Rain of Vengeance',0,'Launch a wave of Shadow Beasts that deals 493 (234 + 4% per level) damage and stuns enemies in the target area for 0.5 seconds. Stores 2 charges.');
INSERT INTO hots_talent VALUES (1187,51,13,'Siphoning Arrow',0,'You heal for 75% of the damage dealt to Heroes by Hungering Arrow.');
INSERT INTO hots_talent VALUES (1188,51,13,'Tempered by Discipline',0,'While at 10 stacks of Hatred, your Basic Attacks heal you for 25% of the damage dealt.');
INSERT INTO hots_talent VALUES (1189,51,13,'Gloom',5,'Activate to consume all Hatred, gaining 3 Spell Armor per Hatred consumed for 5 seconds. Passive:ÿPermenantly gain 20 Spell Armor, reducing Ability Damage taken by 20%.');
INSERT INTO hots_talent VALUES (1190,51,16,'Frost Shot',0,'Increases the range of Multishot by 20% and it also slows by 25% for 1.5 seconds.');
INSERT INTO hots_talent VALUES (1191,51,16,'Seething Hatred',0,'Basic Attacks now grant 2 stacks of Hatred and the time it takes before Hatred expires is increased by 2 seconds.');
INSERT INTO hots_talent VALUES (1192,51,16,'Manticore',0,'Every 3rd Basic Attack against the same target deals an additional 5% of their maximum Health as damage.');
INSERT INTO hots_talent VALUES (1193,51,20,'Vengeance',0,'Strafe also fires penetrating bolts in a line for 75 (36 + 4% per level) damage every 0.25 seconds. 25% of the damage you deal with Strafe is returned as Health.');
INSERT INTO hots_talent VALUES (1194,51,20,'Storm of Vengeance',0,'Basic Attacks reduce the charge cooldown of Rain of Vengeance by 5 seconds.');
INSERT INTO hots_talent VALUES (1195,51,20,'Rancor',0,'Each stack of Hatred also increases Attack Speed by 2%. While at 10 stacks of Hatred, gain an additional 30% Attack Speed.');
INSERT INTO hots_talent VALUES (1196,51,20,'Farflight Quiver',0,'Increases your Basic Attack range by 40%.');
INSERT INTO hots_talent VALUES (1197,52,1,'Backlash',0,'When Bone Armor expires, nearby enemy Heroes take damage equal to 15% of their maximum Health.');
INSERT INTO hots_talent VALUES (1198,52,1,'Shackler',0,'While Bone Armor is active, you slow nearby enemies by 35% for 1 Second.');
INSERT INTO hots_talent VALUES (1199,52,1,'Shade',0,'While Bone Armor is active, you evade all Basic Attacks, but increases the cooldown of Bone Armor by 20 seconds.');
INSERT INTO hots_talent VALUES (1200,52,4,'Death''s Reach',0,'Increases Spectral Scythe range by 20%.');
INSERT INTO hots_talent VALUES (1201,52,4,'Jailors',0,'Bone Prison spawns 2 Skeletal Warriors that fixate on the emeny for 15 seconds. These do not count towards your Raise Skeleton maximum.');
INSERT INTO hots_talent VALUES (1202,52,4,'Trag''Oul''s Essence',0,'Gain 8 Mana when you raise a Skeletal Warrior.');
INSERT INTO hots_talent VALUES (1203,52,7,'Harvest Vitality',0,'Cursed Strikes heals you for 145 (69 + 4% per level) for each Hero hit.');
INSERT INTO hots_talent VALUES (1204,52,7,'Weaken',0,'Increases Cursed Strikes Attack Speed slow from 50% to 75%.');
INSERT INTO hots_talent VALUES (1205,52,7,'Rathma''s Blessing',0,'Raising a Skeletal Warrior heals you for 55 (55 + 4% per level).');
INSERT INTO hots_talent VALUES (1206,52,10,'Poison Nova',0,'After a short delay, release poisonous missiles that deal 1249 (593 + 4% per level) damage to all enemies hit over 10 seconds.');
INSERT INTO hots_talent VALUES (1207,52,10,'Skeletal Mages',0,'Summon 4 Frost Mages in a line that attack nearby enemies for 103 (49 + 4% per level) damage a second and slow them by 30% for 2 seconds. Last up to 15 seconds.');
INSERT INTO hots_talent VALUES (1208,52,13,'Decrepify',0,'Spectral Scythe slows enemies by 40% for 3 seconds.');
INSERT INTO hots_talent VALUES (1209,52,13,'Giant''s Curse',0,'Cursed Stike deals an additional 2% of maximum Health as damage to Heroes.');
INSERT INTO hots_talent VALUES (1210,52,13,'Corpse Explosion',0,'When Skeletal Warriors die they explode for 116 (55 + 4% per level) damage in a small area. Deals 100% increased damage to non-Heroic enemies.');
INSERT INTO hots_talent VALUES (1211,52,16,'Executioner',0,'Basic Attacks deal 40% more damage against slowed, rooted, or stunned targets.');
INSERT INTO hots_talent VALUES (1212,52,16,'Flowing Wounds',0,'Reduces Spectral Scythe''s cooldown by 5 seconds if you hit an enemy Hero.');
INSERT INTO hots_talent VALUES (1213,52,16,'Amplify Damage',0,'Enemies rooted by Bone Prision become Vunerable for 1.75 seconds, taking 25% increased damage.');
INSERT INTO hots_talent VALUES (1214,52,16,'Skeleton Mastery',0,'Increases the maximum Skeletal Warriors you can have to 6 and increases their damage by 50%.');
INSERT INTO hots_talent VALUES (1215,52,20,'Call of the Grave',0,'Poison Nova deals an additional 1% of the target''s maximum life as damage every second.');
INSERT INTO hots_talent VALUES (1216,52,20,'Raised Mage',0,'When a nearby enemy Hero dies, a Frost Mage appears from their corpse to fight for you. Also increases thge slow of Frost Mages from 30% to 50%.');
INSERT INTO hots_talent VALUES (1217,52,20,'Mortal Wound',0,'Enemies hit by Spectral Scythe receive 75% less healing for 4 seconds.');
INSERT INTO hots_talent VALUES (1218,52,20,'Bone Spear',10,'Deal 510 (230 + 4% per level) damage to enemies in a line.');
INSERT INTO hots_talent VALUES (1219,53,1,'Volatile Acid',0,'Banelings can travel 50% further before exploding and their damage to Minions, Mercenaries, and Structures is increased by 50%.');
INSERT INTO hots_talent VALUES (1220,53,1,'Corpse Feeders',0,'Reduces the cooldown of Infested Drop by 3 seconds and Roachlings take 40% less damage from non-Heroic sources.');
INSERT INTO hots_talent VALUES (1221,53,1,'Infest',1,'Nearby Ranged Minions deal an additional 200% damage, plus an additional 1% per 1000 Siege damage Zagara has dealt. Can be toggled on or off.');
INSERT INTO hots_talent VALUES (1222,53,4,'Envenomed Spines',30,'Activate to have Zagara''s next Basic Attack apply 504 (240 + 4% per level) damage over 5 seconds.');
INSERT INTO hots_talent VALUES (1223,53,4,'Medusa Blades',0,'Basic Attacks deal 33% damage to three nearby targets.');
INSERT INTO hots_talent VALUES (1224,53,4,'Serrated Spines',0,'Quest: Each Basic Attack against a Hero increases Zagara''s Attack Damage by 0.3.');
INSERT INTO hots_talent VALUES (1225,53,7,'Baneling Massacre',0,'Zagara gains 2 additional charges of Banelings.');
INSERT INTO hots_talent VALUES (1226,53,7,'Viscous Acid',0,'Banelings slow enemies by 20% for 1.5 seconds.');
INSERT INTO hots_talent VALUES (1227,53,7,'Bile Drop',0,'Quest: Increases the impact damage of Infested Drop by 50%. Each Hero hit by the impact damage of Infested Drop increases the bonus damage by another 10%. Reward: Upon reaching 10% bonus damage, increases the impact radius of Infested Drop by 20%.');
INSERT INTO hots_talent VALUES (1228,53,10,'Devouring Maw',0,'Summon a Devouring Maw that devours enemies for 4 seconds. Devoured enemies cannot fight and take 176 (84 + 3% per level) damage per second.Usable on Unstoppable enemies.');
INSERT INTO hots_talent VALUES (1229,53,10,'Nydus Network',0,'Passive: Creep spreads 25% farther. Passive: While on Creep, each Basic Attack educes all of Zagara''s cooldowns by 1 second. Summon a Nydus Worm on Creep anywhere that Zagara has vision of. Zagara can enter a Nydus Worm and travel to any other Nydus Worm by right-cliking near it. While insde a Nydus Worm, Zagara regenerates 9.75% Health and Mana per second.');
INSERT INTO hots_talent VALUES (1230,53,13,'Hydralisk Transfusion',0,'Zagara is healed for 75% of the damage dealt by Hunter Killers'' Basic Attacks.');
INSERT INTO hots_talent VALUES (1231,53,13,'Protective Coating',0,'While on Creep, Zagara takes 20% less damage.');
INSERT INTO hots_talent VALUES (1232,53,13,'Spell Shield',0,'Upon taking Ability Damage, reduce that damage and further Ability Damage by 50% for 3 seconds. Can only trigger once every 30 seconds.');
INSERT INTO hots_talent VALUES (1233,53,16,'Brood Expansion',0,'Reduces the cooldown of Hunter Killer by 6 seconds.');
INSERT INTO hots_talent VALUES (1234,53,16,'Corrosive Saliva',0,'When used against Heroes, Hunter Killers deal additional damage equal to 2% of their maximum Health.');
INSERT INTO hots_talent VALUES (1235,53,16,'Mutalisk',0,'Your Hunter Killer now spawns a Mutalisk. Mutalisks have a bounce attack and do not have a timed life.');
INSERT INTO hots_talent VALUES (1236,53,20,'Tyrant Maw',0,'Devouring Maw deals 50% more damage and when you get a Takedown reduce its cooldown by 25 seconds.');
INSERT INTO hots_talent VALUES (1237,53,20,'Endless Creep',0,'The cast range for Creep Tumor is increased by 2000%. Creep Tumors now last 600 seconds. While on Creep, Zagara gains an additional 20% Movement Speed.');
INSERT INTO hots_talent VALUES (1238,53,20,'Fury of the Storm',0,'Every 5 seconds, your next basic attack will deal an additional 91 damage to the target, and 228 damage to all nearby Minions and Mercenaries.');
INSERT INTO hots_talent VALUES (1239,54,1,'Greater Cleave',0,'Increases the radius of Cleave by 33%.');
INSERT INTO hots_talent VALUES (1240,54,1,'Vorpal Blade',15,'Activate to teleport to the last non-structure target you attacked within 3 seconds.');
INSERT INTO hots_talent VALUES (1241,54,1,'Shadow Hunter',0,'Quest:ÿGather Regeneration Globes to lower the Mana cost of Blink by 2 . Reward:ÿUpon gathering 20 Regeneration Globes, Basic Attacks reduce the cooldown of Blink by 1 second.');
INSERT INTO hots_talent VALUES (1242,54,4,'Grim Task',0,'Quest:ÿHero Takedowns increase Ability Power by 5% up to 50% . This bonus Ability Power is lost on death. Reward:ÿNone');
INSERT INTO hots_talent VALUES (1243,54,4,'Rending Cleave',0,'Cleave deals an additional 40% damage over 3 seconds.');
INSERT INTO hots_talent VALUES (1244,54,4,'Combo Slash',0,'After using an Ability, Zeratul''s next Basic Attack within 6 seconds deals 40% additional damage.');
INSERT INTO hots_talent VALUES (1245,54,7,'Wormhole',0,'For 2 seconds, you can activate Blink again to return to the point where it was cast from.');
INSERT INTO hots_talent VALUES (1246,54,7,'Slip into Shadow',0,'Blink gains an additional charge, but its cooldown is increased by 8 seconds.');
INSERT INTO hots_talent VALUES (1247,54,7,'Seeker in the Dark',0,'Singularity Spike takes 50% longer to explode. It can be reactivated to teleport to the target, granting 30% increased Move Speed for 3 seconds.');
INSERT INTO hots_talent VALUES (1248,54,10,'Shadow Assault',0,'Your Basic Attacks cause you to charge at enemies and have 20% increased Attack Speed. Lasts for 6 seconds.');
INSERT INTO hots_talent VALUES (1249,54,10,'Void Prison',0,'Slows time in an area to a near standstill, making allies and enemies invulnerable and unable to act for 5 seconds. You are not affected.');
INSERT INTO hots_talent VALUES (1250,54,13,'Shroud of Adun',0,'Zeratul gains a shield equal to 15% of his Maximum Health over 5 seconds while under Permanent Cloak.');
INSERT INTO hots_talent VALUES (1251,54,13,'Spell Shield',0,'Every 30 seconds, gain 50 Spell Armor against the next Ability and subsequent Abilities for 1.5 seconds, reducing the damage taken by 50%. Can be toggled to allow or prevent this talent from triggering.');
INSERT INTO hots_talent VALUES (1252,54,13,'Mending Strikes',0,'Basic Attacks heal for 35% of the damage dealt.');
INSERT INTO hots_talent VALUES (1253,54,16,'Master Warp-Blade',0,'Every third consecutive Basic Attack against the same target deals 125% bonus damage.');
INSERT INTO hots_talent VALUES (1254,54,16,'Void Slash',0,'If Cleave hits more than one enemy Hero, it deals 50% increased damage and its cooldown is reduced by 3 seconds.');
INSERT INTO hots_talent VALUES (1255,54,16,'Sentenced to Death',0,'Deal 50% increased damage to enemies while they have a Singularity Spike attached to them.');
INSERT INTO hots_talent VALUES (1256,54,20,'Nerazim Fury',0,'Shadow Assault grants 30% Life Steal, and the duration is increased by 50%.');
INSERT INTO hots_talent VALUES (1257,54,20,'Protective Prison',0,'Allies are no longer affected by Void Prison, and enemies are slowed by 50% for 3 seconds once Void Prison ends.');
INSERT INTO hots_talent VALUES (1258,54,20,'Nexus Blades',0,'Basic Attacks deal 20% more damage and slow enemy Movement Speed by 20% for 1 second.');
INSERT INTO hots_talent VALUES (1259,54,20,'Rewind',60,'Activate to reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (1260,55,1,'Without Effort',0,'Telekinesis no longer costs Mana.');
INSERT INTO hots_talent VALUES (1261,55,1,'Applied Force',0,'Reduces the damage bonus of Sadism by 10% but Telekinesis pushes 20% further.');
INSERT INTO hots_talent VALUES (1262,55,1,'Power Conduit',0,'Reduces the Mana cost of Lightning Surge by 10.');
INSERT INTO hots_talent VALUES (1263,55,4,'Double Cross',0,'Increases the range of Discord Strike by 25% and also hits in a line perpendicular to the forward strike.');
INSERT INTO hots_talent VALUES (1264,55,4,'Reckless Strike',0,'Reduces the delay of Discord Strike by 0.25 seconds but if it hits an enemy you become Vulnerable, causing Alarak to take 25% more damage for 2 seconds.');
INSERT INTO hots_talent VALUES (1265,55,4,'Cycle of Discord',0,'Reduces the cooldown of Discord Strike by 2 seconds. If a Discord Strike hits no enemies, the mana cost is refunded and cooldown reduced by 3 seconds.');
INSERT INTO hots_talent VALUES (1266,55,4,'Extended Lightning',0,'Increases Lightning Surge range by 20%.');
INSERT INTO hots_talent VALUES (1267,55,7,'Chaos Reigns',0,'Quest:ÿEach time Discord Strike hits a Hero its damage increases by 3 up to 45. Reward:ÿAfter hitting 15 Heroes, increase its damage by an additional 45.');
INSERT INTO hots_talent VALUES (1268,55,7,'Endless Energy',0,'Quest:ÿHeroes hit between you and the victim permanently decreases the cooldown of Lightning Surge by 0.2 seconds, up to 2 seconds. Reward:ÿNone');
INSERT INTO hots_talent VALUES (1269,55,7,'Thunderstruck',0,'Reduces the damage bonus of Sadism by 10%, but Lightning Surge slows enemies hit between you and the victim by 70% for 2 seconds.');
INSERT INTO hots_talent VALUES (1270,55,10,'Deadly Charge',60,'After channeling, Alarak charges forward dealing 439 (208 + 4% per level) damage to all enemies in the path. Distance is increased based on the amount of time channeled, up to 1.625 seconds.Issuing a Move order while this is channeling will cancel it at no cost. Taking damage will interrupt the channeling.');
INSERT INTO hots_talent VALUES (1271,55,10,'Counter-Strike',30,'Alarak becomes Protected and channels for 1 second. If an enemy Hero attacked Alarak during that time, Alarak sends a shockwave forward that deals 548 (260 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (1272,55,13,'Dissonance',0,'Reduces the damage bonus of Sadism by 10% but increases Discord Strike''s silence duration by 0.75 seconds.');
INSERT INTO hots_talent VALUES (1273,55,13,'Psychokinesis',0,'Increases the damage of Telekinesis by 100%.');
INSERT INTO hots_talent VALUES (1274,55,13,'Hindered Motion',0,'Reduces the damage bonus of Sadism by 10% but Telekinesis slows enemies by 40% for 2 seconds.');
INSERT INTO hots_talent VALUES (1275,55,13,'Pure Malice',0,'When a nearby Ally Hero dies, your Sadism bonus is increased by 8%, stacking up to 40%. This bonus Sadism cannot be consumed by Hasty Bargain and is lost on death.');
INSERT INTO hots_talent VALUES (1276,55,16,'Quick Mind',0,'Reduces the damage bonus of Sadism by 10% and the cooldown of Telekinesis by 6 seconds.');
INSERT INTO hots_talent VALUES (1277,55,16,'Projected Force',0,'Reduces the damage bonus of Sadism by 10% but increases the range of Telekinesis by 25%.');
INSERT INTO hots_talent VALUES (1278,55,16,'Sustaining Power',0,'Increases the healing you receive from dealing damage to Heroes with Lightning Surge by 30%.');
INSERT INTO hots_talent VALUES (1279,55,16,'Negatively Charged',0,'Increases damage dealt to enemies hit by the center beam of Lightning Surge by 100%, but does not generate any additional healing.');
INSERT INTO hots_talent VALUES (1280,55,20,'Deadly Charge',60,'After channeling, Alarak charges forward dealing 439 (208 + 4% per level) damage to all enemies in the path. Distance is increased based on the amount of time channeled, up to 1.625 seconds.Issuing a Move order while this is channeling will cancel it at no cost. Taking damage will interrupt the channeling.This ability will take over your Trait button.');
INSERT INTO hots_talent VALUES (1281,55,20,'Counter-Strike',30,'Channel for 1 second and become Protected. After, if an enemy Hero attacked you, send a shockwave that deals 548 (260 + 4% per level) damage.This ability will take over your Trait button.');
INSERT INTO hots_talent VALUES (1282,55,20,'Last Laugh',20,'Activate to remove all roots, slows, and damage over time effects and teleport to the chosen location. Activating Last Laugh will immediately reduce Alarak''s Health to 1.');
INSERT INTO hots_talent VALUES (1283,55,20,'Hasty Bargain',20,'Activate to permanently reduce your Sadism bonus by 4% and reset the cooldowns of your Basic Abilities.');
INSERT INTO hots_talent VALUES (1284,56,1,'Swift Sweep',0,'Increases the cast speed of Sacred Sweep by 50%.');
INSERT INTO hots_talent VALUES (1285,56,1,'Increasing Clarity',0,'Quest: Every time Sacred Sweep hits a Hero in the center, increase the center damage by 3 up to 60. Reward: After hitting 20 Heroes, the center damage bonus is doubled to 120.');
INSERT INTO hots_talent VALUES (1286,56,1,'Righteous Assault',0,'Reduces the cooldown of Sacred Sweep by 2 seconds for each enemy Hero hit, up to a total of 4 seconds.');
INSERT INTO hots_talent VALUES (1287,56,1,'Searing Light',0,'Ray of Heaven also deals damage to enemies in the area equal to 30% of the energy consumed.');
INSERT INTO hots_talent VALUES (1288,56,4,'Majestic Span',0,'Increase Sacred Sweep radius');
INSERT INTO hots_talent VALUES (1289,56,4,'Heavy Burden',0,'The enemy will be slowed by 35% for 3 seconds if Detainment Strike stuns the enemy.');
INSERT INTO hots_talent VALUES (1290,56,4,'Repeated Offense',0,'Quest: Every time Detainment Strike stuns a Hero, increase the stun damage by 10 up to 100.Reward: After stunning 10 Heroes, increase the damage by an additional 100.');
INSERT INTO hots_talent VALUES (1291,56,7,'Bursting Light',0,'Reduces the cooldown of Ray of Heaven by 2 seconds.');
INSERT INTO hots_talent VALUES (1292,56,7,'Glimmer of Hope',0,'Collecting a Regeneration Globe reduces the cost of your next Ray of Heaven by 35%.');
INSERT INTO hots_talent VALUES (1293,56,7,'Energized Cord',0,'Increases the energy stored from Auriel''s Basic Attacks to 100% of the damage against Heroes and 30% of the damage against non-Heroes.Does not affect your Bestow Hope ally.');
INSERT INTO hots_talent VALUES (1294,56,7,'Empathic Link',0,'Auriel stores 25% of damage taken by allies with Bestow Hope.');
INSERT INTO hots_talent VALUES (1295,56,10,'Resurrect',0,'Channel on the spirit of a dead ally for 3 seconds, bringing them back to life with 50% of their maximum health at the location where they died.');
INSERT INTO hots_talent VALUES (1296,56,10,'Crystal Aegis',0,'Place an allied Hero into Stasis for 2 seconds. Upon expiration, Crystal Aegis deals 592 (281 + 4% per level) damage to all nearby enemies.');
INSERT INTO hots_talent VALUES (1297,56,13,'Blinding Flash',0,'Enemies hit by the center area of Sacred Sweep are blinded for 4 seconds.');
INSERT INTO hots_talent VALUES (1298,56,13,'Converging Force',0,'Enemies hit by the outer area are pushed slightly toward the center.');
INSERT INTO hots_talent VALUES (1299,56,13,'Piercing Lash',0,'Detainment Strike now pierces and hits all enemies in a line.');
INSERT INTO hots_talent VALUES (1300,56,13,'Repelling Strike',0,'Enemies hit by Detainment Strike are knocked back 35% farther.');
INSERT INTO hots_talent VALUES (1301,56,16,'Reservoir of Hope',0,'Quest: Each maximum energy Ray of Heaven Auriel casts increases the maximum amount of energy that can be stored by 75.');
INSERT INTO hots_talent VALUES (1302,56,16,'Will of Heaven',0,'Allies with Bestow Hope gain 20% Attack Speed.');
INSERT INTO hots_talent VALUES (1303,56,16,'Wrath of Heaven',0,'Allies with Bestow Hope gain 10% Ability Power.');
INSERT INTO hots_talent VALUES (1304,56,20,'Light Speed',0,'Increases the healing of Resurrect to 100% of the ally''s maximum Health, and they also gain 199.68% increased Movement Speed that decays over 4 seconds.');
INSERT INTO hots_talent VALUES (1305,56,20,'Diamond Resolve',0,'When Crystal Aegis expires, it grants a shield that reduces damage taken by 50% for 4 seconds.');
INSERT INTO hots_talent VALUES (1306,56,20,'Angelic Flight',45,'Activate to fly to a chosen location.');
INSERT INTO hots_talent VALUES (1307,56,20,'Shield of Hope',0,'Activate to grant all nearby allied Heroes a shield for 3 seconds equal to 50% of the amount of Health they are missing.');
INSERT INTO hots_talent VALUES (1308,57,1,'We Move Together',0,'Increase the passive movement speed bonus ofÿSpeed Boostÿto 20% (from 15%).');
INSERT INTO hots_talent VALUES (1309,57,1,'Maximum Tempo',0,'Quest:ÿKill 5 enemy Heroes whileÿSpeed Boostÿis active. Reward:ÿIncrease AmpedÿSpeed Boostÿto 60%.');
INSERT INTO hots_talent VALUES (1310,57,1,'Accelerando',0,'Increase the Movement Speed bonus of Wall Ride from 20% to 40% over 4 seconds, and maintain that speed as long as you maintain the Wall Riding movement speed bonus.');
INSERT INTO hots_talent VALUES (1311,57,1,'Slip',0,'Increase the Movement Speed bonus of Wall Ride to 70% for 1 second when near or passing through an enemy Hero.');
INSERT INTO hots_talent VALUES (1312,57,4,'Subwoofer',0,'Increase the knockback of Soundwave by up to 50%, based on how close to you they are.');
INSERT INTO hots_talent VALUES (1313,57,4,'Off the Wall',0,'If you hit an enemy Hero while you have the Wall Riding Movement Speed bonus, reduce the cooldown by 3 seconds.');
INSERT INTO hots_talent VALUES (1314,57,4,'Chase the Bass',0,'Quest:ÿAfter hitting 20 enemy Heroes with Soundwave, increase the arc by 50% and the range by 20%.');
INSERT INTO hots_talent VALUES (1315,57,7,'Party Mix',0,'Quest:ÿSupport allies with your aura for a total of 8 minutes (supporting multiple allies rewards more time). Reward:ÿIncrease its radius by 25%.');
INSERT INTO hots_talent VALUES (1316,57,7,'Loudspeaker',0,'If your aura is currently affecting 2 or more allies when you cast Amp It Up, increase its radius by 50% for the duration.');
INSERT INTO hots_talent VALUES (1317,57,7,'Boombox',20,'Place a permanent killable ward on the ground that gives nearby allies your Crossfade and Amp It Up auras (auras do not stack). 20 second cooldown. Max 1.');
INSERT INTO hots_talent VALUES (1318,57,10,'Sound Barrier',100,'After a 1 second delay, grant yourself and all nearby allied Heroes an X point shield that decays to 0 over 6 seconds.');
INSERT INTO hots_talent VALUES (1319,57,10,'Reverse Amp',100,'If your current Crossfade track isÿSpeed Boost, slow nearby enemy Heroes by 40% for 3 seconds. If your current Crossfade track isÿHealing Boost, damage nearby enemy Heroes for X damage per second for 3 seconds.');
INSERT INTO hots_talent VALUES (1320,57,13,'Beat Mixing',0,'Gain a permanent x point shield 1.5 seconds after switching tracks. Switching tracks also immediately clears any current shield from this talent.');
INSERT INTO hots_talent VALUES (1321,57,13,'Can''t Stop, Won''t Stop',0,'You cannot be slowed or rooted while you have the Wall Riding Movement Speed bonus.');
INSERT INTO hots_talent VALUES (1322,57,13,'Hard Style',0,'Gain 25 Armor while Wall Ride''s Movement Speed bonus is active, reducing damage by 25%.');
INSERT INTO hots_talent VALUES (1323,57,13,'Back in the Mix',0,'Heal yourself for x after exiting from an enemy Stun, Silence, or Stasis. This effect cannot happen more than once every 10 seconds.');
INSERT INTO hots_talent VALUES (1324,57,16,'Heliotropics',0,'Soundwave also Blinds enemies for 2.5 seconds.');
INSERT INTO hots_talent VALUES (1325,57,16,'Rejuvenescência',0,'While Amp It Up is active, Crossfade''sÿHealing Boostÿheals for an additional 3% of the target''s maximum health per second.');
INSERT INTO hots_talent VALUES (1326,57,16,'Bring it Together',0,'If your aura is currently affecting 2 or more allies when you cast Amp It Up, Crossfade''sÿHealing Boostÿis increased by 40% for the duration.');
INSERT INTO hots_talent VALUES (1327,57,16,'Up the Frequency',0,'Amp It Up''s mana cost is reduced to 80 from 100, and dealing Basic Attack damage to enemy Heroes reduces the cooldown of Amp It Up by 0.35 seconds.');
INSERT INTO hots_talent VALUES (1328,57,20,'Bossa Nova',0,'Reduce the cooldown of Sound Barrier to 30 seconds, but the shield now decays over 4 seconds (from 6).');
INSERT INTO hots_talent VALUES (1329,57,20,'Nonstop Remix',0,'The duration of Reverse Amp is paused while it effects 2 or more enemy Heroes.');
INSERT INTO hots_talent VALUES (1330,57,20,'Encore',0,'Using Crossfade while Amp It Up is active resets the duration of Amp It Up back to its max duration. This can only occur once per cast.');
INSERT INTO hots_talent VALUES (1331,57,20,'Synaesthesia Auditiva',0,'Casting Amp It Up removes all Stun, Slow, and Root effects from nearby allies, and all Slow and Root effects on L£cio.');
INSERT INTO hots_talent VALUES (1332,58,1,'Sulfuras Hungers',0,'Quest:ÿEvery time you kill a Minion with Empower Sulfuras, its damage is increased by 1, up to 30. Reward:ÿAfter killing 30 Minions, increase its damage by an additional 90.');
INSERT INTO hots_talent VALUES (1333,58,1,'Shifting Meteor',0,'Quest:ÿHit 75 heroes with Living Meteor. Reward:ÿDuration is increased by 30%, and you can recast the Ability to change its direction once per cast.');
INSERT INTO hots_talent VALUES (1334,58,1,'Engulfing Flame',0,'Blast Wave''s cooldown is reduced by 2 seconds, and its radius is increased by 15%.');
INSERT INTO hots_talent VALUES (1335,58,4,'Fire Ward',0,'When Living Meteor hits an Enemy Hero, you gain a charge of Spell Block, reducing damage from the next enemy ability against you by 50%. Can hold up to 2 charges.');
INSERT INTO hots_talent VALUES (1336,58,4,'Slow Burn',0,'Blast Wave slows enemies hit by 40% for 2 seconds.');
INSERT INTO hots_talent VALUES (1337,58,4,'Catching Fire',0,'Quest:ÿGathering a Regeneration Globe increases your Health Regeneration by 2 per second, up to 30. Reward:ÿAfter gathering 15 Regeneration Globes, you can activate Catching Fire to gain 25 Armor for 3 seconds, reducing damage taken by 25%.');
INSERT INTO hots_talent VALUES (1338,58,7,'Hand of Ragnaros',0,'If Empower Sulfuras hits at least 2 enemy Heroes, it restores 10 Mana and its cooldown is reduced by 2 seconds.');
INSERT INTO hots_talent VALUES (1339,58,7,'Molten Power',0,'Each enemy hero hit by Living Meteor increases the damage of your next Living Meteor by 15%, up to a maximum of 75%.');
INSERT INTO hots_talent VALUES (1340,58,7,'Superheated',0,'When you cast Blast Wave on yourself, it deals 100% increased damage.');
INSERT INTO hots_talent VALUES (1341,58,10,'Sulfuras Smash',60,'Hurl Sulfuras at the target area. It lands after 0.75 seconds, dealing 187 damage (+4% per level). Enemies in the center take an additional 374 damage (+4% per level) and are stunned for 0.5 seconds.');
INSERT INTO hots_talent VALUES (1342,58,10,'Lava Wave',100,'Release a wave of lava from your Core that travels down the targeted lane, dealing 603 damage (+4% per level) per second to non-Structure enemies in its path and instantly killing enemy Minions. Damage increased by 33% versus Heroes.');
INSERT INTO hots_talent VALUES (1343,58,13,'Cauterized Wounds',0,'Empower Sulfuras heals you for an additional 60% of the damage dealt to heroes over 2 seconds.');
INSERT INTO hots_talent VALUES (1344,58,13,'Tempered Flame',0,'When Blast Wave damages an enemy Hero, you gain a Shield equal to 100% of the damage dealt for 3 seconds.');
INSERT INTO hots_talent VALUES (1345,58,13,'Resilient Flame',0,'While Stunned gain 50 Armor for 3 seconds reducing damage taken by 50%.');
INSERT INTO hots_talent VALUES (1346,58,16,'Giant Scorcher',0,'Empower Sulfuras burns enemy Heroes for 6% of their maximum Health over 3 seconds. This additional damage does not heal you.');
INSERT INTO hots_talent VALUES (1347,58,16,'Meteor Bomb',0,'Living Meteor explodes at the end of its path, dealing 229 damage (+4% per level) to all nearby enemies.');
INSERT INTO hots_talent VALUES (1348,58,16,'Blast Echo',0,'After Blast Wave explodes, cast another Blast Wave on yourself. Can only occur once per cast.');
INSERT INTO hots_talent VALUES (1349,58,20,'Flames of Sulfuron',0,'Sulfuras Smash slows enemies by 50% for 2 seconds and enemies in the center are stunned for an additional 0.5 seconds.');
INSERT INTO hots_talent VALUES (1350,58,20,'Lava Surge',0,'Lava Wave gains an additional charge and its cooldown is reduced by 10 seconds.');
INSERT INTO hots_talent VALUES (1351,58,20,'Heroic Difficulty',0,'Your Health and damage are increased by 25% while in Molten Core, and its cooldown is reduced by 50 seconds.');
INSERT INTO hots_talent VALUES (1352,58,20,'Submerge',90,'Activate to place yourself in stasis and heal for 624 Health (+4% per level) over 3 seconds.');
INSERT INTO hots_talent VALUES (1353,59,1,'Way of Illusion',0,'Quest:ÿEvery time one of your Images Critically Strikes a Hero, gain 0.5 Attack Damage, up to 20. Reward:ÿAfter hitting 40 Heroes, gain an additional 20 Attack Damage.');
INSERT INTO hots_talent VALUES (1354,59,1,'Way of the Blade',0,'Critical Strike now happens every 3rd Basic Attack and deals an additional 25% of your Basic Attack damage.');
INSERT INTO hots_talent VALUES (1355,59,1,'Way of the Wind',0,'Quest:ÿAttacking a Hero from Wind Walk increases the Movement Speed bonus of Wind Walk by 1.25%, up to 25%. Reward:ÿAfter hitting 20 Heroes, Wind Walk''s Unrevealable duration is increased to 2.5 seconds.');
INSERT INTO hots_talent VALUES (1356,59,4,'Mirage',0,'Mirror Image grants you and your Images 40 Spell Armor against the next 2 sources of Spell damage, reducing damage taken by 40%.');
INSERT INTO hots_talent VALUES (1357,59,4,'One with the Wind',0,'While Stealthed by Wind Walk, gain 60 Armor, taking 60% reduced damage from all sources.');
INSERT INTO hots_talent VALUES (1358,59,4,'Deflection',0,'Advancing Strikes grants 25 Physical Armor against Hero Basic Attacks, reducing damage taken by 25%.');
INSERT INTO hots_talent VALUES (1359,59,7,'Burning Blade',0,'Critical Strikes unleash a burst of flame, dealing an additional 65% of your Basic Attack damage to the target and nearby enemies.');
INSERT INTO hots_talent VALUES (1360,59,7,'Phantom Pain',0,'Critical Strikes deal an additional 40% of your Basic Attack damage for each Image you have active.');
INSERT INTO hots_talent VALUES (1361,59,7,'Crushing Blows',0,'Critical Strike now has two charges, and Critical Strikes deal an additional 25% of your Basic Attack damage.');
INSERT INTO hots_talent VALUES (1362,59,10,'Bladestorm',110,'Become an Unstoppable whirlwind of death, dealing 548 (260 + 4% per level) damage per second to nearby enemies for 4 seconds.');
INSERT INTO hots_talent VALUES (1363,59,10,'Illusion Master',6,'Switch places with the target Mirror Image, removing most negative effects from Samuro and the target Mirror Image. Passive:ÿYou can control Mirror Images separately or as a group, and they deal an additional 10% of your damage.');
INSERT INTO hots_talent VALUES (1364,59,13,'Mirrored Steel',0,'Basic Attacks against Heroes reduce the cooldown of Mirror Image by 1 second.');
INSERT INTO hots_talent VALUES (1365,59,13,'Kawarimi',0,'Wind Walk creates an Image at your location that will continue whatever you were doing.');
INSERT INTO hots_talent VALUES (1366,59,13,'Shukuchi',0,'Wind Walk teleports you a short distance in the direction you''re currently facing.');
INSERT INTO hots_talent VALUES (1367,59,16,'Merciless Strikes',0,'Basic Attacks against slowed, rooted, or stunned targets are always Critical Strikes.');
INSERT INTO hots_talent VALUES (1368,59,16,'Harsh Winds',0,'Attacking a Hero from Wind Walk causes them to take 30% increased damage from you and your Images for 3 seconds.');
INSERT INTO hots_talent VALUES (1369,59,16,'Press the Attack',0,'While Advancing Strikes is active, Basic Attacks increase your Attack Speed by 15%, up to 60%.');
INSERT INTO hots_talent VALUES (1370,59,20,'Dance of Death',0,'Your Images use Bladestorm when you do.');
INSERT INTO hots_talent VALUES (1371,59,20,'Three Blade Style',0,'Your Images gain an additional 50% of your Health, and last up to 36 seconds.');
INSERT INTO hots_talent VALUES (1372,59,20,'Wind Strider',0,'Wind Walk''s cooldown is reduced by 6 seconds.');
INSERT INTO hots_talent VALUES (1373,59,20,'Blademaster''s Pursuit',0,'Advancing Strikes grants an additional 15% bonus Movement Speed, and its duration is increased by 2 seconds.');
INSERT INTO hots_talent VALUES (1374,60,1,'Lion''s Maw',0,'Quest:ÿEvery time Lion''s Fang hits a Hero, increase its damage by 4, up to 120 Reward:ÿAfter hitting 30 Heroes, the slow is increased to 50% and its duration is increased to 2 seconds.');
INSERT INTO hots_talent VALUES (1375,60,1,'Overpower',0,'When you Parry a Hero''s Basic Attack, Heroic Strike''s cooldown is refreshed and the next one does 25% more damage.');
INSERT INTO hots_talent VALUES (1376,60,1,'High King''s Quest',0,'Quest:ÿHit 50 Heroes with Basic Attacks. Quest Participate in 5 Hero Takedowns. Quest: Gather 20 Regeneration Globes. Reward: Completing a Quest grants 10 Base Attack Damage. Completing all 3 Quests grants an additional 30 Base Attack Damage.');
INSERT INTO hots_talent VALUES (1377,60,4,'Shield Wall',0,'Parry now grants Protected, preventing all incoming damage for the duration.');
INSERT INTO hots_talent VALUES (1378,60,4,'Warbringer',0,'Charge now stuns the target for 1 second instead of slowing them, and its cooldown is reduced by 6 seconds.');
INSERT INTO hots_talent VALUES (1379,60,7,'Live by the Sword',0,'Increase the duration of Parry by 40%. If you block at least 2 Hero Basic Attacks with a single Parry, its cooldown is reduced by 2 seconds.');
INSERT INTO hots_talent VALUES (1380,60,7,'Second Wind',0,'Basic Attacks heal Varian for 1.17% of his maximum Health. While below 50% Health, they also heal him for 50% of the damage dealt.');
INSERT INTO hots_talent VALUES (1381,60,7,'Victory Rush',0,'Every 60 seconds, Varian''s next Basic Attack will heal him for 877 (416 + 4% per level) Health. When a nearby enemy minion dies, the cooldown is reduced by 15 seconds.');
INSERT INTO hots_talent VALUES (1382,60,10,'Taunt',16,'Force the target Hero to attack Varian for 1.25 seconds.');
INSERT INTO hots_talent VALUES (1383,60,10,'Colossus Smash',20,'Smash a target enemy, dealing 410 (195 + 4% per level) damage and making them Vulnerable for 3 seconds.');
INSERT INTO hots_talent VALUES (1384,60,10,'Twin Blades of Fury',0,'Basic Attacks reduce Heroic Strike''s cooldown by 9 seconds, and increase Varian''s Movement Speed by 30% for 2 seconds.');
INSERT INTO hots_talent VALUES (1385,60,13,'Juggernaut',0,'Charge deals bonus damage to Heroes equal to 6% of their maximum Health.');
INSERT INTO hots_talent VALUES (1386,60,13,'Mortal Strike',0,'Heroes hit by Heroic Strike receive 40% reduced healing for 4 seconds.');
INSERT INTO hots_talent VALUES (1387,60,13,'Shattering Throw',30,'Activate to throw a sword that deals 110 (52 + 4% per level) damage to the target, and up to 3068 (1456 + 4% per level) bonus damage to their Shields.Passive: Basic Attacks deal up to 200% bonus damage to Shields.');
INSERT INTO hots_talent VALUES (1388,60,16,'Banner of Stormwind',45,'Activate to place a Banner that grants 25% increased Movement Speed to nearby allied Heroes. Lasts 12 seconds.');
INSERT INTO hots_talent VALUES (1389,60,16,'Banner of Ironforge',45,'Activate to place a Banner that grants 25 Armor to nearby allied Heroes, reducing damage taken by 25%. Lasts 12 seconds.');
INSERT INTO hots_talent VALUES (1390,60,16,'Banner of Dalaran',45,'Activate to place a Banner that grants 20% increased Ability Power to nearby allied Heroes. Lasts 12 seconds.');
INSERT INTO hots_talent VALUES (1391,60,20,'Vigilance',0,'Being hit by a Hero Basic Attack reduces the cooldown of Taunt by 1 second.');
INSERT INTO hots_talent VALUES (1392,60,20,'Master at Arms',0,'Colossus Smash affects all enemies near the target, and its cooldown is reduced by 10 seconds.');
INSERT INTO hots_talent VALUES (1393,60,20,'Frenzy',0,'Twin Blades of Fury increases Varian''s Attack Speed by an additional 15%, and Basic Attacks increase his Movement Speed by an additional 10%.');
INSERT INTO hots_talent VALUES (1394,60,20,'Glory to the Alliance',0,'Banner now also increases health regeneration and all healing received for nearby allied Heroes by 50%, and the cooldown is reduced by 20 seconds.');
INSERT INTO hots_talent VALUES (1395,60,20,'Demoralizing Shout',25,'Activate to demoralize nearby enemy Heroes, reducing damage they deal by 25% for 5 seconds.');
INSERT INTO hots_talent VALUES (1396,61,1,'Demolitions Expert',0,'Quest: For every 5 enemy Heroes hit by Particle Grenade, its recharge rate lowers by 0.375 seconds, up to 3 seconds.Reward: Once Particle Grenade has hit 40 enemy Heroes, its radius is increased by 15%.');
INSERT INTO hots_talent VALUES (1397,61,1,'Together We Are Strong',0,'Every 22 (11 + 4% per level) damage done by allies while under Shield Ally contributes 1 Energy, up to 25 Energy per shield.');
INSERT INTO hots_talent VALUES (1398,61,1,'Feel the Heat',0,'Zarya''s Basic Attack deals -8.50% additional damage to enemies in melee range.');
INSERT INTO hots_talent VALUES (1399,61,1,'Maximum Charge',0,'Regen Globes now instantly grant 20 Energy.Quest: Spend 120 seconds at or above 50 Energy.Reward: Gain an additional 20 maximum Energy.');
INSERT INTO hots_talent VALUES (1400,61,4,'I Am the Strongest',0,'Personal Barrier absorbs an additional 307 (146 + 4% per level) damage.');
INSERT INTO hots_talent VALUES (1401,61,4,'Give Me Twenty',0,'Quest: Regeneration Globes increase Shield Ally absorb amount by 15, up to 300 permanently. Reward: After collecting 20 Regen Globes, permanently reduce the cooldown of Shield Ally by 3 seconds.');
INSERT INTO hots_talent VALUES (1402,61,4,'Speed Barrier',0,'Shield Ally increases the allied Hero''s Movement Speed by 35% for the duration.');
INSERT INTO hots_talent VALUES (1403,61,4,'Defensive Shielding',0,'Upon expiration or breaking, Personal Barrier and Shield Ally reduce the damage of the next 2 Hero Basic Attacks within 12 seconds by 75%.');
INSERT INTO hots_talent VALUES (1404,61,7,'Pinpoint Accuracy',0,'Particle Grenade deals 40% more damage to enemies hit by the center of the blast.');
INSERT INTO hots_talent VALUES (1405,61,7,'Explosive Barrier',0,'Upon expiration or breaking, Personal Barrier explodes, dealing 220 (104 + 4% per level) damage to nearby enemies.');
INSERT INTO hots_talent VALUES (1406,61,7,'To the Limit',0,'While above 50 Energy your Basic Attack size is increased by 35%.');
INSERT INTO hots_talent VALUES (1407,61,7,'Hit Me',0,'Damage absorbed by Zarya''s Shields contributes 20% more Energy.');
INSERT INTO hots_talent VALUES (1408,61,10,'Graviton Surge',120,'Launch a gravity bomb that detonates after 1 second and draws enemy Heroes toward the center for 2.5 seconds.');
INSERT INTO hots_talent VALUES (1409,61,10,'Expulsion Zone',45,'Launch a gravity bomb that deals 272 (129 + 4% per level) damage and creates an expulsion zone for 3.5 seconds. Enemies who enter the affected area are knocked back and have their Movement Speed reduced by 50% for 1 second.');
INSERT INTO hots_talent VALUES (1410,61,13,'Unstoppable Competitor',0,'Personal Barrier makes you Unstoppable for up to 1.5 seconds.');
INSERT INTO hots_talent VALUES (1411,61,13,'Spell Barrier',0,'Upon expiration or breaking, Personal Barrier grants a Spell Shield that reduces Ability Damage taken by 75% for 3 seconds.');
INSERT INTO hots_talent VALUES (1412,61,13,'Endurance Training',0,'While at or above 75 Energy, Zarya gains 20 Armor, reducing all damage taken by 20%.');
INSERT INTO hots_talent VALUES (1413,61,13,'Pain is Temporary',30,'Activate to consume all Energy and gain a shield that absorbs 0.5% of Zarya''s maximum Health per Energy consumed and lasts for 3 seconds. Zarya may only have one personal shield active on herself at a time.');
INSERT INTO hots_talent VALUES (1414,61,16,'Plasma Shock',0,'Particle Grenade slows Movement Speed by 35% for 1 second to enemies near the center.');
INSERT INTO hots_talent VALUES (1415,61,16,'Cleansing Shield',0,'Shield Ally removes all disabling effects.');
INSERT INTO hots_talent VALUES (1416,61,16,'Gain Train',0,'Shield Ally now grants an untalented shield to a nearby ally upon impact.');
INSERT INTO hots_talent VALUES (1417,61,16,'Born in Battle',0,'While at or above 75 Energy, Zarya''s cooldowns regenerate 25% faster.');
INSERT INTO hots_talent VALUES (1418,61,20,'Gravity Kills',0,'Increases Graviton Surge''s duration by 1 second and causes it to deal 307 (146 + 4% per level) damage over the duration.');
INSERT INTO hots_talent VALUES (1419,61,20,'Clear Out',0,'Increases Expulsion Zone''s radius by 15% and Zarya''s maximum Energy temporarily increases by 10 per enemy Hero hit for 10 seconds.');
INSERT INTO hots_talent VALUES (1420,61,20,'Grenadier',0,'All Particle Grenade charges are returned at once.');
INSERT INTO hots_talent VALUES (1421,61,20,'Unyielding Defender',45,'Activate to reset the cooldown of Personal Barrier and Shield Ally.');
INSERT INTO hots_talent VALUES (1422,62,1,'Vigor',0,'Quest:ÿValeera regenerates an additional 2 Energy per second. Reward: After Gathering 20 Regen Globes, increase Valeera''s maximum Energy to 120.');
INSERT INTO hots_talent VALUES (1423,62,1,'Subtlety',0,'After remaining Vanished for at least 4 seconds, Ambush, Cheap Shot, or Garrote causes Veleera to regenerate an additional 10 Energy per second for 5 seconds.');
INSERT INTO hots_talent VALUES (1424,62,1,'Combat Readiness',0,'Each Combo Point spent grants 50 Physical Armor against the next enemy Hero Basic Attack, reducing its damage by 50%. Stores up to 3 charges.');
INSERT INTO hots_talent VALUES (1425,62,1,'Crippling Poison',15,'Activate to cause Valeera''s next instance of Spell Damage to slow enemy Movement Speed by 25% for 3 seconds. Activating Crippling Poison does not break Vanish.');
INSERT INTO hots_talent VALUES (1426,62,4,'Relentless Strikes',0,'Reduces the Energy cost of Sinister Strike by 10.');
INSERT INTO hots_talent VALUES (1427,62,4,'Hemorrhage',0,'Valeer''s Basic Attacks deal 25% additional damage to enemies affected by Garrote.');
INSERT INTO hots_talent VALUES (1428,62,4,'Initiative',0,'Ambush, Cheap Shot, and Garrote award 2 Combo Points.');
INSERT INTO hots_talent VALUES (1429,62,4,'Wound Poison',15,'Activate to cause Valeera''s next instance of Spell Damage to also reduce healing received by the victim by 50% for 4 seconds. Activating Wound Poison does not break Vanish.');
INSERT INTO hots_talent VALUES (1430,62,7,'Mutilate',0,'Sinister Strike now hits with both blades, dealing 100% additional damage, but its range is reduced by 1.');
INSERT INTO hots_talent VALUES (1431,62,7,'Fatal Finesse',0,'Quest:ÿEach time Blade Flurry damages an enemy Hero, its damage increases by 3, up to 60. Reward:ÿAfter damaging 20 Heroes with Blade Flurry, permanently reduce its Energy cost by 20.');
INSERT INTO hots_talent VALUES (1432,62,7,'Slice and Dice',0,'Eviscerating an enemy with 3 Combo Points causes Valeera''s next 3 Basic Attacks to have their Attack Speed increased by 150%. Lasts 3 seconds.');
INSERT INTO hots_talent VALUES (1433,62,7,'Assassinate',0,'Ambush deals 100% additional damage if no other enemy Heroes are within 5 range of the victim.');
INSERT INTO hots_talent VALUES (1434,62,10,'Smoke Bomb',60,'Create a cloud of smoke. While in the smoke, Valeera is Unreavealable, can pass through other units, and gains 25 Armor, reducing damage taken by 25%. Valeera can continue to attack and use abilities without being revealed. Lasts 5 seconds. Using this Ability does not break Vanish.');
INSERT INTO hots_talent VALUES (1435,62,10,'Cloak of Shadows',18,'Valeera is enveloped in a Cloak of Shadows, which immediately removes all damage over time effects from her. For 1 second, she becomes Unstoppable and gains 75 Spell Armor, reducing Ability Damage taken by 75%. Using this Ability does not break Vanish.');
INSERT INTO hots_talent VALUES (1436,62,13,'Elusiveness',0,'Increase Valeera''s Movement Speed while Vanished by an additional 10%.');
INSERT INTO hots_talent VALUES (1437,62,13,'Death From Above',0,'Ambush now has 5 range and teleports Valeera behind the victim.');
INSERT INTO hots_talent VALUES (1438,62,13,'Blind',0,'When Cheap Shot expires, the victim is blinded for 2.5 seconds.');
INSERT INTO hots_talent VALUES (1439,62,13,'Strangle',0,'Garrote reduces Ability Damage dealt by the victim by 25% for 7 seconds.');
INSERT INTO hots_talent VALUES (1440,62,16,'Seal Fate',0,'Sinister Strike deals 50% additional damage and generates an additional Combo Point when used against silenced, rooted, or stunned enemy Heroes.');
INSERT INTO hots_talent VALUES (1441,62,16,'Rupture',0,'Valeera''s Basic Attacks refresh the damage over time effect of Garrote.');
INSERT INTO hots_talent VALUES (1442,62,16,'Expose Armor',0,'Eviscerating an enemy with 3 Combo Points causes them to lose 25 Armor for 2 seconds, increasing all damage taken by 25%.');
INSERT INTO hots_talent VALUES (1443,62,16,'Thistle Tea',60,'Activate to instantly restore 100 Energy.');
INSERT INTO hots_talent VALUES (1444,62,20,'Adrenaline Rush',0,'While in the Smoke Bomb, Valeera regenerates an additional 30 Energy per second.');
INSERT INTO hots_talent VALUES (1445,62,20,'Enveloping Shadows',0,'Whenever Valeera uses Vanish, she also gains Cloak of Shadows.');
INSERT INTO hots_talent VALUES (1446,62,20,'Nightslayer',0,'Reduces the cooldown of Vanish by 3 seconds.');
INSERT INTO hots_talent VALUES (1447,62,20,'Cold Blood',45,'Activate to increase the damage of Valeera''s next Evicerate by 100%. Activating Cold Blood does not break Vanish.');
INSERT INTO hots_talent VALUES (1448,63,1,'Boneslicer',0,'Grievous Throw now pierces through enemies. Bonus damage increased by 15%.');
INSERT INTO hots_talent VALUES (1449,63,1,'Arcanite Axes',0,'Twin Cleave cooldown reduced by 0.5 seconds for every Hero hit. Ability Power is increased by 25% while below 50% Health.');
INSERT INTO hots_talent VALUES (1450,63,1,'You Want Axe?',0,'Quest:ÿEvery 5 Basic Attacks used against Heroes increases your Basic Attack damage by 1.5. Reward:ÿUpon reaching 24 Stacks, permanently gain 20% Range.');
INSERT INTO hots_talent VALUES (1451,63,4,'Troll''s Blood',0,'Increases Regeneration healing by 75%.');
INSERT INTO hots_talent VALUES (1452,63,4,'Let the Killing Begin',0,'Enemies killed by you increase your attack speed by 6% for 10 seconds, stacking up to 5 times. Basic Attacks refresh the duration.');
INSERT INTO hots_talent VALUES (1453,63,4,'Headhunter',60,'Quest:ÿKill all unique enemy Heroes. Reward: Activate to reveal all enemy Heroes for 4 seconds.');
INSERT INTO hots_talent VALUES (1454,63,7,'Vicious Assault',0,'Increases the number of charges to 6. Basic Attacks against afflicted Heroes reduces cooldown by 2 seconds.');
INSERT INTO hots_talent VALUES (1455,63,7,'Wrong Place Wrong Time',0,'If an enemy is hit by both axes at the same time, deal bonus damage.');
INSERT INTO hots_talent VALUES (1456,63,7,'Recklessness',0,'While below 50% health, gain 25% bonus Attack Damage.');
INSERT INTO hots_talent VALUES (1457,63,10,'Taz''dingo!',90,'Cannot be reduced to less than 1 Health for the next 4 seconds.');
INSERT INTO hots_talent VALUES (1458,63,10,'Guillotine',45,'Throw a massive axe into the air that crashes down on enemies, dealing damage based on how much Health you are missing.');
INSERT INTO hots_talent VALUES (1459,63,13,'Eye of Zul''jin',0,'Hitting an enemy Hero with Grievous Throw increases Movement Speed by 25% for 2 seconds.');
INSERT INTO hots_talent VALUES (1460,63,13,'Forest Medicine',0,'Regeneration no longer has to be channeled. Damage still breaks the heal.');
INSERT INTO hots_talent VALUES (1461,63,13,'Voodoo Shuffle',45,'Activate to remove all Slow and Root effects.');
INSERT INTO hots_talent VALUES (1462,63,16,'Swirling Death',0,'Axes cycle twice and can hit enemies on each revolution but cooldown is increased by 4 seconds.');
INSERT INTO hots_talent VALUES (1463,63,16,'Lacerate',0,'Increases Slow amount of each axe by 15%.');
INSERT INTO hots_talent VALUES (1464,63,16,'Ferocity',0,'Increases the Attack Speed bonus of Berserker by 40%.');
INSERT INTO hots_talent VALUES (1465,63,20,'Amani Resilience',0,'Restore Health equal to 50% of the damage you dealt while using Taz''dingo.');
INSERT INTO hots_talent VALUES (1466,63,20,'Buzzsaw',0,'After impact, the Guillotine continues rapidly forward, dealing damage to enemies in the line.');
INSERT INTO hots_talent VALUES (1467,63,20,'Ensnare',60,'Throw a net forward, rooting the first enemy hit.');