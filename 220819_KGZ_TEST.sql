/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.6.8-MariaDB : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;

USE `test`;

/*Table structure for table `artwork` */

DROP TABLE IF EXISTS `artwork`;

CREATE TABLE `artwork` (
  `art_id` varchar(100) NOT NULL COMMENT '작품 아이디',
  `fileIdx` varchar(50) DEFAULT NULL COMMENT '파일idx',
  `art_year` varchar(100) DEFAULT NULL COMMENT '작품 연도',
  `art_title` varchar(100) DEFAULT NULL COMMENT '작품 제목',
  `art_description` varchar(5000) DEFAULT NULL COMMENT '작품 설명',
  `art_material` varchar(100) DEFAULT NULL COMMENT '작품 재료',
  `art_technique` varchar(100) DEFAULT NULL COMMENT '작품 기법',
  `art_size` varchar(100) DEFAULT NULL COMMENT '작품 크기',
  `inventory_number` varchar(100) DEFAULT NULL COMMENT '작품 번호',
  `art_code` varchar(100) DEFAULT NULL COMMENT '작품 코드',
  `art_storage` varchar(100) DEFAULT NULL COMMENT '작품 보관',
  `arrival_date` varchar(100) DEFAULT NULL COMMENT '작품 도착일',
  `method_of_purchasing_to_the_fund` varchar(100) DEFAULT NULL COMMENT '펀드매입방법',
  `art_price` varchar(100) DEFAULT NULL COMMENT '작품 가격',
  `preservation_and_restoration` varchar(100) DEFAULT NULL COMMENT '보존 및 복원',
  `inscription_and_special_notes` varchar(100) DEFAULT NULL COMMENT '참고 사항',
  `art_reference` varchar(100) DEFAULT NULL COMMENT '작품 참조',
  `art_type` varchar(100) DEFAULT NULL COMMENT '작품 유형',
  `art_style` varchar(100) DEFAULT NULL COMMENT '작품 구성',
  `artist_id` varchar(100) NOT NULL COMMENT '작품 아이디',
  `rental_id` varchar(100) NOT NULL COMMENT '임대 아이디',
  `exhibition_id` varchar(100) NOT NULL COMMENT '전시회 아이디',
  PRIMARY KEY (`art_id`),
  KEY `FK` (`fileIdx`),
  CONSTRAINT `FK` FOREIGN KEY (`fileIdx`) REFERENCES `tb_file` (`fileIdx`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `artwork` */

insert  into `artwork`(`art_id`,`fileIdx`,`art_year`,`art_title`,`art_description`,`art_material`,`art_technique`,`art_size`,`inventory_number`,`art_code`,`art_storage`,`arrival_date`,`method_of_purchasing_to_the_fund`,`art_price`,`preservation_and_restoration`,`inscription_and_special_notes`,`art_reference`,`art_type`,`art_style`,`artist_id`,`rental_id`,`exhibition_id`) values 
('id_001','file_202208081019495431291700','1889년 6월','별이 빛나는 밤','《별이 빛나는 밤》(영어: The Starry Night)은 네덜란드의 화가 빈센트 반 고흐의 가장 널리 알려진 작품이자 정신병을 앓고 있을 당시 고흐가 그린 그림이다. 1889년 생 레미의 정신병원에서 고흐는 정신적 질환으로 인한 고통을 떠올려 그림 속의 소용돌이로 묘사했다.','유성페인트','캔버스에 유채','74cm x 92cm','inventory_001','art_001','미국 뉴욕 현대 미술관','2022-07-04','Operating lease(운용 리스)','가격 미정','서늘하고 어두운 장소에 보관하는 것이 최선','햇빛 속 자외선이 크롬옐로 색깔 변형시킴','위키백과','풍경화','회화','artist_001','rental_001','exhibition_001'),
('id_002','file_202208081019560552563100','1886년','그랑드자트섬의 일요일 오후','신인상주의의 창시자인 조르주 쇠라의 대표적인 작품 가운데 하나로 1886년 제8회 인상파 전람회에 출품되어 이목을 끌었다. 파리 근교의 그랑드 자트 섬에서 맑게 개인 여름 하루를 보내고 있는 시민들의 모습을 담고 있다.','유성페인트','점묘법','308 x 207 cm','inventory_002','art_002','미국 시카고 미술관','미정','Operating lease(운용 리스)','가격 미정',NULL,NULL,'위키백과','풍경화','회화','artist_002','rental_002','exhibition_002'),
('id_003','file_202208081019578063194800','1904년','Comb in the form of two dragonflies','Haarkam van hoorn, goud, smaragd, diamant, citrien en email. Twee libellen, gedeeltelijk met hun vleugels over elkaar, vechten om een prooi (een rookcitrien in goud gevat). De vleugels zijn van hoorn, de lichamen van goud. De tweetandige kam zit door middel van een gouden scharnier aan de achterkant gehecht.','뿔(동물 재료), 금(금속), 에메랄드(광물), 다디아몬드(광물), 황수정','plique-à-jour(유리질 법랑 기법)','높이 11.2 cm × 폭 15.4 cm','inventory_003','art_003','rijksmuseum(암스테르담 국립미술관)','미정','Operating lease(운용 리스)','가격 미정','Paris 1650-1900 : decorative arts in the Rijksmuseum, Reinier J. Baarsen, p. 578-579, cat.nr. 147','mark: ‘L. GAILLARD’, mark: ‘7683’','http://hdl.handle.net/10934/RM0001.COLLECT.16772','빗','보석류','artist_003','rental_003','exhibition_003'),
('id_004','file_202208081019586495162000','1503년','모나리자','모나리자는 16세기 르네상스 시대에 레오나르도 다 빈치가 그린 초상화로, 현재 프랑스 파리 루브르 박물관에 전시되어 있다. \"모나\"는 유부녀 이름 앞에 붙이는 이탈리아어 경칭이고, \"리자\"는 초상화의 모델이 된 여인의 이름이다. 즉, 한국어로 하면 \"리자 여사\"라는 뜻이 된다.','유성페인트','스푸마토(sfumato)-선을 부드럽게 하는 기법, 유채(油彩) 패널화','77cm x 53cm','inventory_004','art_004','Salle des États 루브르 박물관(1797- )','미정','Operating lease(운용 리스)','가격 미정','온도와 습도를 조정할 수 있는 강화유리 안에 넣어놨음','하늘은 하늘색이었으나 복원 작업으로 인해 색깔 변형시킴','위키백과','초상, Portrait painting','회화','artist_004','rental_004','exhibition_004');

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `Objects` varchar(500) DEFAULT NULL,
  `Title` varchar(1000) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `Institute_Identifier` varchar(100) DEFAULT NULL,
  `Identifier` varchar(100) NOT NULL,
  `Language` varchar(100) DEFAULT NULL,
  `Temporary` varchar(100) DEFAULT NULL,
  `Places` varchar(100) DEFAULT NULL,
  `Current_location` varchar(100) DEFAULT NULL,
  `Raw_Data_Type` longtext DEFAULT NULL,
  `Digital_Data_Type` varchar(100) DEFAULT NULL,
  `Coverage` varchar(100) DEFAULT NULL,
  `Creator` varchar(100) DEFAULT NULL,
  `Participants` varchar(100) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Provider` varchar(1000) DEFAULT NULL,
  `Providing_Institution` varchar(100) DEFAULT 'unknown',
  `Provider_Country` varchar(100) DEFAULT NULL,
  `Collection_Name` varchar(100) DEFAULT NULL,
  `Source` varchar(100) DEFAULT NULL,
  `IsPartOf` varchar(100) DEFAULT NULL,
  `Links` varchar(1000) DEFAULT NULL,
  `Rights_Statement_Media` varchar(100) DEFAULT NULL,
  `Rights` varchar(100) DEFAULT NULL,
  `Created_Time` datetime DEFAULT NULL,
  `Updated_Time` datetime DEFAULT NULL,
  `Data_Code` varchar(100) DEFAULT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Identifier`),
  KEY `useremail` (`useremail`),
  CONSTRAINT `data_ibfk_1` FOREIGN KEY (`useremail`) REFERENCES `user` (`useremail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `data` */

insert  into `data`(`Objects`,`Title`,`Subject`,`Description`,`Institute_Identifier`,`Identifier`,`Language`,`Temporary`,`Places`,`Current_location`,`Raw_Data_Type`,`Digital_Data_Type`,`Coverage`,`Creator`,`Participants`,`Publisher`,`Provider`,`Providing_Institution`,`Provider_Country`,`Collection_Name`,`Source`,`IsPartOf`,`Links`,`Rights_Statement_Media`,`Rights`,`Created_Time`,`Updated_Time`,`Data_Code`,`useremail`) values 
('Kol kyzgy','Kol kyzgy','Mirrow','Hand mirror - a bronze mirror with a solid handle, the handle has a round hole for hanging. Copper based alloy; casting, grinding and polishing of both surfaces without ornaments. It was found in the village of Jeti-Oguz, Jeti-Oguz region, Kyrgyzstan.','#00097','CONC_I001_20220816','English','II-I millennium BC. e.','','Archaeological exposition of The Center for nomadic civilization','Image; household item; D. 13,4; thickness - 0.2-0.3 cm','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','The Center of nomadic civilization','Kyrgyzstan','Archeology','','','','Yes','public domain','2022-08-16 14:31:58','2022-08-16 14:31:58','Data_Code_1','hong@email.com'),
('Marzhan Shuru','Marzhan Shuru','Beads','Beads collected from small red corals in seven rows on silk threads, then there is an alternation of beads on one thread from both sides to the clasp. Silver beads, orange amber, simple white and black beads in one row. Silver button used as a clasp.','#00035','CONC_I002_20220816','English','XX c.','','Ethnographic exposition of the Center of nomadic civilization','Image; a piece of jewelry for women; length 32 cm.','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','The Center of nomadic civilization','Kyrgyzstan','Ethnography','','','','Yes','public domain','2022-08-16 16:36:29','2022-08-16 16:36:29','Data_Code_2','hong@email.com'),
('Silver bracelet, with a round large coral in the middle, and small corals around the center. There is texturing and blackening.','Silver bracelet, with a round large coral in the middle, and small corals around the center. There is texturing and blackening.','Bracelet','The Center of nomadic civilization after named Kurmanjan Datka','№00033','CONC_I003_20220816','English','XX century.','','','Image; item of jewelry for women, weight 20 gr.','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','The Center of nomadic civilization','Kyrgyzstan','Ethnography. Jewelry Art','','','','Yes','public domain','2022-08-16 16:48:12','2022-08-16 16:48:12','Data_Code_3','hong@email.com'),
('Chakcha','Chakcha','Snuffbox','Silver snuff box for nasvay with patterns. The lid is cut out of wood and painted with red paint. On the lid there is a chain of silver connecting the vessel itself. Decorated with floral ornaments. There is texturing and blackening.','№00048','CONC_I004_20220816','English','20th c.','','','Image; household item for men; H. 13cm.x W. 8cm','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','The Center of nomadic civilization','Kyrgyzstan','Ethnography. Jewelry Art','','','','Yes','public domain','2022-08-16 16:53:54','2022-08-16 16:53:54','Data_Code_4','hong@email.com'),
('Karakhanid tyiyny','Karakhanid tyiyny','Coin','Bronze coin of the Karakhanids with patterns, broken off from the edge. It was found in the Chui valley, near the ruins of the city of Balasagyn, the capital of the Karakhanids. Found by Kylychev Alym.','№00188','CONC_I005_20220818','English','XI century.','','Archaeological exposition of The Center for nomadic civilization','Image; subject;  diameter 2,5 cm.','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','Karakhanids','Kyrgyzstan','Archeology','','','','Yes','public domain','2022-08-18 13:57:21','2022-08-18 13:57:21','Data_Code_5','hong@email.com'),
('Muyuz tarak ','Muyuz tarak ','Comb','Double-sided comb of horn mountain sheep with a pattern. Comb with medium and fine teeth. on one side there is a carving of the Kyrgyz ornament \"argali grazing on jailoo\" (pasture).','№00133','CONC_I006_20220818','English','20th century','','','Image; household item; L 6 cm.x w 5cm.','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','unknown','Kyrgyzstan','Ethnography','','','','Yes','public domain','2022-08-18 14:19:10','2022-08-18 14:19:10','Data_Code_6','hong@email.com'),
('Spearhead ','Spearhead ','Spearhead ','The tip of the spear is a bronze petiolate tip. Leaf-shaped feather 13 cm long, 2.3 cm wide. At the base, the feather turns into an oval, in cross section, tapering towards the end, 4 cm long. The cross section of the nozzle is oval - 1 cm x 0.7 cm, slightly flattened by forging. The nib of the tip was also refined by forging. In the lower part, at a distance of 1 cm from the edge, the attachment sharply becomes thinner, from 0.5 cm to 0.25 cm, ending with a sharp, curved end. It was found by Sabyr Mukaev on the shore of Issyk-Kul lake, Ornok village.','#00092','CONC_I007_20220818','English','Bronze Age ','','Archaeological exposition of The Center for nomadic civilization','Image; hunting, weapon subject; Length 17 cm.','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','unknown','Kyrgyzstan','Archeology','','','','Yes','public domain','2022-08-18 15:48:01','2022-08-18 15:48:01','Data_Code_7','hong@email.com'),
('Bird image','Bird image','Decor','Bronze decoration depicting a bird. The bird sits on an oval ring. There is a ledge for fixing the element. Found by Kylychev Alym.','№00228','CONC_I008_20220818','English','XVII century.','','Archaeological exposition of The Center for nomadic civilization','Image; decor item; H 7,5cm x W. 2cm','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','unknown','Kyrgyzstan','Archeology','','','','Yes','public domain','2022-08-18 16:09:27','2022-08-18 16:09:27','Data_Code_8','hong@email.com'),
('Bronze image of the Buddha. Found by Kylychev Alym.','Bronze image of the Buddha. Found by Kylychev Alym.','Item','The Center of nomadic civilization after named Kurmanjan Datka','#00227','CONC_I009_20220818','English','unknown','','Archaeological exposition of The Center for nomadic civilization','Image; ritual object; H. 5 x W. 1','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','unknown','Kyrgyzstan','Archeology','','','','Yes','public domain','2022-08-18 16:12:21','2022-08-18 16:12:21','Data_Code_9','hong@email.com'),
('Detachable handmade bronze bracelet, bent in the shape of a circle with open ends. The ends are tapered. The product is made of a plate with a smooth surface, without decoration and ornaments.','Detachable handmade bronze bracelet, bent in the shape of a circle with open ends. The ends are tapered. The product is made of a plate with a smooth surface, without decoration and ornaments.','Bracelet ','The Center of nomadic civilization after named Kurmanjan Datka','№00156','CONC_I010_20220818','English','X-VII century BC','','Archaeological exposition of The Center for nomadic civilization','Image; decoration item; H. 5 x W. 4','Image : png','','',NULL,'','Digital repository of Kyrgyzstan','unknown','Kyrgyzstan','Archeology','','','','Yes','public domain','2022-08-18 16:13:53','2022-08-18 16:13:53','Data_Code_10','hong@email.com'),
(NULL,'Alakiiz','carpet','Traditional rectangular felt floor carpet in black and purple wool.','science card','FAM_I001_20220819','English','Middle of the XX century .','','','Medium : Material / Material - wool Technique / Felting technique Size/ Size -372х170; \r\nFormat : rectangular; \r\nType of Art : felt carpets;','Image : png','','Momuntaev  Kerimb','','Oreshkin D.M.','','','','','','','','Yes','public domain','2022-08-19 13:14:14','2022-08-19 13:14:14','Data_Code_11','qwer1234'),
(NULL,'Alakiyiz \"Holiday\"','decorative panel','Felt panel made of wool of natural color, which depicts stylized people and horses..','science card','FAM_I002_20220819','English','1978','','','Medium : Material / Material - wool Technique / Felting technique Size/ Size -180x153;\r\nFormat : square ;\r\nType of Art : felt carpets','Image : jpg','','Abdullaev Mukash Tursunovich 1935 -2017 .','','Baltabaeva T.M.','','','','','','','Album \"Kyrgyz National Museum of Fine Arts named after G. Aitiev \", Bishek 2005.','Yes','public domain','2022-08-19 13:19:18','2022-08-19 13:19:18','Data_Code_12','qwer1234'),
(NULL,'Ayak cap. Case for transporting dishes','carpet','Rectangular shape with a triangular valve, decorated with embroidery .','science card','FAM_I003_20220819','English','Middle of the XX century .','','','Medium : Material - cloth, satin, velvet, satin, woolen and silk thread. Technique - embroidery, brush weaving, stitching Size -54x69; \r\nFormat : rectangular; \r\nType of Art : embroidery;','Image : jpg','','master Bekbayeva A. born in 1886','','Oreshkin D.M.','','','','','','','National Treasures of Kyrgyzstan. Antipina K.I. Frunze., 1974. Catalog of decorative and applied arts. Frunze., 1958. Catalog of the 4th republican art exhibition dedicated to. 50th anniversary of the Communist Party of Kyrgyzstan and the Republic of Kyrgyzstan. Frunze., 1974.  Album \"Kyrgyz pattern\" Frunze., Kyrgyzstan.1986.','Yes','public domain','2022-08-19 13:25:41','2022-08-19 13:25:41','Data_Code_13','qwer1234'),
(NULL,'Bashtyk .','Dish bag','Rectangular shape, made in the technique of weaving.','science card','FAM_I004_20220819','English','Third quarter of the twentieth century','','','Medium : Material - 500 silver Technique - forging, engraving Size - v.177.3gr.; \r\nFormat : rectangular;\r\nType of Art : weaving;','Image : jpg','','master Kadyrova Salamat, born in 1930','','Baltabaeva T.M.  ','','','','','Museum Expedition','','Inscriptions and special notes hidden treasures of Kyrgyzstan . Antipina K. _ I . Frunze . ,1974 . Catalog of new acquisitions for 1972-74 Frunze., 1977. Album \"Kyrgyz pattern\" Frunze., Kyrgyzstan.1986.','Yes','public domain','2022-08-19 13:30:28','2022-08-19 13:30:28','Data_Code_14','qwer1234'),
(NULL,'Bilerik','Bracelet','Round, closed, richly decorated with Dungan ornament. ','science card','FAM_I005_20220819','English','Beginning of the XX century .','','','Medium : Material - 500 silver Technique - forging, engraving Size - v.177.3gr. ;Format : Round open with engraving; Type of Art : Folk jewelry','Image : jpg','closed with engraving','Master unknown','','Oreshkin D.M.','','','','','','','','Yes','public domain','2022-08-19 13:44:23','2022-08-19 13:44:23','Data_Code_15','qwer1234'),
(NULL,'Wook bashi.','Cover for the poles of the dome of the yurt','The cover is made of felt using mosaic technique. This is a long bag . Colors - blue, red. One of the sides is decorated with braided tassels.','science card','FAM_I006_20220819','English','First third of the XX century .','','','Medium : Material - felt, woolen thread Technique - mosaic, weaving Size -117x90 Format : Semi -elliptical shape Type Of Art : Felt products','Image : jpg','Felt products','master Marabekova Jaash . born 1886','','Baltabaeva M.','','','','','','','','Yes','public domain','2022-08-19 13:50:43','2022-08-19 13:50:43','Data_Code_16','qwer1234'),
(NULL,'Walking man.','decor item','Statue of a walking man dressed in a bathrobe','science card','FAM_I007_20220819','English','Х1Х-ХХ centuries. China.','','','Medium : Material-wood Size -51x15x20; Format : stakuetka; Type of Art : Collection \"East\"','Image : jpg','Lacquer, painting','Master unknown','','Baltabaeva M.','','','','','Transferred from the Pushkin Museum , Moscow','','','Yes','public domain','2022-08-19 15:10:22','2022-08-19 15:10:22','Data_Code_17','qwer1234'),
(NULL,'Underframe.','A piece of furniture.','Antique table decorated with horn and metal.','science card','FAM_I008_20220819','English','Early 20th century','','','Medium : Material - wood, horn, metal Technique - Carving, casting Size -75x100x50 Format : rectangular type of Art : arts and crafts of the west','Image : jpg','Decor with forged metal and horn','Master unknown','','Oreshkin D.M.','','','','','Transferred from the Pushkin Museum Moscow in 1952','','','Yes','public domain','2022-08-19 15:13:38','2022-08-19 15:13:38','Data_Code_18','qwer1234'),
(NULL,'Keel.','Carpet.','The burgundy central field consists of stylized blue rhombuses. There are two borders in the circle of the central field, one narrow with stylized horn-shaped curls on both sides. The carpet has white tassels.','science card','FAM_I009_20220819','English','Middle of the XX century .','','','Medium : Material - wool Technique-pile weaving Size -227x142 Format : rectangular; Type of Art : Pile carpets ','Image : jpg','','master unknown','Made according to the sketch of Amankozhoev .','Baltabaeva T.M.','','','','','','','','Yes','','2022-08-19 15:25:51','2022-08-19 15:25:51','Data_Code_19','qwer1234'),
(NULL,'Uuk tizgich .','Woven tape','Braid. On a brown background, two stripes of yellow and red with brown dots in the middle.','science card','FAM_I010_20220819','English','First third of the 20th century','','','Medium : Material - woolen thread, dye Technique - lint -free weaving, dyeing Size -700x24 Format : ribbon Type of Art : weaving','Image : jpg','','master Baatyrisanov  aimkul','','Oreshkin D.M.','','','','','','','','Yes','','2022-08-19 15:28:43','2022-08-19 15:28:43','Data_Code_20','qwer1234'),
(NULL,'Royal Falconer of the 17th century','Art','A rider with a falcon in his hand on horseback, a bow on the side, a quiver with arrows. On the back of the falconer\'s caftan there is a heraldic royal sign. The movement of the horse is convincingly conveyed. Pedestal in the form of an elongated, convex oval. Detailed study of the material.','Code - 19-s ','FAM_I011_20220819','English','Year 1872 _ Arrival Date /Date of arrival 1946','','','Medium : Material / material Bronze, Technique _ casting, Size / size 36x16x57 Type of Art : Inventory number 658','Image : jpg','','','','Lanceray Evgeny Alexandrovich 1848-1886.','','','','','','','Reference _ artmuseum.kg','Can I user this?','Museum KNMII them . G . Aitieva','2022-08-19 15:37:11','2022-08-19 15:37:11','Data_Code_21','qwer1234'),
(NULL,'An old man on a donkey','Art','Figurine of a standing aksakal in a large malakhai and chapan . Hands behind the back. The head is slightly tilted down. Legs are cut off. The other part is a small donkey with a big head. Removable head. Both parts are without a pedestal. Color beige and grey.','Code - 455-s','FAM_I012_20220819','English','1975, Arrival Date arrival October 16 , 1980','','','Medium : material Fireclay, Technique _ tone, Size / size 21x25x7.Type of Art : Inventory number 8227','Image : jpg','','','Khabibulin Zaur Alexandrovich. 1937-1988','','','','','','','','Reference _ artmuseum.kg','Can I user this?','Museum of KNMI them. G. Aitieva','2022-08-19 15:54:10','2022-08-19 15:54:10','Data_Code_22','qwer1234'),
(NULL,'A.S. Pushkin.','Art','The portrait of the poet is given in 1.1/2. nature size. The interpretation of the image is romantic. The head is slightly tilted forward. The facial expression is thoughtful. Details of the costume are partially given (shirt collar and drapery on the left shoulder). The molding is expressive. Granite pedestal (cylinder placed on a square).','480-s','FAM_I013_20220819','English','1979. Arrival Date arrival December 2, 1981','','','Medium : Material /material Bronze, Technique _ granite. Size /size 76х37х30 Format : rectangular; Type of Art : felt carpets;','Image : jpg','','','Shestopal Victor Arnoldovich. 1936','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of KNMI them. G. Aitieva','2022-08-19 16:46:47','2022-08-19 16:46:47','Data_Code_23',NULL),
(NULL,'Legend. Mother - Deer ','Art','The medal is one-sided. The shape is an irregular circle. The relief is convex. In the center, facing the viewer, are two naked children sitting on a deer. Around the floral ornament.','491-s','FAM_I014_20220819','English','year _1981. Arrival Date arrival 09/14/1982 ','','','Medium : Material /material Bronze, Technique, casting Size /size Ø -9 Type of Art : Inventory number 9361','Image : jpg','','','Kopotev Vyacheslav Viktorovich 1942-2017','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of KNMI them. G. Aitieva','2022-08-19 16:49:06','2022-08-19 16:49:06','Data_Code_24',NULL),
(NULL,'Daniyarov S.B. - radiobiologist.','Art','The bust of the scientist is given in 1.5 natural size, decorated with woven rhizomes, which frame the shoulders and the base of the bust in a ring. The image is strictly frontal, looking at the viewer. Serious, focused face. The collar of the shirt is open. Clear wood texture.','493-s','FAM_I015_20220819','English','year _1980.Arrival Date arrival . 09/14/1982 ','','','Medium : Material / material Wood. Technique _tone, Size /size 80x62x60 Type Of Art : Inventory number 9363','Image : jpg','','','Daniyarov S.B. - radiobiologist.','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of KNMI them. G. Aitieva','2022-08-19 16:51:49','2022-08-19 16:51:49','Data_Code_25',NULL),
(NULL,'Bread.','Art','Two naked beautiful girls, sitting on sheaves, support a large sheaf of wheat on their shoulders. One of them bowed under the weight of the sheaf, the other calmly straightened up. Their movements are filled with smooth heaviness, the rhythm of the composition is unhurried. The sculpture breathes calmness and harmony. The group embodies the fertility of the native land, the happiness of the people working on this land. The original is kept in the State Tretyakov Gallery.','41-s','FAM_I016_20220819','English','year _1939, Arrival Date arrival . 12/07/1960.','','','Medium : Material / material Metal, Technique _ Electrotype, Size / size 150x170x120 Type of Art : Inventory number 2149','Image : jpg','','','','','Mukhina Vera Ignatievna. 1889-1953','','','','','','Reference _ artmuseum.kg','Yes','Museum of KNMI them. G. Aitieva','2022-08-19 16:53:39','2022-08-19 16:53:39','Data_Code_26',NULL),
(NULL,'Girlfriends','Art','Group Breast composition depicts two girls feeding a deer. Detailed work. Live transmission of a genre scene.','127-C','FAM_I017_20220819','English','year _1958 Arrival Date arrival . 09/23/1958.','','','Medium :Material /material Wood Technique _TONE Size / size 60x60x38 Type of Art : Inventory number 1909','Image : jpg','','','Minkova Olga Denisovna 1923-2006.','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of KNMI them. G. Aitieva','2022-08-19 16:55:40','2022-08-19 16:55:40','Data_Code_27',NULL),
(NULL,'Bark with a dove. Copy.','Art','','135-s','FAM_I018_20220819','English','year _6th century BC. Arrival Date arrival . 1/23/1976.','','','Medium :Material /material Gypsum Technique _tone. Size /size 83х30х33Type of Art : Inventory number 6594','Image : jpg','','','Author unknown. Ancient Greece Archaic.','','','','','','','','Reference _ artmuseum.kg','Can I user this?','Museum of KNMI them. G. Aitieva','2022-08-19 16:57:42','2022-08-19 16:57:42','Data_Code_28',NULL),
(NULL,'Manas .','Art','A sculptural composition depicting a rider in military attire: a shield in his left hand, a sword in his right hand, a helmet on his head. A wriggling winged dragon connects the composition with a cylindrical pedestal. The cylinder is mounted on a low plinth.','495','FAM_I019_20220819','English','year _1982. Arrival Date arrival . November 14 , 1982','','','Medium : Material /material Bronze, Technique _casting Size / size 65x40x80 Type of Art : Inventory number 9439','Image : jpg','','','Sadykov Turgunbay . 1935','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of KNMI them. G. Aitieva','2022-08-19 16:59:29','2022-08-19 16:59:29','Data_Code_29',NULL),
(NULL,'Leonardo da Vinci.','Art','The medal is round, one-sided. The image is under the breast, the profile is to the left. Right along the edge of the author\'s mark \"C inside A\"','526-s','FAM_I020_20220819','Choose Language','year _1983. Arrival Date arrival . December 14 , 1983','','','Medium : Material / material Copper Technique _ electroplating Size / size Ø - 10 Type of Art : Inventory number 9716','Image : jpg','','','Solovyov Anatoly Nikolaevich. 1944-1987','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of KNMI them. G. Aitieva','2022-08-19 17:02:23','2022-08-19 17:02:23','Data_Code_30',NULL),
(NULL,'Buckeye Ill . to the epic Manas','Art','In the foreground, sitting cross-legged, an old Kyrgyz with a long beard ¾ to the right. He lowered his head onto his left hand, which rests on his knee. On the head is a cap with a tassel. Dressed in a chapan and ichigi with an ornament. Behind him are the silhouettes of two grazing horses. In the distance are three yurts.','Code -1323 G ','FAM_I021_20220819','English','Year 1967 Arrival Date 09/21/1967','','','Medium : Mareial - Paper Technique /technique - linocut Size /size 39x25.5 Type of Art :Inventory Number 3280','Image : png','','','Jumabaev Belek','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of the KNMI named after G. Aitiev','2022-08-19 17:13:11','2022-08-19 17:13:11','Data_Code_31',NULL),
(NULL,'-','Art','Against a grayish background is a portrait of a Kyrgyz boy sitting on the ground with his knees raised, his left hand leaned on the ground, his right hand lowered on the stones. Dressed in short shorts. Thick black hair falls over his forehead.','Code - 617 G','FAM_I022_20220819','English','Year / year – 1956 Arrival Date - 12/27/1956 ..','','','Medium : Material – Paper Technique / technique – atercolor Size / size - 24x19 Type of Art : Inventory Number -1679','Image : jpg','','','Omurkulov Myrza Omurkulovich','','','','','','','','Reference _ artmuseum.kg','Yes','Museum of the KNMI named after G. Aitiev','2022-08-19 17:15:23','2022-08-19 17:15:23','Data_Code_32',NULL),
(NULL,'Still life','','Breast image of a Kyrgyz girl in a coat, sleeves and collar trimmed with red fur, two large buboes on her chest. A swarthy face, a look of brown eyes at the viewer. Dark hair cut short. The forehead is covered with bangs. The background is black and white.','','FAM_I023_20220819','English','1970-12-10','','Graphics Storage - School 9','Medium : IMAGE ; still life','Image : png','','Akhmedov Melis Khaidarovich','Akhmedov Melis Khaidarovich','','Acquisition method - Protocol No. 33 of 08.27.1969','Museum of the KNMI named after G. Aitiev','Kyrgyzstan','4025 G','','','','Yes','','2022-08-19 17:21:03','2022-08-19 17:21:03','Data_Code_33',NULL),
(NULL,'Nargiz : 2855 G - December 15, 1978','','','','FAM_I024_20220819','English','December 15, 1978.','','Storage of graphics - school 9','','Image : png','','','','','Medium : Acquisition method –  Minutes of the GEK No. 6 dated 10/15/1978. Media rights statement in this paragraph (unless otherwise noted) ','Akhmedov Melis Khaidarovich','Kyrgyzstan','Nargiz -7631','','','','Yes','','2022-08-19 17:23:24','2022-08-19 17:23:24','Data_Code_34',NULL),
(NULL,'Old Osh: 2469 G - 08/30/1973','','The street of the Central Asian town, leaving from the viewer into the depths. On the roadway, in the center, an old man rides a donkey almost to the front, in a blue striped robe, with tea on his head. On the left is an adobe wall of low buildings with 2 gates facing the street.','','FAM_I025_20220819','Choose Language','1926-06-01','','Storage graphics-shk-8','','Image : png','','','','','','Museum of the KNMI named after G. Aitiev','','','','','','Yes','','2022-08-19 17:25:51','2022-08-19 17:25:51','Data_Code_35',NULL);

/*Table structure for table `imagefile` */

DROP TABLE IF EXISTS `imagefile`;

CREATE TABLE `imagefile` (
  `fileIdx` varchar(50) NOT NULL COMMENT '파일 idx',
  `fileTitle` varchar(50) DEFAULT NULL COMMENT '파일 제목',
  PRIMARY KEY (`fileIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `imagefile` */

insert  into `imagefile`(`fileIdx`,`fileTitle`) values 
('fileIdx_1','별이빛나는밤'),
('fileIdx_2','그랑드자트섬의일요일오후'),
('fileIdx_3','Comb in the form of two dragonflies'),
('fileIdx_4','모나리자');

/*Table structure for table `imagetest` */

DROP TABLE IF EXISTS `imagetest`;

CREATE TABLE `imagetest` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(64) DEFAULT NULL,
  `image` mediumblob NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

/*Data for the table `imagetest` */

/*Table structure for table `tb_file` */

DROP TABLE IF EXISTS `tb_file`;

CREATE TABLE `tb_file` (
  `fileIdx` varchar(50) NOT NULL COMMENT '파일idx',
  `fileOriginalName` varchar(150) NOT NULL COMMENT '파일오리지날명',
  `fileNewName` varchar(150) NOT NULL COMMENT '새로운파일명',
  `filePath` varchar(150) NOT NULL COMMENT '파일경로',
  `fileSize` int(11) NOT NULL COMMENT '파일사이즈',
  PRIMARY KEY (`fileIdx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `tb_file` */

insert  into `tb_file`(`fileIdx`,`fileOriginalName`,`fileNewName`,`filePath`,`fileSize`) values 
('file_202208081019495431291700','1.jpg','11019495425526300.jpg','images\\20220808\\11019495425526300.jpg',72004),
('file_202208081019560552563100','2.jpg','21019560547696700.jpg','images\\20220808\\21019560547696700.jpg',36598),
('file_202208081019578063194800','3.jpg','31019578058729600.jpg','images\\20220808\\31019578058729600.jpg',41521),
('file_202208081019586495162000','4.jpg','41019586490475900.jpg','images\\20220808\\41019586490475900.jpg',60868),
('file_20220816398100048332300','conc_001.png','conc_001398100042802900.png','images\\20220816\\conc_001398100042802900.png',24832),
('file_20220816405571089473300','conc_002.png','conc_002405571082021900.png','images\\20220816\\conc_002405571082021900.png',39150),
('file_20220816406274437721800','conc_003.png','conc_003406274431768700.png','images\\20220816\\conc_003406274431768700.png',72503),
('file_20220816406616117749800','conc_004.png','conc_004406616112335600.png','images\\20220816\\conc_004406616112335600.png',106721),
('file_20220818568821084204500','conc_005.png','conc_005568821077543900.png','images\\20220818\\conc_005568821077543900.png',87275),
('file_20220818570130365952300','conc_007.png','conc_007570130361697100.png','images\\20220818\\conc_007570130361697100.png',59821),
('file_20220818575460643121700','conc_006.png','conc_006575460637747900.png','images\\20220818\\conc_006575460637747900.png',64581),
('file_20220818576746404736300','conc_008.png','conc_008576746399198800.png','images\\20220818\\conc_008576746399198800.png',149373),
('file_20220818576921359784900','conc_009.png','conc_009576921355539100.png','images\\20220818\\conc_009576921355539100.png',129648),
('file_20220818577012753957300','conc_010.png','conc_010577012748325600.png','images\\20220818\\conc_010577012748325600.png',77738),
('file_20220819144720000194800','image1.png','image1144719992959700.png','images\\20220819\\image1144719992959700.png',409153),
('file_20220819145024037075200','image2.jpg','image2145024031643400.jpg','images\\20220819\\image2145024031643400.jpg',36518),
('file_20220819145407013552100','image3.jpg','image3145407009084300.jpg','images\\20220819\\image3145407009084300.jpg',42647),
('file_20220819145694396671000','image4.jpg','image4145694392421200.jpg','images\\20220819\\image4145694392421200.jpg',22452),
('file_20220819146529636248600','image5.jpg','image5146529631830100.jpg','images\\20220819\\image5146529631830100.jpg',34209),
('file_20220819146909834167700','image6.jpg','image6146909828533500.jpg','images\\20220819\\image6146909828533500.jpg',58428),
('file_20220819151688851249600','image7.jpg','image7151688845464900.jpg','images\\20220819\\image7151688845464900.jpg',15512),
('file_20220819151884162712300','image8.jpg','image8151884158136900.jpg','images\\20220819\\image8151884158136900.jpg',28749),
('file_20220819152617808079700','image9.jpg','image9152617802447700.jpg','images\\20220819\\image9152617802447700.jpg',96592),
('file_20220819152789777598000','image10.jpg','image10152789773221100.jpg','images\\20220819\\image10152789773221100.jpg',25602),
('file_20220819153297434509200','image11.jpg','image11153297429715300.jpg','images\\20220819\\image11153297429715300.jpg',68028),
('file_20220819154316349106300','image12.jpg','image12154316342819900.jpg','images\\20220819\\image12154316342819900.jpg',54396),
('file_20220819157473252091000','image13.jpg','image13157473247362500.jpg','images\\20220819\\image13157473247362500.jpg',67142),
('file_20220819157612063742000','image14.jpg','image14157612059454900.jpg','images\\20220819\\image14157612059454900.jpg',45680),
('file_20220819157775033983800','image15.jpg','image15157775029051400.jpg','images\\20220819\\image15157775029051400.jpg',43180),
('file_20220819157885913060900','image16.jpg','image16157885907209500.jpg','images\\20220819\\image16157885907209500.jpg',48669),
('file_20220819158006619265400','image17.jpg','image17158006614846300.jpg','images\\20220819\\image17158006614846300.jpg',48925),
('file_20220819158128465325300','image18.jpg','image18158128461140000.jpg','images\\20220819\\image18158128461140000.jpg',41860),
('file_20220819158235655130900','image19.jpg','image19158235651049200.jpg','images\\20220819\\image19158235651049200.jpg',41828),
('file_20220819158409740647300','image20.jpg','image20158409736284300.jpg','images\\20220819\\image20158409736284300.jpg',34701),
('file_20220819159057644880700','image21.png','image21159057639410600.png','images\\20220819\\image21159057639410600.png',112272),
('file_20220819159189459600000','image22.jpg','image22159189455378800.jpg','images\\20220819\\image22159189455378800.jpg',95850),
('file_20220819159529733285800','image23.png','image23159529728876300.png','images\\20220819\\image23159529728876300.png',134187),
('file_20220819159670666216200','image24.png','image24159670660958100.png','images\\20220819\\image24159670660958100.png',240893),
('file_20220819159817604913900','image25.png','image25159817599432800.png','images\\20220819\\image25159817599432800.png',218530);

/*Table structure for table `tb_file_control` */

DROP TABLE IF EXISTS `tb_file_control`;

CREATE TABLE `tb_file_control` (
  `no` int(11) NOT NULL AUTO_INCREMENT COMMENT '순번',
  `referenceCode` varchar(50) DEFAULT NULL COMMENT '참조 코드',
  `fileIdx` varchar(50) DEFAULT NULL COMMENT '파일idx',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb3 COMMENT='첨부 파일_2 테이블';

/*Data for the table `tb_file_control` */

insert  into `tb_file_control`(`no`,`referenceCode`,`fileIdx`) values 
(108,'fileIdx_1','file_202208081019495431291700'),
(109,'fileIdx_2','file_202208081019560552563100'),
(110,'fileIdx_3','file_202208081019578063194800'),
(111,'fileIdx_4','file_202208081019586495162000'),
(113,'Data_Code_1','file_20220816398100048332300'),
(114,'Data_Code_2','file_20220816405571089473300'),
(115,'Data_Code_3','file_20220816406274437721800'),
(116,'Data_Code_4','file_20220816406616117749800'),
(117,'Data_Code_5','file_20220818568821084204500'),
(118,'Data_Code_6','file_20220818575460643121700'),
(119,'Data_Code_7','file_20220818570130365952300'),
(120,'Data_Code_8','file_20220818576746404736300'),
(121,'Data_Code_9','file_20220818576921359784900'),
(122,'Data_Code_10','file_20220818577012753957300'),
(123,'Data_Code_11','file_20220819144720000194800'),
(124,'Data_Code_12','file_20220819145024037075200'),
(125,'Data_Code_13','file_20220819145407013552100'),
(126,'Data_Code_14','file_20220819145694396671000'),
(127,'Data_Code_15','file_20220819146529636248600'),
(128,'Data_Code_16','file_20220819146909834167700'),
(129,'Data_Code_17','file_20220819151688851249600'),
(130,'Data_Code_18','file_20220819151884162712300'),
(131,'Data_Code_19','file_20220819152617808079700'),
(132,'Data_Code_20','file_20220819152789777598000'),
(133,'Data_Code_21','file_20220819153297434509200'),
(134,'Data_Code_22','file_20220819154316349106300'),
(135,'Data_Code_23','file_20220819157473252091000'),
(136,'Data_Code_24','file_20220819157612063742000'),
(137,'Data_Code_25','file_20220819157775033983800'),
(138,'Data_Code_26','file_20220819157885913060900'),
(139,'Data_Code_27','file_20220819158006619265400'),
(140,'Data_Code_28','file_20220819158128465325300'),
(141,'Data_Code_29','file_20220819158235655130900'),
(142,'Data_Code_30','file_20220819158409740647300'),
(143,'Data_Code_31','file_20220819159057644880700'),
(144,'Data_Code_32','file_20220819159189459600000'),
(145,'Data_Code_33','file_20220819159529733285800'),
(146,'Data_Code_34','file_20220819159670666216200'),
(147,'Data_Code_35','file_20220819159817604913900');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `useremail` varchar(50) NOT NULL,
  `userpw` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `regdate` datetime DEFAULT current_timestamp(),
  `logindate` datetime DEFAULT current_timestamp(),
  `moddate` datetime DEFAULT current_timestamp(),
  `enabled` varchar(15) DEFAULT '1',
  PRIMARY KEY (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `user` */

insert  into `user`(`useremail`,`userpw`,`username`,`phone`,`regdate`,`logindate`,`moddate`,`enabled`) values 
('hong@email.com','qwer1234','honggildong','010-1111-2222','2022-08-10 17:35:18','2022-08-10 17:35:18','2022-08-10 17:35:18','1'),
('qwer1234','qwer1234','qwer1234','010101010111','2022-08-19 09:22:40','2022-08-19 09:22:40','2022-08-19 09:22:40',NULL);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `useremail` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `enabled` varchar(15) DEFAULT NULL,
  KEY `fk_user_role` (`useremail`),
  CONSTRAINT `fk_user_role` FOREIGN KEY (`useremail`) REFERENCES `user` (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `user_role` */

insert  into `user_role`(`useremail`,`role`,`enabled`) values 
('hong@email.com','admin','2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
