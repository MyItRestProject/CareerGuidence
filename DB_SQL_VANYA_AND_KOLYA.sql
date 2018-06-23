-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
-- \\																																			  -- \\
-- \\																																			  -- \\
-- \\                                                        SCRIPT BY VANYA START 															      -- \\
-- \\ 																																			  -- \\
-- \\																																			  -- \\
-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

use CareerGuidenceDB;

SET NAMES 'utf8';
SET CHARACTER SET utf8;

-- ---------------------------- USER TABLE ---------------------------------------------------------
INSERT INTO users(id_user,age_user,surname_user,name_user,email_user,login_user,password_user)
value(1,18,"garn","egor","sdfgs@gmail.com","fkfkf",123123);
INSERT INTO users(id_user,age_user,surname_user,name_user,email_user,login_user,password_user)
value(2,19,"marchuk","ilya","sdgsd@gmail.com","ewrwer",4352234);
INSERT INTO users(id_user,age_user,surname_user,name_user,email_user,login_user,password_user)
value(3,23,"horets","vanya","werwer@gmail.com","qwrwe",245523);
INSERT INTO users(id_user,age_user,surname_user,name_user,email_user,login_user,password_user)
value(4,11,"balbes","vlad","sdgsdg@gmail.com","werwert",23435223);
INSERT INTO users(id_user,age_user,surname_user,name_user,email_user,login_user,password_user)
value(5,31,"gopa","kolya","etgerter@gmail.com","ertery",12423432);
INSERT INTO users(id_user,age_user,surname_user,name_user,email_user,login_user,password_user)
value(6,22,"pipira","oleg", "werwerggg@gmail.com","ewwerwer",234234);
INSERT INTO users(id_user,age_user,surname_user,name_user,email_user,login_user,password_user)
value(7,33,"herasima","nagasaki","badaboom@gmail.com","tararah",245456899);
-- ----------------------------------- END ----------------------------------------------------------




-- ---------------------------------- ROLES TABLE ---------------------------------------------------------
INSERT INTO roles(id_roles,name_roles)
value(1,"admin");
INSERT INTO roles(id_roles,name_roles)
value(2,"user");
INSERT INTO roles(id_roles,name_roles)
value(3,"user");
INSERT INTO roles(id_roles,name_roles)
value(4,"user");
INSERT INTO roles(id_roles,name_roles)
value(5,"admin");
INSERT INTO roles(id_roles,name_roles)
value(6,"user");
INSERT INTO roles(id_roles,name_roles)
value(7,"user");
-- ---------------------------------------------------------------------------------------------------------------------------------




-- ------------------------------ USERS_HAS_ROLES TABLE ---------------------------------------------------------------------------
INSERT INTO users_has_roles(id_user,id_role)
value(1,3);
INSERT INTO users_has_roles(id_user,id_role)
value(2,4);
INSERT INTO users_has_roles(id_user,id_role)
value(3,5);
INSERT INTO users_has_roles(id_user,id_role)
value(4,6);
INSERT INTO users_has_roles(id_user,id_role)
value(5,7);
INSERT INTO users_has_roles(id_user,id_role)
value(6,2);
INSERT INTO users_has_roles(id_user,id_role)
value(7,1);
-- --------------------------------- -----------------------------------------------------------------------------------------------------


-- ------------------------------------------QUESTIONS TABLE --------------------------------------------------------------------------
insert into questions (id,name_question,points)
value(1,"Мне хотелось бы в своей профессиональной деятельности общаться с самыми разными людьми?",1);
insert into questions (id,name_question,points)
value(2,"Мне хотелось бы в своей профессиональной деятельности снимать фильмы, писать книги, рисовать, выступать на сцене и т.д?",4);
insert into questions (id,name_question,points)
value(3,"Мне хотелось бы в своей профессиональной деятельности заниматься расчетами; вести документацию?",6);

insert into questions (id,name_question,points)
value(4,"В книге или кинофильме меня больше всего привлекает возможность следить за ходом мыслей автора?",2);
insert into questions (id,name_question,points)
value(5,"В книге или кинофильме меня больше всего привлекает художественная форма, мастерство писателя или режиссера?",4);
insert into questions (id,name_question,points)
value(6,"В книге или кинофильме меня больше всего привлекает сюжет, действия героев?",5);

insert into questions (id,name_question,points)
value(7,"Меня больше обрадует Нобелевская премия за общественную деятельность?",1);
insert into questions (id,name_question,points)
value(8,"Меня больше обрадует Нобелевская премия в области науки?",2);
insert into questions (id,name_question,points)
value(9,"Меня больше обрадует Нобелевская премия в области искусства?",4);

