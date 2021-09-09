
begin;


/** Inserting 20 values into Customers **/

insert into Customers(cust_id, cust_name, address, email, phone) values 
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Diarmid Bailess', '6838 Express Point', 'dbailess0@umich.edu', '203-998-8702'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Arlena Care', '2 Quincy Pass', 'acare1@printfriendly.com', '434-615-7790'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Lorilyn Curry', '0298 Northland Terrace', 'lcurry2@opera.com', '462-429-4736'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Clevey Muckian', '35247 Rockefeller Street', 'cmuckian3@cam.ac.uk', '607-102-4511'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Lyle Gorini', '7 Springs Point', 'lgorini4@dailymail.co.uk', '961-400-9736'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Templeton Battista', '04 Sunbrook Terrace', 'tbattista5@nationalgeographic.com', '614-523-0094'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Perla Becker', '58 Artisan Crossing', 'pbecker6@lycos.com', '890-110-3623'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Aaren Caroline', '68 Little Fleur Street', 'acaroline7@homestead.com', '412-835-0653'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Desmond Hewell', '8617 Arkansas Court', 'dhewell8@buzzfeed.com', '219-117-7616'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Nealon Castiblanco', '43117 Loomis Alley', 'ncastiblanco9@china.com.cn', '213-193-8102'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Del McCrone', '8065 Bayside Way', 'dmccronea@wufoo.com', '761-713-7360'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Micky Jeremiah', '24092 Independence Street', 'mjeremiahb@hp.com', '373-350-6800'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Fredrika McNirlin', '67007 Derek Street', 'fmcnirlinc@php.net', '481-968-8072'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Grethel Azemar', '547 Bellgrove Trail', 'gazemard@abc.net.au', '487-539-8411'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Evangelia Barnardo', '78417 Banding Junction', 'ebarnardoe@google.pl', '755-141-6744'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Jae Artus', '46379 Waubesa Point', 'jartusf@soundcloud.com', '297-478-8850'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Kassandra Sheirlaw', '05 Main Plaza', 'ksheirlawg@google.it', '339-393-9543'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Barbra Stoffer', '339 Spenser Road', 'bstofferh@mapy.cz', '116-637-7869'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Quintana Spooner', '55707 Sherman Lane', 'qspooneri@msu.edu', '936-962-8026'),
    (nextval(pg_get_serial_sequence('Customers', 'cust_id')), 'Timoteo Kerry', '0 Linden Avenue', 'tkerryj@barnesandnoble.com', '466-971-7404');

/** Inserting 25 values into Credit_cards **/

insert into Credit_cards(credit_card_number, CVV, owned_by, expiry_date, from_date) values 
    ('3538784641630037', '001', 1, '2022-05-01', '2021-03-30'),
    ('3554531365855434', '577', 2, '2022-05-17', '2021-03-30'),
    ('3567119297090059', '223', 3, '2022-05-21', '2021-03-30'),
    ('630416844207924856', '595', 4, '2024-03-08', '2021-03-30'),
    ('560223622964789130', '432', 5, '2023-10-03', '2021-03-30'),
    ('30590622711624', '154', 6, '2023-08-26', '2021-03-30'),
    ('5602247572991545749', '641', 7, '2022-06-18', '2021-03-30'),
    ('6771875366041142', '864', 8, '2022-07-02', '2021-03-30'),
    ('4041596193102', '978', 9, '2023-08-30', '2021-03-30'),
    ('4917255012655175', '350', 10, '2023-07-04', '2021-03-30'),
    ('3567933626565957', '862', 11, '2022-03-26', '2021-03-30'),
    ('372301179429826', '233', 12, '2023-09-16', '2021-03-30'),
    ('5602218701521348523', '733', 13, '2023-01-09', '2021-03-30'),
    ('5010128559361155', '469', 14, '2023-09-20', '2021-03-30'),
    ('6706561014114123894', '477', 15, '2023-06-07', '2021-03-30'),
    ('6304069033785465', '376', 16, '2022-05-15', '2021-03-30'),
    ('4844529195543699', '014', 17, '2022-12-29', '2021-03-30'),
    ('5641828370381897', '248', 18, '2023-05-28', '2021-03-30'),
    ('3548477527483534', '593', 19, '2023-11-26', '2021-03-30'),
    ('6334716312650984', '428', 20, '2023-10-07', '2021-03-30'),
    ('3565313302785769', '641', 5, '2022-03-28', '2021-03-30'),
    ('503807437184826602', '432', 19, '2024-01-31', '2021-03-30'),
    ('3588267412717950', '348', 1, '2023-10-03', '2021-03-30'),
    ('4175007051790802', '539', 3, '2024-01-11', '2021-03-30'),
    ('201905098904383', '492', 13, '2023-12-13', '2021-03-30');

commit;

begin;
/** Inserting 50 values into Employees **/


/** Inserting 50 values into Employees **/