insert into questions (id,name_question,points)
value(10,"Я скорее соглашусь стать главным механиком?",3);
insert into questions (id,name_question,points)
value(11,"Я скорее соглашусь стать начальником экспедиции?",5);
insert into questions (id,name_question,points)
value(12,"Я скорее соглашусь стать главным бухгалтером?",6);

insert into questions (id,name_question,points)
value(13,"Будущее людей определяют взаимопонимание между людьми?",1);
insert into questions (id,name_question,points)
value(14,"Будущее людей определяют научные открытия?",2);
insert into questions (id,name_question,points)
value(15,"Будущее людей определяют развитие производства?",3);

insert into questions (id,name_question,points)
value(16,"Если я стану руководителем, то в первую очередь займусь созданием дружного, сплоченного коллектива?",1);
insert into questions (id,name_question,points)
value(17,"Если я стану руководителем, то в первую очередь займусь разработкой новых технологий обучения?",2);
insert into questions (id,name_question,points)
value(18,"Если я стану руководителем, то в первую очередь займусьработой с документами?",6);

insert into questions (id,name_question,points)
value(19,"На технической выставке меня больше привлечет внутреннее устройство экспонатов?",2);
insert into questions (id,name_question,points)
value(20,"На технической выставке меня больше привлечет их практическое применение?",3);
insert into questions (id,name_question,points)
value(21,"На технической выставке меня больше привлечет внешний вид экспонатов (цвет, форм)?",4);

insert into questions (id,name_question,points)
value(22,"В людях я ценю, прежде всего дружелюбие и отзывчивость?",1);
insert into questions (id,name_question,points)
value(23,"В людях я ценю, прежде всего смелость и выносливость?",5);
insert into questions (id,name_question,points)
value(24,"В людях я ценю, прежде всего обязательность и аккуратность?",6);

insert into questions (id,name_question,points)
value(25,"В свободное время мне хотелось бы ставить различные опыты, эксперименты?",2);
insert into questions (id,name_question,points)
value(26,"В свободное время мне хотелось быписать стихи, сочинять музыку или рисовать?",4);
insert into questions (id,name_question,points)
value(27,"В свободное время мне хотелось бы тренироваться?",5);

insert into questions (id,name_question,points)
value(28,"В заграничных поездках меня скорее заинтересует возможность знакомства с историей и культурой другой страны?",4);
insert into questions (id,name_question,points)
value(29,"В заграничных поездках меня скорее заинтересует экстремальный туризм (альпинизм, виндсерфинг, горные лыж)?",5);
insert
into questions (id,name_question,points)
value(30,"В заграничных поездках меня скорее заинтересует деловое общение?",6);

insert into questions (id,name_question,points)
value(31,"Мне интереснее беседовать о человеческих взаимоотношениях?",1);
insert into questions (id,name_question,points)
value(32,"Мне интереснее беседовать о новой научной гипотезе?",2);
insert into questions (id,name_question,points)
value(33,"Мне интереснее беседовать о технических характеристиках новой модели машины, компьютера?",3);

insert into questions (id,name_question,points)
value(34,"Если бы в моей школе было всего три кружка, я бы выбралтехнический?",3);
insert into questions (id,name_question,points)
value(35,"Если бы в моей школе было всего три кружка, я бы выбралмузыкальный?",4);
insert into questions (id,name_question,points)
value(36,"Если бы в моей школе было всего три кружка, я бы выбралспортивный?",5);

insert into questions(id, points, name_question)
value(37,1,"В школе следует обратить особое внимание на улучшение взаимопонимания между учителями и учениками?");
insert into questions(id, points, name_question)
value(38,5,"В школе следует обратить особое внимание на поддержание здоровья учащихся, занятия спортом?");
insert into questions(id, points, name_question)
value(39,6,"В школе следует обратить особое внимание на укрепление дисциплины?");
insert into questions(id, points, name_question)
value(40,2,"Смотришь ли ты научно-популярные фильмы?");
insert into questions(id, points, name_question)
value(41,4,"Смотришь ли ты программы о культуре и искусстве?");
insert into questions(id, points, name_question)
value(42,5,"Смотришь ли ты спортивные программы?");
insert into questions(id, points, name_question)
value(43,1,"Хотелось бы тебе работать с детьми или сверстниками?");
insert into questions(id, points, name_question)
value(44,3,"Хотелось бы тебе работать с машинами, механизмами?");
insert into questions(id, points, name_question)
value(45,5,"Хотелось бы тебе работать с объектами природы?");
insert into questions(id, points, name_question)
value(46,1,"Школа должна учить общению с другими людьми?");
insert into questions(id, points, name_question)
value(47,3,"Школа должна давать знания?");
insert into questions(id, points, name_question)
value(48,6,"Школа должна обучать навыкам работы?");
insert into questions(id, points, name_question)
value(49,4,"Главное ли в жизни иметь возможность заниматься творчеством?");
insert into questions(id, points, name_question)
value(50,5,"Главное ли в жизни вести здоровый образ жизни?");
insert into questions(id, points, name_question)
value(51,6,"Главное ли в жизни тщательно планировать свои дела?");
insert into questions(id, points, name_question)
value(52,1,"Должно ли государство в первую очередь заботиться о защите интересов и прав граждан?");
insert into questions(id, points, name_question)
value(53,2,"Должно ли государство в первую очередь заботиться о достижениях в области науки и техники?");
insert into questions(id, points, name_question)
value(54,3,"Должно ли государство в первую очередь заботиться о материальном благополучии граждан?");
insert into questions(id, points, name_question)
value(55,3,"Тебе нравятся уроки труда?");
insert into questions(id, points, name_question)
value(56,5,"Тебе нравятся уроки физкультуры?");
insert into questions(id, points, name_question)
value(57,6,"Тебе нравятся уроки математики?");
insert into questions(id, points, name_question)
value(58,1,"Тебе интересно было бы заниматься сбытом товаров?");
insert into questions(id, points, name_question)
value(59,3,"Тебе интересно было бы изготавливать изделия?");
insert into questions(id, points, name_question)
value(60,6,"Тебе интересно было бы планировать производство товаров?");
insert into questions(id, points, name_question)
value(61,2,"Ты любишь читать статьи о выдающихся ученых и их открытиях?");
insert into questions(id, points, name_question)
value(62,3,"Ты любишь читать статьи о интересных изобретениях?");
insert into questions(id, points, name_question)
value(63,4,"Ты любишь читать статьи о жизни и творчестве писателей, художников, музыкантов?");
insert into questions(id, points, name_question)
value(64,2,"Ты любишь в свободное время читать, думать, рассуждать?");
insert into questions(id, points, name_question)
value(65,3,"Ты любишь в свободное время что-нибудь мастерить, шить, ухаживать за животными, растениями?");
insert into questions(id, points, name_question)
value(66,4,"Ты любишь в свободное время ходить на выставки, концерты, в музеи?");
insert into questions(id, points, name_question)
value(67,2,"Вызывает ли у тебя интерес сообщение о научном открытии?");
insert into questions(id, points,name_question)
value(68,4,"Вызывает ли у тебя интерес сообщение о художественной выставке?");
insert into questions(id, points, name_question)
value(69,6,"Вызывает ли у тебя интерес сообщение о экономической ситуации?");
insert into questions(id, points, name_question)
value(70,1,"Хочешь ли ты работать в помещении, где много людей?");
insert into questions(id, points, name_question)
value(71,5,"Хочешь ли ты работать в необычных условиях?");
insert into questions(id, points, name_question)
value(72,6,"Хочешь ли ты работать в обычном кабинет?");
-- -----------------------------------------------------------------------------------------------------------------------------------



-- -------------------------------- ENTERPRISES TABLE ---------------------------------------------------------------------------------------
INSERT INTO enterprises(id_enterprice,login_enterprice,password_enterprice,name_enterprice,phone_enterprice,geolocation_enterprice)
value(1,"tyujrth",24234234,"pituhicorp", "+375295556776","Belarus");
INSERT INTO enterprises(id_enterprice,login_enterprice,password_enterprice,name_enterprice,phone_enterprice,geolocation_enterprice)
value(2,"testwqeq",242456,"sosiskacorp","+375294568800","Belarus");
INSERT INTO enterprises(id_enterprice,login_enterprice,password_enterprice,name_enterprice,phone_enterprice,geolocation_enterprice)
value(3,"ririri",53645758,"jopacorp",+375294459922,"Russia");
INSERT INTO enterprises(id_enterprice,login_enterprice,password_enterprice,name_enterprice,phone_enterprice,geolocation_enterprice)
value(4,"kirka",2442355,"honeycorp","+375254749723","Belarus");
INSERT INTO enterprises(id_enterprice,login_enterprice,password_enterprice,name_enterprice,phone_enterprice,geolocation_enterprice)
value(5,"gorik228",667898765,"unitcorp","+375297874628","Belarus");
INSERT INTO enterprises(id_enterprice,login_enterprice,password_enterprice,name_enterprice,phone_enterprice,geolocation_enterprice)
value(6,"horo54895l",5660600,"boomjarcorp","+375257449959","Belarus");
INSERT INTO enterprises(id_enterprice,login_enterprice,password_enterprice,name_enterprice,phone_enterprice,geolocation_enterprice)
value(7,"kolobok1123",359595959,"oilcorp","+375295779933","Belarus");
-- -------------------------------------------------------------------------------------------------------------------------------------