insert into Employees(eid, ename, phone, address, email, join_date, depart_date) values 
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Harlie Rawcliff', '494-345-7561', '8 Browning Drive', 'hrawcliff0@bravesites.com', '2021-07-04', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Honor Jacobson', '519-165-6199', '88365 Melrose Street', 'hjacobson1@wiley.com', '2021-02-04', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Errick Shortcliffe', '332-835-1167', '00 Hermina Lane', 'eshortcliffe2@cdbaby.com', '2021-01-05', '2022-07-08'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Kissee Dahlgren', '357-608-7139', '32 Bunting Terrace', 'kdahlgren3@pagesperso-orange.fr', '2021-02-27', '2021-09-09'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Rhianon Fozzard', '827-399-2289', '9079 Scofield Crossing', 'rfozzard4@mediafire.com', '2021-11-18', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Jonathon Paireman', '602-444-6500', '977 Nobel Street', 'jpaireman5@va.gov', '2020-11-15', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Goldia Pagram', '199-801-2521', '5980 Mayfield Alley', 'gpagram6@npr.org', '2021-12-11', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Rosalynd Mordey', '325-758-8948', '992 Buell Junction', 'rmordey7@chicagotribune.com', '2021-11-28', '2022-11-06'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Salvador Bursell', '843-679-3282', '15728 Luster Trail', 'sbursell8@opensource.org', '2021-06-23', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Joshua Worral', '243-371-9572', '3 Drewry Junction', 'jworral9@miibeian.gov.cn', '2021-04-30', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Archer Butts', '335-562-7431', '81 Dixon Pass', 'abuttsa@dailymail.co.uk', '2022-02-18', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Erick Parlor', '297-650-2500', '54 Debs Alley', 'eparlorb@ftc.gov', '2021-04-07', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Farley O''''Rafferty', '829-147-9994', '84755 Roth Lane', 'foraffertyc@netscape.com', '2022-01-18', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Miguelita Finn', '868-110-1796', '84203 Oxford Lane', 'mfinnd@walmart.com', '2021-07-29', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Kerrin Costock', '716-102-6434', '07 Maywood Parkway', 'kcostocke@latimes.com', '2021-06-16', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Ruby Nockalls', '580-986-3388', '0880 Butterfield Lane', 'rnockallsf@boston.com', '2021-07-10', '2022-04-29'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Pennie Van der Hoven', '475-108-8343', '62810 Rieder Terrace', 'pvang@scribd.com', '2021-12-05', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Nerty Bretton', '843-882-3329', '0680 Ridgeway Pass', 'nbrettonh@usa.gov', '2021-08-08', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Nita Eates', '295-824-2040', '45 Burning Wood Point', 'neatesi@geocities.jp', '2021-12-26', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Binnie Hullah', '230-492-4805', '8243 Crowley Hill', 'bhullahj@latimes.com', '2022-01-12', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Verene Musprat', '382-950-8467', '1 Service Street', 'vmuspratk@privacy.gov.au', '2021-03-05', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Putnem Jaques', '318-102-3116', '5 Melvin Trail', 'pjaquesl@ed.gov', '2021-02-01', '2023-06-26'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Katrinka Rickaby', '112-194-6467', '95429 Morrow Way', 'krickabym@google.es', '2020-05-22', '2021-11-25'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Scarlet Ballin', '403-895-7752', '3 Golf View Junction', 'sballinn@blinklist.com', '2021-05-15', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Dredi Mushett', '969-747-1881', '04 Roth Avenue', 'dmushetto@xrea.com', '2021-04-08', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Red Rodd', '424-731-0294', '957 Corry Parkway', 'rroddp@nationalgeographic.com', '2021-02-20', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Vasily Bobasch', '876-128-6895', '21362 Miller Hill', 'vbobaschq@smugmug.com', '2021-05-17', '2022-10-07'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Cinderella Story', '238-320-3537', '3929 Grover Hill', 'cstoryr@uiuc.edu', '2022-03-03', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Agnella Hallaways', '163-211-9011', '926 1st Center', 'ahallawayss@washingtonpost.com', '2021-01-02', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Ulrica Dowson', '653-794-5785', '45902 Northland Center', 'udowsont@github.com', '2020-05-18', '2022-08-10'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'George MacPhaden', '126-836-6272', '1337 Orin Center', 'gmacphadenu@sogou.com', '2021-09-18', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Carrol Andrzejak', '801-745-6025', '6 Drewry Junction', 'candrzejakv@hubpages.com', '2021-01-26', '2023-04-20'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Herc Trumper', '726-433-1846', '1706 Jenifer Way', 'htrumperw@weather.com', '2020-12-11', '2022-06-21'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Miranda Cummings', '643-337-7793', '562 Sycamore Place', 'mcummingsx@liveinternet.ru', '2020-10-03', '2023-06-03'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Sidoney Corser', '340-981-7198', '7 Sutteridge Place', 'scorsery@sakura.ne.jp', '2021-03-03', '2022-08-19'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Stavros Giotto', '817-660-5173', '61066 Golden Leaf Pass', 'sgiottoz@themeforest.net', '2021-02-12', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Harlan Ducham', '620-794-7229', '2446 Banding Point', 'hducham10@census.gov', '2020-09-16', '2022-11-03'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Gennifer Saket', '159-255-0739', '450 Montana Hill', 'gsaket11@irs.gov', '2020-09-03', '2022-02-07'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Raoul Hofler', '158-692-8225', '23863 Ruskin Alley', 'rhofler12@nyu.edu', '2021-09-14', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Phillipp Kingsly', '668-561-6186', '30656 Butternut Street', 'pkingsly13@blogs.com', '2020-04-02', '2021-04-27'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Jabez Wager', '870-737-5083', '2219 Towne Center', 'jwager14@twitter.com', '2021-01-29', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Denice Olner', '397-688-5911', '91437 Mendota Terrace', 'dolner15@irs.gov', '2020-12-15', '2022-12-24'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Madalena Schonfelder', '348-101-8863', '49071 Clarendon Alley', 'mschonfelder16@tinypic.com', '2020-10-03', '2021-02-18'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Osborn Riseley', '251-184-4743', '0 Waxwing Point', 'oriseley17@ustream.tv', '2022-01-07', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Gregg Elvey', '281-953-9637', '5 Fremont Way', 'gelvey18@pagesperso-orange.fr', '2020-04-17', '2020-09-25'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Belvia Bonifacio', '473-602-1152', '48950 Miller Center', 'bbonifacio19@salon.com', '2020-11-03', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Chandler Bau', '362-509-0961', '27 Novick Avenue', 'cbau1a@mtv.com', '2022-01-22', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Grannie Adam', '569-368-6462', '9 Green Crossing', 'gadam1b@nyu.edu', '2020-04-15', '2021-08-14'),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Cairistiona Symms', '643-978-1467', '067 Center Avenue', 'csymms1c@guardian.co.uk', '2021-08-28', NULL),
    (nextval(pg_get_serial_sequence('Employees', 'eid')), 'Rab Greyes', '215-649-0460', '5187 Victoria Alley', 'rgreyes1d@alibaba.com', '2021-08-26', '2024-05-06');

/** Inserting Employee role data **/

insert into Full_Time_Emp (eid, monthly_salary) values (1, 2152.06);
insert into Administrators (eid) values (1);
insert into Full_Time_Emp (eid, monthly_salary) values (2, 3661.20);
insert into Administrators (eid) values (2);
insert into Full_Time_Emp (eid, monthly_salary) values (3, 2587.88);
insert into Administrators (eid) values (3);
insert into Full_Time_Emp (eid, monthly_salary) values (4, 3114.61);
insert into Administrators (eid) values (4);
insert into Full_Time_Emp (eid, monthly_salary) values (5, 3220.49);
insert into Administrators (eid) values (5);
insert into Full_Time_Emp (eid, monthly_salary) values (6, 2428.99);
insert into Administrators (eid) values (6);
insert into Full_Time_Emp (eid, monthly_salary) values (7, 2000.37);
insert into Administrators (eid) values (7);
insert into Full_Time_Emp (eid, monthly_salary) values (8, 2954.51);
insert into Administrators (eid) values (8);
insert into Full_Time_Emp (eid, monthly_salary) values (9, 3214.15);
insert into Administrators (eid) values (9);
insert into Full_Time_Emp (eid, monthly_salary) values (10, 3764.92);
insert into Administrators (eid) values (10);
insert into Full_Time_Emp (eid, monthly_salary) values (11, 3053.32);
insert into Managers (eid) values (11);
insert into Full_Time_Emp (eid, monthly_salary) values (12, 2302.57);
insert into Managers (eid) values (12);
insert into Full_Time_Emp (eid, monthly_salary) values (13, 3487.33);
insert into Managers (eid) values (13);
insert into Full_Time_Emp (eid, monthly_salary) values (14, 2768.26);
insert into Managers (eid) values (14);
insert into Full_Time_Emp (eid, monthly_salary) values (15, 3403.76);
insert into Managers (eid) values (15);
insert into Full_Time_Emp (eid, monthly_salary) values (16, 3859.46);
insert into Managers (eid) values (16);
insert into Full_Time_Emp (eid, monthly_salary) values (17, 3805.88);
insert into Managers (eid) values (17);
insert into Full_Time_Emp (eid, monthly_salary) values (18, 2365.94);
insert into Managers (eid) values (18);
insert into Full_Time_Emp (eid, monthly_salary) values (19, 2663.75);
insert into Managers (eid) values (19);
insert into Full_Time_Emp (eid, monthly_salary) values (20, 2872.12);
insert into Managers (eid) values (20);
insert into Full_Time_Emp (eid, monthly_salary) values (21, 3860.68);
insert into Instructors (eid) values (21);
insert into Full_Time_Instructor (eid) values (21);
insert into Full_Time_Emp (eid, monthly_salary) values (22, 3761.25);
insert into Instructors (eid) values (22);
insert into Full_Time_Instructor (eid) values (22);
insert into Full_Time_Emp (eid, monthly_salary) values (23, 2743.72);
insert into Instructors (eid) values (23);
insert into Full_Time_Instructor (eid) values (23);
insert into Full_Time_Emp (eid, monthly_salary) values (24, 2031.21);
insert into Instructors (eid) values (24);
insert into Full_Time_Instructor (eid) values (24);
insert into Full_Time_Emp (eid, monthly_salary) values (25, 3483.77);
insert into Instructors (eid) values (25);
insert into Full_Time_Instructor (eid) values (25);
insert into Full_Time_Emp (eid, monthly_salary) values (26, 3415.68);
insert into Instructors (eid) values (26);
insert into Full_Time_Instructor (eid) values (26);
insert into Full_Time_Emp (eid, monthly_salary) values (27, 3563.51);
insert into Instructors (eid) values (27);
insert into Full_Time_Instructor (eid) values (27);
insert into Full_Time_Emp (eid, monthly_salary) values (28, 3381.92);
insert into Instructors (eid) values (28);
insert into Full_Time_Instructor (eid) values (28);
insert into Full_Time_Emp (eid, monthly_salary) values (29, 2496.13);
insert into Instructors (eid) values (29);
insert into Full_Time_Instructor (eid) values (29);
insert into Full_Time_Emp (eid, monthly_salary) values (30, 2757.44);
insert into Instructors (eid) values (30);
insert into Full_Time_Instructor (eid) values (30);
insert into Full_Time_Emp (eid, monthly_salary) values (31, 2897.72);
insert into Instructors (eid) values (31);
insert into Full_Time_Instructor (eid) values (31);
insert into Full_Time_Emp (eid, monthly_salary) values (32, 2757.26);
insert into Instructors (eid) values (32);
insert into Full_Time_Instructor (eid) values (32);
insert into Full_Time_Emp (eid, monthly_salary) values (33, 2066.14);
insert into Instructors (eid) values (33);
insert into Full_Time_Instructor (eid) values (33);
insert into Full_Time_Emp (eid, monthly_salary) values (34, 3679.82);
insert into Instructors (eid) values (34);
insert into Full_Time_Instructor (eid) values (34);
insert into Full_Time_Emp (eid, monthly_salary) values (35, 2843.95);
insert into Instructors (eid) values (35);
insert into Full_Time_Instructor (eid) values (35);
insert into Part_Time_Emp (eid, hourly_rate) values (36, 32.25);
insert into Instructors (eid) values (36);
insert into Part_Time_Instructor (eid) values (36);
insert into Part_Time_Emp (eid, hourly_rate) values (37, 35.04);
insert into Instructors (eid) values (37);
insert into Part_Time_Instructor (eid) values (37);
insert into Part_Time_Emp (eid, hourly_rate) values (38, 21.96);
insert into Instructors (eid) values (38);
insert into Part_Time_Instructor (eid) values (38);
insert into Part_Time_Emp (eid, hourly_rate) values (39, 21.18);
insert into Instructors (eid) values (39);
insert into Part_Time_Instructor (eid) values (39);
insert into Part_Time_Emp (eid, hourly_rate) values (40, 37.10);
insert into Instructors (eid) values (40);
insert into Part_Time_Instructor (eid) values (40);
insert into Part_Time_Emp (eid, hourly_rate) values (41, 22.38);
insert into Instructors (eid) values (41);
insert into Part_Time_Instructor (eid) values (41);
insert into Part_Time_Emp (eid, hourly_rate) values (42, 31.02);
insert into Instructors (eid) values (42);
insert into Part_Time_Instructor (eid) values (42);
insert into Part_Time_Emp (eid, hourly_rate) values (43, 38.28);
insert into Instructors (eid) values (43);
insert into Part_Time_Instructor (eid) values (43);
insert into Part_Time_Emp (eid, hourly_rate) values (44, 38.46);
insert into Instructors (eid) values (44);
insert into Part_Time_Instructor (eid) values (44);
insert into Part_Time_Emp (eid, hourly_rate) values (45, 24.56);
insert into Instructors (eid) values (45);
insert into Part_Time_Instructor (eid) values (45);
insert into Part_Time_Emp (eid, hourly_rate) values (46, 29.54);
insert into Instructors (eid) values (46);
insert into Part_Time_Instructor (eid) values (46);
insert into Part_Time_Emp (eid, hourly_rate) values (47, 23.16);
insert into Instructors (eid) values (47);
insert into Part_Time_Instructor (eid) values (47);
insert into Part_Time_Emp (eid, hourly_rate) values (48, 36.92);
insert into Instructors (eid) values (48);
insert into Part_Time_Instructor (eid) values (48);
insert into Part_Time_Emp (eid, hourly_rate) values (49, 28.59);
insert into Instructors (eid) values (49);
insert into Part_Time_Instructor (eid) values (49);
insert into Part_Time_Emp (eid, hourly_rate) values (50, 33.04);
insert into Instructors (eid) values (50);
insert into Part_Time_Instructor (eid) values (50);

commit;


begin;


/** Inserting pay slip data for one month **/

insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (2, '2021-04-30', 30, 3661.20);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (3, '2021-04-30', 30, 2587.88);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (4, '2021-04-30', 30, 3114.61);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (6, '2021-04-30', 30, 2428.99);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (10, '2021-04-30', 1, 125.50);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (12, '2021-04-30', 24, 1842.06);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (21, '2021-04-30', 30, 3860.68);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (22, '2021-04-30', 30, 3761.25);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (23, '2021-04-30', 30, 2743.72);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (25, '2021-04-30', 23, 2670.89);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (26, '2021-04-30', 30, 3415.68);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (29, '2021-04-30', 30, 2496.13);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (30, '2021-04-30', 30, 2757.44);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (32, '2021-04-30', 30, 2757.26);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (33, '2021-04-30', 30, 2066.14);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (34, '2021-04-30', 30, 3679.82);
insert into Pay_slips_for(eid, payment_date, num_work_days, amount) values (35, '2021-04-30', 30, 2843.95);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (36, '2021-04-30', 14, 451.50);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (37, '2021-04-30', 11, 385.44);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (38, '2021-04-30', 12, 263.52);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (40, '2021-04-30', 16, 593.60);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (41, '2021-04-30', 25, 559.50);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (42, '2021-04-30', 16, 496.32);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (46, '2021-04-30', 15, 443.10);
insert into Pay_slips_for(eid, payment_date, num_work_hours, amount) values (48, '2021-04-30', 15, 553.80);
commit;

/** Inserting 20 values into Rooms **/

insert into Rooms(rid, location, seating_capacity) values 
    (1, '#04-25', 101),
    (2, '#01-06', 398),
    (3, '#01-11', 228),
    (4, '#05-28', 144),
    (5, '#05-14', 257),
    (6, '#B2-10', 495),
    (7, '#B2-22', 245),
    (8, '#05-07', 134),
    (9, '#01-29', 291),
    (10, '#02-21', 394),
    (11, '#B1-03', 438),
    (12, '#B2-27', 476),
    (13, '#05-10', 280),
    (14, '#04-02', 78),
    (15, '#01-05', 470),
    (16, '#02-16', 396),
    (17, '#04-12', 114),
    (18, '#05-25', 244),
    (19, '#05-02', 98),
    (20, '#04-26', 355);

/** Inserting 10 values into Course_areas **/

insert into Course_areas(area_name, manager_id) values 
    ('BR', 15),
    ('CN', 14),
    ('LU', 11),
    ('AN', 19),
    ('PH', 15),
    ('KD', 12),
    ('IK', 18),
    ('BT', 18),
    ('PS', 14),
    ('UA', 13);

/** Inserting 12 values into Courses **/

insert into Courses(title, duration, description, area_name, course_id) values 
    ('Engineering', 1, 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 'LU', 1),
    ('Support', 3, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', 'BT', 2),
    ('Business Development', 1, 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', 'KD', 3),
    ('Legal', 1, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 'PS', 4),
    ('Human Resources', 3, 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 'AN', 5),
    ('Marketing', 1, 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 'BR', 6),
    ('Accounting', 2, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 'KD', 7),
    ('Sales', 2, 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 'PS', 8),
    ('Services', 1, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.', 'PS', 9),
    ('Product Management', 3, 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 'PH', 10),
    ('Training', 3, 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 'AN', 11),
    ('Research and Development', 3, 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 'LU', 12);
begin;

/** Inserting 12 values into Offerings **/

insert into Offerings(course_id, launch_date, registration_deadline, start_date, end_date, target_number_registrations, seating_capacity, fees, eid) values 
    (1, '2021-02-19', '2021-03-11', '2021-03-22', '2021-03-23', 7, 626, 985, 2),
    (2, '2021-02-22', '2021-03-09', '2021-03-24', '2021-03-24', 6, 144, 579, 1),
    (3, '2021-02-22', '2021-03-08', '2021-03-25', '2021-03-26', 5, 752, 701, 4),
    (4, '2021-02-24', '2021-03-11', '2021-03-29', '2021-03-29', 7, 245, 867, 1),
    (5, '2021-02-21', '2021-03-09', '2021-03-30', '2021-03-31', 6, 425, 851, 1),
    (6, '2021-02-21', '2021-03-09', '2021-04-01', '2021-04-02', 5, 832, 907, 10),
    (7, '2021-02-23', '2021-03-09', '2021-04-05', '2021-04-06', 7, 756, 811, 1),
    (8, '2021-02-22', '2021-03-08', '2021-04-07', '2021-04-07', 5, 78, 691, 6),
    (9, '2021-02-26', '2021-03-08', '2021-04-08', '2021-04-08', 5, 470, 998, 8),
    (10, '2021-02-28', '2021-03-09', '2021-04-09', '2021-04-09', 5, 396, 746, 6),
    (11, '2021-02-22', '2021-03-09', '2021-04-12', '2021-04-13', 8, 358, 823, 10),
    (12, '2021-02-20', '2021-03-08', '2021-04-14', '2021-04-15', 5, 453, 847, 6);
/** Inserting 19 values into Specializes **/

insert into Specializes (area_name, eid) values 
    ('LU', 23),
    ('KD', 33),
    ('PS', 35),
    ('KD', 26),
    ('BR', 30),
    ('BT', 24),
    ('AN', 38),
    ('LU', 40),
    ('AN', 29),
    ('LU', 22),
    ('KD', 32),
    ('LU', 39),
    ('PS', 34),
    ('AN', 37),
    ('PS', 27),
    ('BR', 31),
    ('AN', 28),
    ('PH', 36),
    ('KD', 25);

/** Inserting 19 values into Sessions **/

insert into Sessions( s_date, start_time, end_time, launch_date, course_id, conducted_in, conducting_instructor) values 
    ( '2021-03-22', '10:00:00', '11:00:00', '2021-02-19', 1, 2, 22),
    ( '2021-03-23', '11:00:00', '12:00:00', '2021-02-19', 1, 3, 23),
    ( '2021-03-24', '14:00:00', '15:00:00', '2021-02-22', 2, 4, 24),
    ( '2021-03-25', '15:00:00', '16:00:00', '2021-02-22', 3, 5, 25),
    ( '2021-03-26', '16:00:00', '17:00:00', '2021-02-22', 3, 6, 26),
    ( '2021-03-29', '17:00:00', '18:00:00', '2021-02-24', 4, 7, 27),
    ( '2021-03-30', '09:00:00', '10:00:00', '2021-02-21', 5, 8, 28),
    ( '2021-03-31', '10:00:00', '11:00:00', '2021-02-21', 5, 9, 29),
    ( '2021-04-01', '11:00:00', '12:00:00', '2021-02-21', 6, 10, 30),
    ( '2021-04-02', '14:00:00', '15:00:00', '2021-02-21', 6, 11, 31),
    ( '2021-04-05', '15:00:00', '16:00:00', '2021-02-23', 7, 12, 32),
    ( '2021-04-06', '16:00:00', '17:00:00', '2021-02-23', 7, 13, 33),
    ( '2021-04-07', '17:00:00', '18:00:00', '2021-02-22', 8, 14, 34),
    ( '2021-04-08', '09:00:00', '10:00:00', '2021-02-26', 9, 15, 35),
    ( '2021-04-09', '10:00:00', '11:00:00', '2021-02-28', 10, 16, 36),
    ( '2021-04-12', '11:00:00', '12:00:00', '2021-02-22', 11, 17, 37),
    ( '2021-04-13', '14:00:00', '15:00:00', '2021-02-22', 11, 18, 38),
    ( '2021-04-14', '15:00:00', '16:00:00', '2021-02-20', 12, 19, 39),
    ( '2021-04-15', '16:00:00', '17:00:00', '2021-02-20', 12, 20, 40);

commit;


/** Inserting 10 values into Course_Packages **/

insert into Course_Packages(package_id, sale_start_date, sale_end_date, num_free_registrations, package_name, price) values 
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2021-02-03', '2021-02-10', 3, 'Renagel', 100),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2021-02-13', '2021-02-20', 10, 'Phenytoin Sodium', 47),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-10-07', '2020-10-22', 46, 'Good Neighbor Pharmacy Nasal', 4),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-12-29', '2021-01-04', 78, 'Vimpat', 31),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-09-01', '2020-09-14', 4, 'Cilostazol', 14),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-03-30', '2020-04-05', 59, 'Aspergillus niger', 20),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-09-01', '2020-09-12', 20, 'ADAPALENE', 92),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-10-06', '2020-10-17', 78, 'WATER HEMP POLLEN', 40),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-08-30', '2020-09-05', 51, 'Roota Re F for men', 62),
    (nextval(pg_get_serial_sequence('Course_Packages', 'package_id')), '2020-08-26', '2020-09-08', 73, 'Amitriptyline Hydrochloride', 91);

begin;


/** Inserting 20 values into Buys **/

insert into Buys(package_id, buy_date, credit_card_number, owned_by, num_remaining_redemptions) values 
    (6, '2020-04-03', '3538784641630037', 1, 58),
    (2, '2021-02-18', '3554531365855434', 2, 7),
    (4, '2020-12-31', '3567119297090059', 3, 75),
    (5, '2020-09-10', '630416844207924856', 4, 2),
    (1, '2021-02-10', '560223622964789130', 5, 2),
    (1, '2021-02-03', '30590622711624', 6, 2),
    (4, '2021-01-01', '5602247572991545749', 7, 75),
    (7, '2020-09-08', '6771875366041142', 8, 19),
    (3, '2020-10-08', '4041596193102', 9, 45),
    (10, '2020-09-01', '4917255012655175', 10, 72),
    (9, '2020-09-05', '3567933626565957', 11, 49),
    (7, '2020-09-12', '372301179429826', 12, 17),
    (2, '2021-02-14', '5602218701521348523', 13, 9),
    (6, '2020-04-05', '5010128559361155', 14, 57),
    (2, '2021-02-20', '6706561014114123894', 15, 7),
    (7, '2020-09-05', '6304069033785465', 16, 19),
    (6, '2020-04-02', '4844529195543699', 17, 58),
    (6, '2020-03-31', '5641828370381897', 18, 57),
    (10, '2020-08-29', '3548477527483534', 19, 71),
    (7, '2020-09-10', '6334716312650984', 20, 17);

/** Inserting 37 values into Registers **/

insert into Registers(sid, course_id, launch_date, registration_date, credit_card_number, owned_by) values 
    (8, 5, '2021-02-21', '2021-03-06', '3538784641630037', 1),
    (4, 3, '2021-02-22', '2021-03-04', '3538784641630037', 1),
    (15, 10, '2021-02-28', '2021-03-05', '3554531365855434', 2),
    (18, 12, '2021-02-20', '2021-03-05', '3567119297090059', 3),
    (17, 11, '2021-02-22', '2021-03-07', '3567119297090059', 3),
    (12, 7, '2021-02-23', '2021-03-06', '630416844207924856', 4),
    (1, 1, '2021-02-19', '2021-03-08', '630416844207924856', 4),
    (9, 6, '2021-02-21', '2021-03-06', '630416844207924856', 4),
    (13, 8, '2021-02-22', '2021-03-05', '560223622964789130', 5),
    (5, 3, '2021-02-22', '2021-03-06', '560223622964789130', 5),
    (17, 11, '2021-02-22', '2021-03-07', '30590622711624', 6),
    (13, 8, '2021-02-22', '2021-03-04', '30590622711624', 6),
    (19, 12, '2021-02-20', '2021-03-05', '30590622711624', 6),
    (11, 7, '2021-02-23', '2021-03-06', '5602247572991545749', 7),
    (16, 11, '2021-02-22', '2021-03-05', '6771875366041142', 8),
    (4, 3, '2021-02-22', '2021-03-04', '6771875366041142', 8),
    (6, 4, '2021-02-24', '2021-03-08', '4041596193102', 9),
    (17, 11, '2021-02-22', '2021-03-07', '4041596193102', 9),
    (2, 1, '2021-02-19', '2021-03-07', '4041596193102', 9),
    (13, 8, '2021-02-22', '2021-03-05', '4917255012655175', 10),
    (10, 6, '2021-02-21', '2021-03-05', '3567933626565957', 11),
    (18, 12, '2021-02-20', '2021-03-05', '372301179429826', 12),
    (2, 1, '2021-02-19', '2021-03-08', '5602218701521348523', 13),
    (8, 5, '2021-02-21', '2021-03-06', '5010128559361155', 14),
    (12, 7, '2021-02-23', '2021-03-06', '5010128559361155', 14),
    (8, 5, '2021-02-21', '2021-03-07', '6706561014114123894', 15),
    (19, 12, '2021-02-20', '2021-03-05', '6706561014114123894', 15),
    (4, 3, '2021-02-22', '2021-03-04', '6706561014114123894', 15),
    (5, 3, '2021-02-22', '2021-03-04', '6304069033785465', 16),
    (10, 6, '2021-02-21', '2021-03-06', '4844529195543699', 17),
    (17, 11, '2021-02-22', '2021-03-07', '4844529195543699', 17),
    (6, 4, '2021-02-24', '2021-03-08', '4844529195543699', 17),
    (17, 11, '2021-02-22', '2021-03-05', '5641828370381897', 18),
    (1, 1, '2021-02-19', '2021-03-07', '5641828370381897', 18),
    (7, 5, '2021-02-21', '2021-03-05', '3548477527483534', 19),
    (9, 6, '2021-02-21', '2021-03-07', '6334716312650984', 20),
    (14, 9, '2021-02-26', '2021-03-04', '6334716312650984', 20);

/** Inserting 37 values into Redeems **/

insert into Redeems(redeem_date, package_id, buy_date, credit_card_number, owned_by, course_id, launch_date, sid) values 
    ('2021-03-06', 6, '2020-04-03', '3538784641630037', 1, 9, '2021-02-26', 14),
    ('2021-03-06', 2, '2021-02-18', '3554531365855434', 2, 8, '2021-02-22', 13),
    ('2021-03-05', 2, '2021-02-18', '3554531365855434', 2, 12, '2021-02-20', 18),
    ('2021-03-04', 2, '2021-02-18', '3554531365855434', 2, 3, '2021-02-22', 4),
    ('2021-03-09', 4, '2020-12-31', '3567119297090059', 3, 4, '2021-02-24', 6),
    ('2021-03-05', 4, '2020-12-31', '3567119297090059', 3, 7, '2021-02-23', 11),
    ('2021-03-06', 4, '2020-12-31', '3567119297090059', 3, 6, '2021-02-21', 9),
    ('2021-03-05', 5, '2020-09-10', '630416844207924856', 4, 9, '2021-02-26', 14),
    ('2021-03-06', 5, '2020-09-10', '630416844207924856', 4, 10, '2021-02-28', 15),
    ('2021-03-07', 1, '2021-02-10', '560223622964789130', 5, 1, '2021-02-19', 2),
    ('2021-03-05', 1, '2021-02-03', '30590622711624', 6, 3, '2021-02-22', 5),
    ('2021-03-07', 4, '2021-01-01', '5602247572991545749', 7, 11, '2021-02-22', 16),
    ('2021-03-04', 4, '2021-01-01', '5602247572991545749', 7, 12, '2021-02-20', 18),
    ('2021-03-04', 4, '2021-01-01', '5602247572991545749', 7, 3, '2021-02-22', 4),
    ('2021-03-07', 7, '2020-09-08', '6771875366041142', 8, 1, '2021-02-19', 2),
    ('2021-03-06', 3, '2020-10-08', '4041596193102', 9, 7, '2021-02-23', 11),
    ('2021-03-05', 10, '2020-09-01', '4917255012655175', 10, 2, '2021-02-22', 3),
    ('2021-03-05', 9, '2020-09-05', '3567933626565957', 11, 5, '2021-02-21', 8),
    ('2021-03-09', 9, '2020-09-05', '3567933626565957', 11, 1, '2021-02-19', 2),
    ('2021-03-06', 7, '2020-09-12', '372301179429826', 12, 8, '2021-02-22', 13),
    ('2021-03-09', 7, '2020-09-12', '372301179429826', 12, 4, '2021-02-24', 6),
    ('2021-03-07', 7, '2020-09-12', '372301179429826', 12, 7, '2021-02-23', 11),
    ('2021-03-05', 2, '2021-02-14', '5602218701521348523', 13, 5, '2021-02-21', 7),
    ('2021-03-06', 6, '2020-04-05', '5010128559361155', 14, 12, '2021-02-20', 19),
    ('2021-03-05', 6, '2020-04-05', '5010128559361155', 14, 3, '2021-02-22', 5),
    ('2021-03-07', 2, '2021-02-20', '6706561014114123894', 15, 11, '2021-02-22', 16),
    ('2021-03-05', 2, '2021-02-20', '6706561014114123894', 15, 9, '2021-02-26', 14),
    ('2021-03-08', 2, '2021-02-20', '6706561014114123894', 15, 1, '2021-02-19', 1),
    ('2021-03-07', 7, '2020-09-05', '6304069033785465', 16, 6, '2021-02-21', 9),
    ('2021-03-06', 6, '2020-04-02', '4844529195543699', 17, 10, '2021-02-28', 15),
    ('2021-03-07', 6, '2020-03-31', '5641828370381897', 18, 5, '2021-02-21', 8),
    ('2021-03-05', 6, '2020-03-31', '5641828370381897', 18, 9, '2021-02-26', 14),
    ('2021-03-05', 10, '2020-08-29', '3548477527483534', 19, 12, '2021-02-20', 19),
    ('2021-03-06', 10, '2020-08-29', '3548477527483534', 19, 8, '2021-02-22', 13),
    ('2021-03-05', 7, '2020-09-10', '6334716312650984', 20, 11, '2021-02-22', 16),
    ('2021-03-05', 7, '2020-09-10', '6334716312650984', 20, 7, '2021-02-23', 12),
    ('2021-03-08', 7, '2020-09-10', '6334716312650984', 20, 1, '2021-02-19', 2);

/** Inserting 37 values into Cancels **/

insert into Cancels(cancel_date, cust_id, sid, course_id, launch_date, refund_amt, package_credit) values 
    ('2021-03-26', 1, 8, 5, '2021-02-21', 0, NULL),
    ('2021-03-07', 1, 4, 3, '2021-02-22', 630.9, NULL),
    ('2021-04-10', 3, 18, 12, '2021-02-20', 0, NULL),
    ('2021-04-02', 4, 12, 7, '2021-02-23', 0, NULL),
    ('2021-04-04', 5, 13, 8, '2021-02-22', 0, NULL),
    ('2021-03-07', 5, 5, 3, '2021-02-22', 630.9, NULL),
    ('2021-03-08', 6, 17, 11, '2021-02-22', 740.7, NULL),
    ('2021-03-07', 6, 13, 8, '2021-02-22', 621.9, NULL),
    ('2021-04-02', 7, 11, 7, '2021-02-23', 0, NULL),
    ('2021-03-05', 8, 16, 11, '2021-02-22', 740.7, NULL),
    ('2021-03-08', 9, 6, 4, '2021-02-24', 780.3000000000001, NULL),
    ('2021-03-09', 9, 17, 11, '2021-02-22', 740.7, NULL),
    ('2021-03-27', 14, 8, 5, '2021-02-21', 0, NULL),
    ('2021-03-09', 15, 8, 5, '2021-02-21', 765.9, NULL),
    ('2021-04-10', 17, 17, 11, '2021-02-22', 0, NULL),
    ('2021-04-05', 20, 14, 9, '2021-02-26', 0, NULL),
    ('2021-03-05', 2, 18, 12, '2021-02-20', NULL, 1),
    ('2021-03-10', 3, 6, 4, '2021-02-24', NULL, 1),
    ('2021-03-29', 3, 9, 6, '2021-02-21', NULL, 0),
    ('2021-03-20', 5, 2, 1, '2021-02-19', NULL, 0),
    ('2021-03-06', 6, 5, 3, '2021-02-22', NULL, 1),
    ('2021-03-07', 7, 16, 11, '2021-02-22', NULL, 1),
    ('2021-03-04', 7, 18, 12, '2021-02-20', NULL, 1),
    ('2021-03-07', 8, 2, 1, '2021-02-19', NULL, 1),
    ('2021-03-06', 10, 3, 2, '2021-02-22', NULL, 1),
    ('2021-04-04', 12, 13, 8, '2021-02-22', NULL, 0),
    ('2021-03-26', 12, 6, 4, '2021-02-24', NULL, 0),
    ('2021-03-08', 13, 7, 5, '2021-02-21', NULL, 1),
    ('2021-03-07', 14, 5, 3, '2021-02-22', NULL, 1),
    ('2021-03-08', 15, 16, 11, '2021-02-22', NULL, 1),
    ('2021-04-05', 15, 14, 9, '2021-02-26', NULL, 0),
    ('2021-03-18', 15, 1, 1, '2021-02-19', NULL, 0),
    ('2021-03-05', 18, 14, 9, '2021-02-26', NULL, 1),
    ('2021-04-10', 19, 19, 12, '2021-02-20', NULL, 0),
    ('2021-03-09', 19, 13, 8, '2021-02-22', NULL, 1),
    ('2021-04-08', 20, 16, 11, '2021-02-22', NULL, 0),
    ('2021-03-05', 20, 12, 7, '2021-02-23', NULL, 1);

commit;