-- --------------------------------------------------ANSWERS TABLE -----------------------------------------------------------------------------
INSERT INTO answers(id,id_profession,id_question)
value(1,1,1);
INSERT INTO answers(id,id_profession,id_question)
value(2,2,2);
INSERT INTO answers(id,id_profession,id_question)
value(3,3,3);
INSERT INTO answers(id,id_profession,id_question)
value(4,4,4);
INSERT INTO answers(id,id_profession,id_question)
value(5,5,5);

-- -------------------------------- PROFESSIONS TABLE ----------------------------------------------------------------------------------------
insert into professions (id_profession,name_profession,description_profession)
value(1,"Programmer","I want to create games");
insert into professions (id_profession,name_profession,description_profession)
value(2,"Lawyer","A dream to protect innocent people before the court");
insert into professions (id_profession,name_profession,description_profession)
value(3,"Tax inspector","Check companies for honesty in terms of taxes");
insert into professions (id_profession,name_profession,description_profession)
value(4,"Test","test");
insert into professions (id_profession,name_profession,description_profession)
value(5,"Teacher","Teach children");


-- ---------------------------------- WORKS TABLE ----------------------------------------------------------------------------------------
INSERT INTO works(id,id_profession,name_work,position_work)
value(1,1,"Programmer","webmaster");
INSERT INTO works(id,id_profession,name_work,position_work)
value(2,2,"Lawyer", "YurBusiness");
INSERT INTO works(id,id_profession,name_work,position_work)
value(3,3,"Tax inspector", "Lawyer");
INSERT INTO works(id,id_profession,name_work,position_work)
value(4,4,"Seller","Consultant");
INSERT INTO works(id,id_profession,name_work,position_work)
value(5,5,"Teacher","Teacher of Russian language");
-- --------------------------------------------------------------------------------------------------------------------------------------------



-- -----------------------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------ENTERPRISE_HAS_WORK TABLE -----------------------------------------------------------------
INSERT INTO enterprises_has_work(id_enterprise,id_works)
value(1,3);
INSERT INTO enterprises_has_work(id_enterprise,id_works)
value(2,4);
INSERT INTO enterprises_has_work(id_enterprise,id_works)
value(3,5);
INSERT INTO enterprises_has_work(id_enterprise,id_works)
value(4,2);
INSERT INTO enterprises_has_work(id_enterprise,id_works)
value(5,1);

-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\SCRIPT BY VANYA END \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\





-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ SCRIPT BY KOLYA START \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

-- -----------------------------------------------TEST-----------------------------------------------------------------------------
insert into tests(id_test,name_test)                                                                                             
value(1,"Career Guidance");																										 
insert into tests(id_test,name_test)
value(2,"On whom to study");
insert into tests(id_test,name_test)
value(3,"Where to study");
insert into tests(id_test,name_test)
value(4,"The best city for my profession");
insert into tests(id_test,name_test)
value(5,"The most profitable profession for me");
-- ----------------------------------------------------------------------------------------------------------------------------



-- -----------------------------------------------TEST_HAS_USER------------------------------------------------------------------
insert into test_has_users(id_user,id_test,id_profession)
value(1,1,1);
insert into test_has_users(id_user,id_test,id_profession)
value(2,2,2);
insert into test_has_users(id_user,id_test,id_profession)
value(3,3,3);
insert into test_has_users(id_user,id_test,id_profession)
value(4,4,4);
insert into test_has_users(id_user,id_test,id_profession)
value(5,5,5);
-- ----------------------------------------------------------------------------------------------------------------------------------




-- ----------------------------------------------USER_HAS_QUESTION----------------------------------------------------------------------
insert into user_has_questions(id_user,id_question,flag)
value(1,1,true);
insert into user_has_questions(id_user,id_question,flag)
value(2,2,false);
insert into user_has_questions(id_user,id_question,flag)
value(3,3,true);
insert into user_has_questions(id_user,id_question,flag)
value(4,4,false);
insert into user_has_questions(id_user,id_question,flag)
value(5,5,true);
-- ------------------------------------------------------------------------------------------------------------------------------------





-- -----------------------------------------------TEST_HAS_QUESTION--------------------------------------------------------------------
insert into test_has_question(id_test,id_question)
value(1,1);
insert into test_has_question(id_test,id_question)
value(2,2);
insert into test_has_question(id_test,id_question)
value(3,3);
insert into test_has_question(id_test,id_question)
value(4,4);
insert into test_has_question(id_test,id_question)
value(5,5);
-- ------------------------------------------------------------------------------------------------------------------------

-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ SCRIPT BY KOLYA END \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


