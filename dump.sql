-- Adminer 4.3.1 PostgreSQL dump

DROP TABLE IF EXISTS "django_migrations";
CREATE SEQUENCE django_migrations_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."django_migrations" (
    "id" integer DEFAULT nextval('django_migrations_id_seq') NOT NULL,
    "app" character varying(255) NOT NULL,
    "name" character varying(255) NOT NULL,
    "applied" timestamptz NOT NULL,
    CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "django_migrations" ("id", "app", "name", "applied") VALUES
(1,	'contenttypes',	'0001_initial',	'2017-08-03 11:45:25.800444+00'),
(2,	'auth',	'0001_initial',	'2017-08-03 11:45:26.726482+00'),
(3,	'admin',	'0001_initial',	'2017-08-03 11:45:26.897228+00'),
(4,	'admin',	'0002_logentry_remove_auto_add',	'2017-08-03 11:45:26.937335+00'),
(5,	'contenttypes',	'0002_remove_content_type_name',	'2017-08-03 11:45:27.007308+00'),
(6,	'auth',	'0002_alter_permission_name_max_length',	'2017-08-03 11:45:27.047908+00'),
(7,	'auth',	'0003_alter_user_email_max_length',	'2017-08-03 11:45:27.079872+00'),
(8,	'auth',	'0004_alter_user_username_opts',	'2017-08-03 11:45:27.104693+00'),
(9,	'auth',	'0005_alter_user_last_login_null',	'2017-08-03 11:45:27.148213+00'),
(10,	'auth',	'0006_require_contenttypes_0002',	'2017-08-03 11:45:27.158292+00'),
(11,	'auth',	'0007_alter_validators_add_error_messages',	'2017-08-03 11:45:27.185038+00'),
(12,	'auth',	'0008_alter_user_username_max_length',	'2017-08-03 11:45:27.258492+00'),
(13,	'gallery',	'0001_initial',	'2017-08-03 11:45:27.550083+00'),
(14,	'news',	'0001_initial',	'2017-08-03 11:45:27.821427+00'),
(15,	'page',	'0001_initial',	'2017-08-03 11:45:29.068568+00'),
(16,	'partners',	'0001_initial',	'2017-08-03 11:45:29.248695+00'),
(17,	'promotions',	'0001_initial',	'2017-08-03 11:45:29.359523+00'),
(18,	'sessions',	'0001_initial',	'2017-08-03 11:45:29.520042+00'),
(19,	'shop',	'0001_initial',	'2017-08-03 11:45:31.089427+00'),
(20,	'taggit',	'0001_initial',	'2017-08-03 11:45:31.490366+00'),
(21,	'taggit',	'0002_auto_20150616_2121',	'2017-08-03 11:45:31.590841+00'),
(22,	'user_profile',	'0001_initial',	'2017-08-03 11:45:31.721425+00');

DROP TABLE IF EXISTS "django_content_type";
CREATE SEQUENCE django_content_type_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."django_content_type" (
    "id" integer DEFAULT nextval('django_content_type_id_seq') NOT NULL,
    "app_label" character varying(100) NOT NULL,
    "model" character varying(100) NOT NULL,
    CONSTRAINT "django_content_type_app_label_76bd3d3b_uniq" UNIQUE ("app_label", "model"),
    CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "django_content_type" ("id", "app_label", "model") VALUES
(1,	'contenttypes',	'contenttype'),
(2,	'admin',	'logentry'),
(3,	'auth',	'permission'),
(4,	'auth',	'group'),
(5,	'auth',	'user'),
(6,	'sessions',	'session'),
(7,	'taggit',	'tag'),
(8,	'taggit',	'taggeditem'),
(9,	'thumbnail',	'kvstore'),
(10,	'page',	'carouselslide'),
(11,	'page',	'placeholder'),
(12,	'page',	'menu'),
(13,	'page',	'setting'),
(14,	'page',	'menusection'),
(15,	'page',	'page'),
(16,	'page',	'carousel'),
(17,	'news',	'news'),
(18,	'promotions',	'promotions'),
(19,	'partners',	'regions'),
(20,	'partners',	'dealers'),
(21,	'shop',	'item_image'),
(22,	'shop',	'item'),
(23,	'shop',	'item_variation'),
(24,	'shop',	'order'),
(25,	'shop',	'orderitem'),
(26,	'shop',	'category'),
(27,	'shop',	'userprofile'),
(28,	'shop',	'status'),
(29,	'gallery',	'item'),
(30,	'gallery',	'category'),
(31,	'user_profile',	'userprofile');

DROP TABLE IF EXISTS "auth_permission";
CREATE SEQUENCE auth_permission_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."auth_permission" (
    "id" integer DEFAULT nextval('auth_permission_id_seq') NOT NULL,
    "name" character varying(255) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" character varying(100) NOT NULL,
    CONSTRAINT "auth_permission_content_type_id_01ab375a_uniq" UNIQUE ("content_type_id", "codename"),
    CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id" FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "auth_permission_417f1b1c" ON "public"."auth_permission" USING btree ("content_type_id");

INSERT INTO "auth_permission" ("id", "name", "content_type_id", "codename") VALUES
(1,	'Can add content type',	1,	'add_contenttype'),
(2,	'Can change content type',	1,	'change_contenttype'),
(3,	'Can delete content type',	1,	'delete_contenttype'),
(4,	'Can add log entry',	2,	'add_logentry'),
(5,	'Can change log entry',	2,	'change_logentry'),
(6,	'Can delete log entry',	2,	'delete_logentry'),
(7,	'Can add permission',	3,	'add_permission'),
(8,	'Can change permission',	3,	'change_permission'),
(9,	'Can delete permission',	3,	'delete_permission'),
(10,	'Can add group',	4,	'add_group'),
(11,	'Can change group',	4,	'change_group'),
(12,	'Can delete group',	4,	'delete_group'),
(13,	'Can add user',	5,	'add_user'),
(14,	'Can change user',	5,	'change_user'),
(15,	'Can delete user',	5,	'delete_user'),
(16,	'Can add session',	6,	'add_session'),
(17,	'Can change session',	6,	'change_session'),
(18,	'Can delete session',	6,	'delete_session'),
(19,	'Can add Tagged Item',	8,	'add_taggeditem'),
(20,	'Can change Tagged Item',	8,	'change_taggeditem'),
(21,	'Can delete Tagged Item',	8,	'delete_taggeditem'),
(22,	'Can add Tag',	7,	'add_tag'),
(23,	'Can change Tag',	7,	'change_tag'),
(24,	'Can delete Tag',	7,	'delete_tag'),
(25,	'Can add kv store',	9,	'add_kvstore'),
(26,	'Can change kv store',	9,	'change_kvstore'),
(27,	'Can delete kv store',	9,	'delete_kvstore'),
(28,	'Can add placeholder',	11,	'add_placeholder'),
(29,	'Can change placeholder',	11,	'change_placeholder'),
(30,	'Can delete placeholder',	11,	'delete_placeholder'),
(31,	'Can add Настройка',	13,	'add_setting'),
(32,	'Can change Настройка',	13,	'change_setting'),
(33,	'Can delete Настройка',	13,	'delete_setting'),
(34,	'Can add Страница',	15,	'add_page'),
(35,	'Can change Страница',	15,	'change_page'),
(36,	'Can delete Страница',	15,	'delete_page'),
(37,	'Can add Слайд',	10,	'add_carouselslide'),
(38,	'Can change Слайд',	10,	'change_carouselslide'),
(39,	'Can delete Слайд',	10,	'delete_carouselslide'),
(40,	'Can add Раздел',	14,	'add_menusection'),
(41,	'Can change Раздел',	14,	'change_menusection'),
(42,	'Can delete Раздел',	14,	'delete_menusection'),
(43,	'Can add Карусель',	16,	'add_carousel'),
(44,	'Can change Карусель',	16,	'change_carousel'),
(45,	'Can delete Карусель',	16,	'delete_carousel'),
(46,	'Can add Меню',	12,	'add_menu'),
(47,	'Can change Меню',	12,	'change_menu'),
(48,	'Can delete Меню',	12,	'delete_menu'),
(49,	'Can add Новость',	17,	'add_news'),
(50,	'Can change Новость',	17,	'change_news'),
(51,	'Can delete Новость',	17,	'delete_news'),
(52,	'Can add Промо акция',	18,	'add_promotions'),
(53,	'Can change Промо акция',	18,	'change_promotions'),
(54,	'Can delete Промо акция',	18,	'delete_promotions'),
(55,	'Can add Регион',	19,	'add_regions'),
(56,	'Can change Регион',	19,	'change_regions'),
(57,	'Can delete Регион',	19,	'delete_regions'),
(58,	'Can add Диллер',	20,	'add_dealers'),
(59,	'Can change Диллер',	20,	'change_dealers'),
(60,	'Can delete Диллер',	20,	'delete_dealers'),
(61,	'Can add Товар заказа',	25,	'add_orderitem'),
(62,	'Can change Товар заказа',	25,	'change_orderitem'),
(63,	'Can delete Товар заказа',	25,	'delete_orderitem'),
(64,	'Can add Статус заказа',	28,	'add_status'),
(65,	'Can change Статус заказа',	28,	'change_status'),
(66,	'Can delete Статус заказа',	28,	'delete_status'),
(67,	'Can add Вариация',	23,	'add_item_variation'),
(68,	'Can change Вариация',	23,	'change_item_variation'),
(69,	'Can delete Вариация',	23,	'delete_item_variation'),
(70,	'Can add Изображение',	21,	'add_item_image'),
(71,	'Can change Изображение',	21,	'change_item_image'),
(72,	'Can delete Изображение',	21,	'delete_item_image'),
(73,	'Can add Категория',	26,	'add_category'),
(74,	'Can change Категория',	26,	'change_category'),
(75,	'Can delete Категория',	26,	'delete_category'),
(76,	'Can add Товар',	22,	'add_item'),
(77,	'Can change Товар',	22,	'change_item'),
(78,	'Can delete Товар',	22,	'delete_item'),
(79,	'Can add Заказ',	24,	'add_order'),
(80,	'Can change Заказ',	24,	'change_order'),
(81,	'Can delete Заказ',	24,	'delete_order'),
(82,	'Can add Профиль пользователя',	27,	'add_userprofile'),
(83,	'Can change Профиль пользователя',	27,	'change_userprofile'),
(84,	'Can delete Профиль пользователя',	27,	'delete_userprofile'),
(85,	'Can add Изображение',	29,	'add_item'),
(86,	'Can change Изображение',	29,	'change_item'),
(87,	'Can delete Изображение',	29,	'delete_item'),
(88,	'Can add Раздел галлереи',	30,	'add_category'),
(89,	'Can change Раздел галлереи',	30,	'change_category'),
(90,	'Can delete Раздел галлереи',	30,	'delete_category'),
(91,	'Can add user profile',	31,	'add_userprofile'),
(92,	'Can change user profile',	31,	'change_userprofile'),
(93,	'Can delete user profile',	31,	'delete_userprofile');

DROP TABLE IF EXISTS "auth_group";
CREATE SEQUENCE auth_group_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."auth_group" (
    "id" integer DEFAULT nextval('auth_group_id_seq') NOT NULL,
    "name" character varying(80) NOT NULL,
    CONSTRAINT "auth_group_name_key" UNIQUE ("name"),
    CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree ("name");


DROP TABLE IF EXISTS "auth_group_permissions";
CREATE SEQUENCE auth_group_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."auth_group_permissions" (
    "id" integer DEFAULT nextval('auth_group_permissions_id_seq') NOT NULL,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL,
    CONSTRAINT "auth_group_permissions_group_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id"),
    CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id" FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "auth_group_permissions_0e939a4f" ON "public"."auth_group_permissions" USING btree ("group_id");

CREATE INDEX "auth_group_permissions_8373b171" ON "public"."auth_group_permissions" USING btree ("permission_id");


DROP TABLE IF EXISTS "auth_user";
CREATE SEQUENCE auth_user_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."auth_user" (
    "id" integer DEFAULT nextval('auth_user_id_seq') NOT NULL,
    "password" character varying(128) NOT NULL,
    "last_login" timestamptz,
    "is_superuser" boolean NOT NULL,
    "username" character varying(150) NOT NULL,
    "first_name" character varying(30) NOT NULL,
    "last_name" character varying(30) NOT NULL,
    "email" character varying(254) NOT NULL,
    "is_staff" boolean NOT NULL,
    "is_active" boolean NOT NULL,
    "date_joined" timestamptz NOT NULL,
    CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_user_username_key" UNIQUE ("username")
) WITH (oids = false);

CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING btree ("username");

INSERT INTO "auth_user" ("id", "password", "last_login", "is_superuser", "username", "first_name", "last_name", "email", "is_staff", "is_active", "date_joined") VALUES
(1,	'pbkdf2_sha256$30000$8e24SmVqDI73$gsMYN0ILAhSUwoYC7HEJzK0MPb/fe1abXpMHiXSXIno=',	'2017-08-03 11:46:21.367677+00',	'1',	'admin',	'',	'',	'admin@admin.ru',	'1',	'1',	'2017-08-03 11:46:01.765315+00');

DROP TABLE IF EXISTS "auth_user_groups";
CREATE SEQUENCE auth_user_groups_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."auth_user_groups" (
    "id" integer DEFAULT nextval('auth_user_groups_id_seq') NOT NULL,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL,
    CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_user_groups_user_id_94350c0c_uniq" UNIQUE ("user_id", "group_id"),
    CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "auth_user_groups_0e939a4f" ON "public"."auth_user_groups" USING btree ("group_id");

CREATE INDEX "auth_user_groups_e8701ad4" ON "public"."auth_user_groups" USING btree ("user_id");


DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE SEQUENCE auth_user_user_permissions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."auth_user_user_permissions" (
    "id" integer DEFAULT nextval('auth_user_user_permissions_id_seq') NOT NULL,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL,
    CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "auth_user_user_permissions_user_id_14a6b632_uniq" UNIQUE ("user_id", "permission_id"),
    CONSTRAINT "auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id" FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "auth_user_user_permissions_8373b171" ON "public"."auth_user_user_permissions" USING btree ("permission_id");

CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "public"."auth_user_user_permissions" USING btree ("user_id");


DROP TABLE IF EXISTS "django_admin_log";
CREATE SEQUENCE django_admin_log_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."django_admin_log" (
    "id" integer DEFAULT nextval('django_admin_log_id_seq') NOT NULL,
    "action_time" timestamptz NOT NULL,
    "object_id" text,
    "object_repr" character varying(200) NOT NULL,
    "action_flag" smallint NOT NULL,
    "change_message" text NOT NULL,
    "content_type_id" integer,
    "user_id" integer NOT NULL,
    CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "django_admin_content_type_id_c4bce8eb_fk_django_content_type_id" FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "django_admin_log_417f1b1c" ON "public"."django_admin_log" USING btree ("content_type_id");

CREATE INDEX "django_admin_log_e8701ad4" ON "public"."django_admin_log" USING btree ("user_id");

INSERT INTO "django_admin_log" ("id", "action_time", "object_id", "object_repr", "action_flag", "change_message", "content_type_id", "user_id") VALUES
(1,	'2017-08-03 11:50:21.275831+00',	'1',	'Главная',	1,	'[{"added": {}}]',	15,	1),
(2,	'2017-08-03 11:50:35.910812+00',	'2',	'Генплан',	1,	'[{"added": {}}]',	15,	1),
(3,	'2017-08-03 11:50:47.245814+00',	'3',	'Инфраструктура',	1,	'[{"added": {}}]',	15,	1),
(4,	'2017-08-03 11:50:56.165145+00',	'4',	'Контакты',	1,	'[{"added": {}}]',	15,	1),
(5,	'2017-08-03 11:51:19.725048+00',	'1',	'Главное меню',	1,	'[{"added": {}}, {"added": {"object": "\u0413\u043b\u0430\u0432\u043d\u0430\u044f", "name": "\u0420\u0430\u0437\u0434\u0435\u043b"}}, {"added": {"object": "\u0413\u0435\u043d\u043f\u043b\u0430\u043d", "name": "\u0420\u0430\u0437\u0434\u0435\u043b"}}, {"added": {"object": "\u0418\u043d\u0444\u0440\u0430\u0441\u0442\u0440\u0443\u043a\u0442\u0443\u0440\u0430", "name": "\u0420\u0430\u0437\u0434\u0435\u043b"}}, {"added": {"object": "\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u044b", "name": "\u0420\u0430\u0437\u0434\u0435\u043b"}}]',	12,	1),
(6,	'2017-08-08 11:10:55.127006+00',	'1',	'Карусель1',	1,	'[{"added": {}}, {"added": {"name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}, {"added": {"name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}, {"added": {"name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}]',	16,	1),
(7,	'2017-08-08 12:28:17.645075+00',	'1',	'Карусель1',	2,	'[{"changed": {"fields": ["slug"]}}, {"changed": {"fields": ["text"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}, {"changed": {"fields": ["text"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}, {"changed": {"fields": ["text"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}]',	16,	1),
(8,	'2017-08-08 12:31:18.097822+00',	'1',	'Карусель1',	2,	'[{"changed": {"fields": ["slug"]}}]',	16,	1),
(9,	'2017-08-08 12:39:47.026353+00',	'1',	'Карусель1',	2,	'[{"changed": {"fields": ["file"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}]',	16,	1),
(10,	'2017-08-08 12:40:04.710231+00',	'1',	'Карусель1',	2,	'[{"changed": {"fields": ["num"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}]',	16,	1),
(11,	'2017-08-08 12:53:25.342818+00',	'1',	'Главная',	2,	'[{"changed": {"fields": ["carousel"]}}]',	15,	1),
(12,	'2017-08-08 13:53:11.492055+00',	'1',	'Карусель1',	2,	'[{"changed": {"fields": ["text"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}]',	16,	1),
(13,	'2017-08-08 13:53:52.538617+00',	'1',	'Карусель1',	2,	'[{"changed": {"fields": ["text"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}, {"changed": {"fields": ["text"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}, {"changed": {"fields": ["text"], "name": "\u0421\u043b\u0430\u0439\u0434", "object": "CarouselSlide object"}}]',	16,	1),
(14,	'2017-08-08 14:16:22.2319+00',	'2',	'Генплан',	2,	'[{"changed": {"fields": ["content"]}}]',	15,	1),
(15,	'2017-08-08 14:17:03.141241+00',	'3',	'Инфраструктура',	2,	'[{"changed": {"fields": ["content"]}}]',	15,	1);

DROP TABLE IF EXISTS "gallery_category";
CREATE SEQUENCE gallery_category_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."gallery_category" (
    "id" integer DEFAULT nextval('gallery_category_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "title" character varying(1000) NOT NULL,
    "meta_description" character varying(1000) NOT NULL,
    "meta_keywords" character varying(1000) NOT NULL,
    "slug" character varying(50) NOT NULL,
    "file" character varying(100) NOT NULL,
    "content" text NOT NULL,
    CONSTRAINT "gallery_category_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "gallery_category_slug_key" UNIQUE ("slug")
) WITH (oids = false);

CREATE INDEX "gallery_category_slug_e4d9417a_like" ON "public"."gallery_category" USING btree ("slug");


DROP TABLE IF EXISTS "gallery_item";
CREATE SEQUENCE gallery_item_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."gallery_item" (
    "id" integer DEFAULT nextval('gallery_item_id_seq') NOT NULL,
    "title" character varying(1000) NOT NULL,
    "file" character varying(100) NOT NULL,
    "youtube_url" character varying(200) NOT NULL,
    "num" integer NOT NULL,
    "categories_id" integer NOT NULL,
    CONSTRAINT "gallery_item_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "gallery_item_categories_id_b37338af_fk_gallery_category_id" FOREIGN KEY (categories_id) REFERENCES gallery_category(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "gallery_item_09c55841" ON "public"."gallery_item" USING btree ("categories_id");

CREATE INDEX "gallery_item_0fc3cfbc" ON "public"."gallery_item" USING btree ("num");


DROP TABLE IF EXISTS "news_news";
CREATE SEQUENCE news_news_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."news_news" (
    "id" integer DEFAULT nextval('news_news_id_seq') NOT NULL,
    "title" character varying(200) NOT NULL,
    "small_text" character varying(200) NOT NULL,
    "text" text NOT NULL,
    "published_date" timestamptz NOT NULL,
    "file" character varying(100),
    CONSTRAINT "news_news_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "page_carousel";
CREATE SEQUENCE page_carousel_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."page_carousel" (
    "id" integer DEFAULT nextval('page_carousel_id_seq') NOT NULL,
    "title" character varying(255) NOT NULL,
    "template" integer NOT NULL,
    "slug" character varying(50) NOT NULL,
    CONSTRAINT "page_carousel_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "page_carousel_slug_key" UNIQUE ("slug")
) WITH (oids = false);

CREATE INDEX "page_carousel_slug_c2cf1f5a_like" ON "public"."page_carousel" USING btree ("slug");

INSERT INTO "page_carousel" ("id", "title", "template", "slug") VALUES
(1,	'Карусель1',	'0',	'maincarousel');

DROP TABLE IF EXISTS "page_carouselslide";
CREATE SEQUENCE page_carouselslide_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."page_carouselslide" (
    "id" integer DEFAULT nextval('page_carouselslide_id_seq') NOT NULL,
    "text" text NOT NULL,
    "file" character varying(100),
    "num" integer NOT NULL,
    "carousel_id" integer NOT NULL,
    CONSTRAINT "page_carouselslide_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "page_carouselslide_carousel_id_5b660b42_fk_page_carousel_id" FOREIGN KEY (carousel_id) REFERENCES page_carousel(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "page_carouselslide_0fc3cfbc" ON "public"."page_carouselslide" USING btree ("num");

CREATE INDEX "page_carouselslide_22e591b6" ON "public"."page_carouselslide" USING btree ("carousel_id");

INSERT INTO "page_carouselslide" ("id", "text", "file", "num", "carousel_id") VALUES
(2,	'<h1>Новая Усмань</h1>

<p>У красивой реки Усманки царский слуга В. В. Собакин обзавелся землями, получившими прозвание по его фамилии &mdash; &laquo;Собакина поляна&raquo;. В 1598 году основано поселение, которое в исторических документах фигурирует под несколькими названиями: Собакино, Усмань (Собакина) и т. д.</p>',	'',	'0',	1),
(1,	'<h1>Новая Усмань</h1>

<p>У красивой реки Усманки царский слуга В. В. Собакин обзавелся землями, получившими прозвание по его фамилии &mdash; &laquo;Собакина поляна&raquo;. В 1598 году основано поселение, которое в исторических документах фигурирует под несколькими названиями: Собакино, Усмань (Собакина) и т. д.</p>',	'',	'0',	1),
(3,	'<h1>Новая Усмань</h1>

<p>У красивой реки Усманки царский слуга В. В. Собакин обзавелся землями, получившими прозвание по его фамилии &mdash; &laquo;Собакина поляна&raquo;. В 1598 году основано поселение, которое в исторических документах фигурирует под несколькими названиями: Собакино, Усмань (Собакина) и т. д.</p>',	'carousel/5.jpg',	1,	1);

DROP TABLE IF EXISTS "page_menu";
CREATE SEQUENCE page_menu_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."page_menu" (
    "id" integer DEFAULT nextval('page_menu_id_seq') NOT NULL,
    "title" character varying(255) NOT NULL,
    "template" integer NOT NULL,
    "slug" character varying(50) NOT NULL,
    CONSTRAINT "page_menu_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "page_menu_slug_key" UNIQUE ("slug")
) WITH (oids = false);

CREATE INDEX "page_menu_slug_b9590e11_like" ON "public"."page_menu" USING btree ("slug");

INSERT INTO "page_menu" ("id", "title", "template", "slug") VALUES
(1,	'Главное меню',	'0',	'mainmenu');

DROP TABLE IF EXISTS "page_menusection";
CREATE SEQUENCE page_menusection_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."page_menusection" (
    "id" integer DEFAULT nextval('page_menusection_id_seq') NOT NULL,
    "title" character varying(255) NOT NULL,
    "my_order" integer NOT NULL,
    "lft" integer NOT NULL,
    "rght" integer NOT NULL,
    "tree_id" integer NOT NULL,
    "level" integer NOT NULL,
    "menu_id" integer NOT NULL,
    "page_id" integer NOT NULL,
    "parent_id" integer,
    CONSTRAINT "page_menusection_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "page_menusection_menu_id_0d6f0d80_fk_page_menu_id" FOREIGN KEY (menu_id) REFERENCES page_menu(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "page_menusection_page_id_c4a72f08_fk_page_page_id" FOREIGN KEY (page_id) REFERENCES page_page(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "page_menusection_parent_id_2c5e305c_fk_page_menusection_id" FOREIGN KEY (parent_id) REFERENCES page_menusection(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "page_menusection_1a63c800" ON "public"."page_menusection" USING btree ("page_id");

CREATE INDEX "page_menusection_3cfbd988" ON "public"."page_menusection" USING btree ("rght");

CREATE INDEX "page_menusection_656442a0" ON "public"."page_menusection" USING btree ("tree_id");

CREATE INDEX "page_menusection_6be37982" ON "public"."page_menusection" USING btree ("parent_id");

CREATE INDEX "page_menusection_93e25458" ON "public"."page_menusection" USING btree ("menu_id");

CREATE INDEX "page_menusection_c9e9a848" ON "public"."page_menusection" USING btree ("level");

CREATE INDEX "page_menusection_caf7cc51" ON "public"."page_menusection" USING btree ("lft");

INSERT INTO "page_menusection" ("id", "title", "my_order", "lft", "rght", "tree_id", "level", "menu_id", "page_id", "parent_id") VALUES
(1,	'Главная',	'0',	1,	2,	1,	'0',	1,	1,	NULL),
(2,	'Генплан',	1,	1,	2,	2,	'0',	1,	2,	NULL),
(3,	'Инфраструктура',	2,	1,	2,	3,	'0',	1,	3,	NULL),
(4,	'Контакты',	3,	1,	2,	4,	'0',	1,	4,	NULL);

DROP TABLE IF EXISTS "page_page";
CREATE SEQUENCE page_page_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."page_page" (
    "id" integer DEFAULT nextval('page_page_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "in_menus" boolean NOT NULL,
    "title" character varying(1000) NOT NULL,
    "meta_description" character varying(1000) NOT NULL,
    "meta_keywords" character varying(1000) NOT NULL,
    "menu_title" character varying(255),
    "slug" character varying(50) NOT NULL,
    "login_required" boolean NOT NULL,
    "content" text NOT NULL,
    "page_type" integer NOT NULL,
    "redirect_url" character varying(1000) NOT NULL,
    "application" character varying(255) NOT NULL,
    "lft" integer NOT NULL,
    "rght" integer NOT NULL,
    "tree_id" integer NOT NULL,
    "level" integer NOT NULL,
    "carousel_id" integer,
    "parent_id" integer,
    CONSTRAINT "page_page_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "page_page_slug_key" UNIQUE ("slug"),
    CONSTRAINT "page_page_carousel_id_fce125db_fk_page_carousel_id" FOREIGN KEY (carousel_id) REFERENCES page_carousel(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "page_page_parent_id_3d617840_fk_page_page_id" FOREIGN KEY (parent_id) REFERENCES page_page(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "page_page_22e591b6" ON "public"."page_page" USING btree ("carousel_id");

CREATE INDEX "page_page_3cfbd988" ON "public"."page_page" USING btree ("rght");

CREATE INDEX "page_page_656442a0" ON "public"."page_page" USING btree ("tree_id");

CREATE INDEX "page_page_6be37982" ON "public"."page_page" USING btree ("parent_id");

CREATE INDEX "page_page_c9e9a848" ON "public"."page_page" USING btree ("level");

CREATE INDEX "page_page_caf7cc51" ON "public"."page_page" USING btree ("lft");

CREATE INDEX "page_page_slug_d6b7c8ed_like" ON "public"."page_page" USING btree ("slug");

INSERT INTO "page_page" ("id", "created_date", "edited_date", "in_menus", "title", "meta_description", "meta_keywords", "menu_title", "slug", "login_required", "content", "page_type", "redirect_url", "application", "lft", "rght", "tree_id", "level", "carousel_id", "parent_id") VALUES
(1,	'2017-08-03 11:50:21.269818+00',	'2017-08-08 12:53:25.250689+00',	'1',	'Главная',	'',	'',	'',	'main',	'',	'<p>Текст главной</p>',	'0',	'',	'',	1,	2,	1,	'0',	1,	NULL),
(2,	'2017-08-03 11:50:35.901056+00',	'2017-08-08 14:16:22.167982+00',	'1',	'Генплан',	'',	'',	'',	'genplan',	'',	'<p>У красивой реки Усманки царский слуга В.&nbsp;В.&nbsp;Собакин обзавелся землями, получившими прозвание по его фамилии&nbsp;&mdash; &laquo;Собакина поляна&raquo;. В 1598 году основано поселение, которое в исторических документах фигурирует под несколькими названиями: Собакино, Усмань (Собакина) и&nbsp;т.&nbsp;д. Как село основано в&nbsp;<a href="https://ru.wikipedia.org/wiki/1601" title="1601">1601</a>&mdash;<a href="https://ru.wikipedia.org/wiki/1602_%D0%B3%D0%BE%D0%B4" title="1602 год">1602 году</a>&nbsp;и было названо&nbsp;<strong>Собакина Усмань</strong>. В петровское время жители Усмани Собакиной активно участвовали в возведении кораблей. В&nbsp;<a href="https://ru.wikipedia.org/wiki/1746_%D0%B3%D0%BE%D0%B4" title="1746 год">1746 году</a>&nbsp;в селе было 785 дворов и более 2 тысяч жителей. В октябре&nbsp;<a href="https://ru.wikipedia.org/wiki/1781_%D0%B3%D0%BE%D0%B4" title="1781 год">1781 года</a>&nbsp;через Усмань Собакина прошел почтовый&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A2%D1%80%D0%B0%D0%BA%D1%82" title="Тракт">тракт</a>&nbsp;из&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%92%D0%BE%D1%80%D0%BE%D0%BD%D0%B5%D0%B6" title="Воронеж">Воронежа</a>&nbsp;в&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A2%D0%B0%D0%BC%D0%B1%D0%BE%D0%B2" title="Тамбов">Тамбов</a>. В селе была учреждена почтовая станция для отдыха пассажиров и смены лошадей. В&nbsp;<a href="https://ru.wikipedia.org/wiki/1785_%D0%B3%D0%BE%D0%B4" title="1785 год">1785 году</a>&nbsp;была возведена Спасская каменная церковь, а вторая,&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A6%D0%B5%D1%80%D0%BA%D0%BE%D0%B2%D1%8C_%D0%9A%D0%B0%D0%B7%D0%B0%D0%BD%D1%81%D0%BA%D0%BE%D0%B9_%D0%B8%D0%BA%D0%BE%D0%BD%D1%8B_%D0%91%D0%BE%D0%B6%D0%B8%D0%B5%D0%B9_%D0%9C%D0%B0%D1%82%D0%B5%D1%80%D0%B8_(%D0%9D%D0%BE%D0%B2%D0%B0%D1%8F_%D0%A3%D1%81%D0%BC%D0%B0%D0%BD%D1%8C)" title="Церковь Казанской иконы Божией Матери (Новая Усмань)">Казанская</a><sup><a href="https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D0%B2%D0%B0%D1%8F_%D0%A3%D1%81%D0%BC%D0%B0%D0%BD%D1%8C#cite_note-3">[3]</a></sup>, построена в&nbsp;<a href="https://ru.wikipedia.org/wiki/1870_%D0%B3%D0%BE%D0%B4" title="1870 год">1870 году</a>. В&nbsp;<a href="https://ru.wikipedia.org/wiki/1917_%D0%B3%D0%BE%D0%B4" title="1917 год">1917 году</a>&nbsp;в Усмани была установлена Советская власть. В августе&nbsp;<a href="https://ru.wikipedia.org/wiki/1918_%D0%B3%D0%BE%D0%B4" title="1918 год">1918 года</a>&nbsp;здесь вспыхнуло восстание крестьян против&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9F%D1%80%D0%BE%D0%B4%D0%BE%D1%82%D1%80%D1%8F%D0%B4" title="Продотряд">продотрядов</a>, которое было подавлено военной силой. Во время&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B0%D0%B6%D0%B4%D0%B0%D0%BD%D1%81%D0%BA%D0%B0%D1%8F_%D0%B2%D0%BE%D0%B9%D0%BD%D0%B0_%D0%B2_%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8" title="Гражданская война в России">гражданской войны</a>&nbsp;жители села Усмань Собакина сражались против&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%B2%D0%B0%D0%BB%D0%B5%D1%80%D0%B8%D1%8F" title="Кавалерия">конницы</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BC%D0%BE%D0%BD%D1%82%D0%BE%D0%B2,_%D0%9A%D0%BE%D0%BD%D1%81%D1%82%D0%B0%D0%BD%D1%82%D0%B8%D0%BD_%D0%9A%D0%BE%D0%BD%D1%81%D1%82%D0%B0%D0%BD%D1%82%D0%B8%D0%BD%D0%BE%D0%B2%D0%B8%D1%87" title="Мамонтов, Константин Константинович">К.&nbsp;К.&nbsp;Мамонтова</a>,&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%90%D1%82%D0%B0%D0%BC%D0%B0%D0%BD" title="Атаман">атамана</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%A8%D0%BA%D1%83%D1%80%D0%BE,_%D0%90%D0%BD%D0%B4%D1%80%D0%B5%D0%B9_%D0%93%D1%80%D0%B8%D0%B3%D0%BE%D1%80%D1%8C%D0%B5%D0%B2%D0%B8%D1%87" title="Шкуро, Андрей Григорьевич">А.&nbsp;Г.&nbsp;Шкуро</a>, а также принимали участие в сборе средств и теплой одежды для бойцов&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9A%D1%80%D0%B0%D1%81%D0%BD%D0%B0%D1%8F_%D0%90%D1%80%D0%BC%D0%B8%D1%8F" title="Красная Армия">Красной Армии</a>.</p>

<p>В начале&nbsp;<a href="https://ru.wikipedia.org/wiki/1924_%D0%B3%D0%BE%D0%B4" title="1924 год">1924 года</a>&nbsp;в Усмани возникло животноводческое хозяйство, затем мелиоративное хозяйство, птицеводческое хозяйство &laquo;Голосистый кочет&raquo;. В&nbsp;<a href="https://ru.wikipedia.org/wiki/1928_%D0%B3%D0%BE%D0%B4" title="1928 год">1928 году</a>&nbsp;Усмань Собакина стала районным центром и была переименована в&nbsp;<strong>Новую Усмань</strong>. Первое пригородное земельное общество весной&nbsp;<a href="https://ru.wikipedia.org/wiki/1929_%D0%B3%D0%BE%D0%B4" title="1929 год">1929 года</a>&nbsp;объединило все мелкие хозяйства в единый&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BB%D1%85%D0%BE%D0%B7" title="Колхоз">колхоз</a>&nbsp;&laquo;Ленинский путь&raquo;.<sup><a href="https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D0%B2%D0%B0%D1%8F_%D0%A3%D1%81%D0%BC%D0%B0%D0%BD%D1%8C#cite_note-4">[4]</a></sup></p>

<p><a href="https://commons.wikimedia.org/wiki/File:Novaya_Usman_street.JPG?uselang=ru"><img alt="" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Novaya_Usman_street.JPG/250px-Novaya_Usman_street.JPG" style="height:166px; width:250px" /></a></p>

<p>Улица Ленина</p>

<p><a href="https://ru.wikipedia.org/wiki/12_%D0%B0%D0%B2%D0%B3%D1%83%D1%81%D1%82%D0%B0" title="12 августа">12 августа</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/1942_%D0%B3%D0%BE%D0%B4" title="1942 год">1942 года</a>&nbsp;над селом Новая Усмань таранил вражеский истребитель&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%90%D0%B2%D0%B4%D0%B5%D0%B5%D0%B2,_%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80_%D0%A4%D1%91%D0%B4%D0%BE%D1%80%D0%BE%D0%B2%D0%B8%D1%87_(%D0%93%D0%B5%D1%80%D0%BE%D0%B9_%D0%A1%D0%BE%D0%B2%D0%B5%D1%82%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_%D0%A1%D0%BE%D1%8E%D0%B7%D0%B0)" title="Авдеев, Александр Фёдорович (Герой Советского Союза)">Александр Фёдорович Авдеев</a>. Похоронен в Новой Усмани в сквере у здания бывшего райисполкома<sup><a href="https://ru.wikipedia.org/wiki/%D0%9D%D0%BE%D0%B2%D0%B0%D1%8F_%D0%A3%D1%81%D0%BC%D0%B0%D0%BD%D1%8C#cite_note-5">[5]</a></sup>.&nbsp;<a href="https://ru.wikipedia.org/wiki/10_%D1%84%D0%B5%D0%B2%D1%80%D0%B0%D0%BB%D1%8F" title="10 февраля">10 февраля</a>&nbsp;<a href="https://ru.wikipedia.org/wiki/1943_%D0%B3%D0%BE%D0%B4" title="1943 год">1943 года</a>&nbsp;ему посмертно присвоено звание&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%93%D0%B5%D1%80%D0%BE%D0%B8_%D0%A1%D0%BE%D0%B2%D0%B5%D1%82%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_%D0%A1%D0%BE%D1%8E%D0%B7%D0%B0" title="Герои Советского Союза">Героя Советского Союза</a>. Александр Фёдорович награждён&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9E%D1%80%D0%B4%D0%B5%D0%BD_%D0%9B%D0%B5%D0%BD%D0%B8%D0%BD%D0%B0" title="Орден Ленина">орденами Ленина</a>,&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9E%D1%80%D0%B4%D0%B5%D0%BD_%D0%9A%D1%80%D0%B0%D1%81%D0%BD%D0%BE%D0%B3%D0%BE_%D0%97%D0%BD%D0%B0%D0%BC%D0%B5%D0%BD%D0%B8" title="Орден Красного Знамени">Красного Знамени</a>&nbsp;и&nbsp;<a href="https://ru.wikipedia.org/wiki/%D0%9E%D1%80%D0%B4%D0%B5%D0%BD_%D0%9A%D1%80%D0%B0%D1%81%D0%BD%D0%BE%D0%B9_%D0%97%D0%B2%D0%B5%D0%B7%D0%B4%D1%8B" title="Орден Красной Звезды">Красной Звезды</a>. Также из Новой Усмани Герой Социалистического Труда Мануковский Николай Фёдорович (родился 15.10.1926, село 2-я Усмань), звание он получил за внедрение комплексной механизации в выращивании кукурузы.</p>',	'0',	'',	'',	1,	2,	2,	'0',	NULL,	NULL),
(3,	'2017-08-03 11:50:47.225904+00',	'2017-08-08 14:17:03.114835+00',	'1',	'Инфраструктура',	'',	'',	'',	'infrastruktura',	'',	'<p>&nbsp;</p>

<p>Наиболее крупными являются следующие предприятия:</p>

<ul>
	<li>ООО &laquo;ОЛСАМ&raquo;. Осуществляет производство масла подсолнечного рафинированного.</li>
	<li>ООО &laquo;Блеск&raquo;. Специализируется на выпуске зеркал и стеклоизделий толщиной от 4 до 10&nbsp;мм, предоставляет услуги по обработке кромки&nbsp;&mdash; шлифовка, полировка, &laquo;еврокромка&raquo;, нанесение фацета, наклейка различных пленок на зеркала и стеклоизделия, окраска стекла, фьюзинг (спекание стекла), молирование стеклоизделий (гнутье), производство мебельных и художественных витражей.</li>
	<li>ООО &laquo;Формопласт&raquo;. Осуществляет производство тепопласта и подошвы для повседневной обуви.</li>
</ul>

<p><a href="https://commons.wikimedia.org/wiki/File:%D0%91%D0%B5%D1%82%D0%BE%D0%BD_222.JPG?uselang=ru"><img alt="" src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/%D0%91%D0%B5%D1%82%D0%BE%D0%BD_222.JPG/250px-%D0%91%D0%B5%D1%82%D0%BE%D0%BD_222.JPG" style="height:166px; width:250px" /></a></p>

<p>Бетонный завод</p>

<ul>
	<li>Индустриальный технопарк концерна &laquo;КРОСТ&raquo;&quot;</li>
	<li>ООО &quot;МПК &laquo;Петровский&raquo;: производство колбас, копченостей. Существует с 2006 года. Отличается натуральностью сырья и приготовлением колбас по старинным технологиям. Копчение происходит на натуральной стружке и дровах.</li>
</ul>',	'0',	'',	'',	1,	2,	3,	'0',	NULL,	NULL),
(4,	'2017-08-03 11:50:56.148094+00',	'2017-08-03 11:50:56.148138+00',	'1',	'Контакты',	'',	'',	'',	'kontakty',	'',	'',	'0',	'',	'',	1,	2,	4,	'0',	NULL,	NULL);

DROP TABLE IF EXISTS "page_placeholder";
CREATE SEQUENCE page_placeholder_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."page_placeholder" (
    "id" integer DEFAULT nextval('page_placeholder_id_seq') NOT NULL,
    "title" character varying(255) NOT NULL,
    CONSTRAINT "page_placeholder_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

CREATE INDEX "page_placeholder_d5d3db17" ON "public"."page_placeholder" USING btree ("title");

CREATE INDEX "page_placeholder_title_fbe951d3_like" ON "public"."page_placeholder" USING btree ("title");


DROP TABLE IF EXISTS "page_setting";
CREATE SEQUENCE page_setting_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."page_setting" (
    "id" integer DEFAULT nextval('page_setting_id_seq') NOT NULL,
    "phone1" character varying(200) NOT NULL,
    "phone2" character varying(200) NOT NULL,
    "email1" character varying(254) NOT NULL,
    "email2" character varying(254) NOT NULL,
    "maindres" character varying(200) NOT NULL,
    "vk_link" character varying(200) NOT NULL,
    "fb_link" character varying(200) NOT NULL,
    CONSTRAINT "page_setting_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "partners_dealers";
CREATE SEQUENCE partners_dealers_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."partners_dealers" (
    "id" integer DEFAULT nextval('partners_dealers_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "title" character varying(255) NOT NULL,
    "phone_number" character varying(15) NOT NULL,
    "address" text NOT NULL,
    "url" character varying(200) NOT NULL,
    "email" character varying(254) NOT NULL,
    "text" text NOT NULL,
    "show" boolean NOT NULL,
    "file" character varying(100),
    "position" character varying(42) NOT NULL,
    "num" integer NOT NULL,
    "region_id" integer,
    CONSTRAINT "partners_dealers_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "partners_dealers_region_id_1021e63a_fk_partners_regions_id" FOREIGN KEY (region_id) REFERENCES partners_regions(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "partners_dealers_0f442f96" ON "public"."partners_dealers" USING btree ("region_id");


DROP TABLE IF EXISTS "partners_regions";
CREATE SEQUENCE partners_regions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."partners_regions" (
    "id" integer DEFAULT nextval('partners_regions_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "title" character varying(255) NOT NULL,
    "num" integer NOT NULL,
    CONSTRAINT "partners_regions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "promotions_promotions";
CREATE SEQUENCE promotions_promotions_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."promotions_promotions" (
    "id" integer DEFAULT nextval('promotions_promotions_id_seq') NOT NULL,
    "title" character varying(200) NOT NULL,
    "text" text NOT NULL,
    "created_date" timestamptz NOT NULL,
    "published_date" timestamptz NOT NULL,
    "start_date" timestamptz NOT NULL,
    "end_date" timestamptz NOT NULL,
    "main_page" boolean NOT NULL,
    "file" character varying(100),
    CONSTRAINT "promotions_promotions_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "django_session";
CREATE TABLE "public"."django_session" (
    "session_key" character varying(40) NOT NULL,
    "session_data" text NOT NULL,
    "expire_date" timestamptz NOT NULL,
    CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key")
) WITH (oids = false);

CREATE INDEX "django_session_de54fa62" ON "public"."django_session" USING btree ("expire_date");

CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree ("session_key");

INSERT INTO "django_session" ("session_key", "session_data", "expire_date") VALUES
('ljouqug1alkt3lcxhmgz0u4dnv5qfbtm',	'Yjc2MTRjMzcyMmJmNTg0ZDJiYzA3NDE4ODc3ZGZiYzAyNzJlMjhmMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJlYXN5Y2FydCI6eyJpdGVtcyI6e319LCJfYXV0aF91c2VyX2hhc2giOiJmZTJmYjg0MDI2OTYzNDcwMjE0OTk2NjlmMmY2YzMwOGY3MGZiODczIn0=',	'2017-08-17 11:46:21.390476+00'),
('ksbc654wvsa7j16vuuwsdibqtg2xrk7w',	'NTUzMmJlOTdiYjZmODk1YTFlNTIzYjgwOWIwYzBkYTVlMmE5ZTUyMzp7ImVhc3ljYXJ0Ijp7Iml0ZW1zIjp7fX19',	'2017-08-22 10:51:39.629023+00');

DROP TABLE IF EXISTS "shop_category";
CREATE SEQUENCE shop_category_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_category" (
    "id" integer DEFAULT nextval('shop_category_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "title" character varying(1000) NOT NULL,
    "meta_description" character varying(1000) NOT NULL,
    "meta_keywords" character varying(1000) NOT NULL,
    "slug" character varying(50) NOT NULL,
    "file" character varying(100) NOT NULL,
    "content" text NOT NULL,
    "num" integer NOT NULL,
    "lft" integer NOT NULL,
    "rght" integer NOT NULL,
    "tree_id" integer NOT NULL,
    "level" integer NOT NULL,
    "parent_id" integer,
    CONSTRAINT "shop_category_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_category_slug_key" UNIQUE ("slug"),
    CONSTRAINT "shop_category_parent_id_901626c9_fk_shop_category_id" FOREIGN KEY (parent_id) REFERENCES shop_category(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "shop_category_3cfbd988" ON "public"."shop_category" USING btree ("rght");

CREATE INDEX "shop_category_656442a0" ON "public"."shop_category" USING btree ("tree_id");

CREATE INDEX "shop_category_6be37982" ON "public"."shop_category" USING btree ("parent_id");

CREATE INDEX "shop_category_c9e9a848" ON "public"."shop_category" USING btree ("level");

CREATE INDEX "shop_category_caf7cc51" ON "public"."shop_category" USING btree ("lft");

CREATE INDEX "shop_category_slug_4508178e_like" ON "public"."shop_category" USING btree ("slug");


DROP TABLE IF EXISTS "shop_item";
CREATE SEQUENCE shop_item_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_item" (
    "id" integer DEFAULT nextval('shop_item_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "title" character varying(1000) NOT NULL,
    "meta_description" character varying(1000) NOT NULL,
    "meta_keywords" character varying(1000) NOT NULL,
    "slug" character varying(50) NOT NULL,
    "file" character varying(100) NOT NULL,
    "content_small" character varying(800) NOT NULL,
    "content" text NOT NULL,
    "status" boolean NOT NULL,
    "min_offer" character varying(50) NOT NULL,
    "offer" boolean NOT NULL,
    "offer_name1" character varying(200) NOT NULL,
    "offer_name2" character varying(200) NOT NULL,
    "offer_text_price" character varying(200) NOT NULL,
    "offer_text_cost" character varying(200) NOT NULL,
    "offer_text1" character varying(200) NOT NULL,
    "offer_text2" character varying(200) NOT NULL,
    "num" integer NOT NULL,
    CONSTRAINT "shop_item_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_item_slug_key" UNIQUE ("slug")
) WITH (oids = false);

CREATE INDEX "shop_item_bb31eaeb" ON "public"."shop_item" USING btree ("min_offer");

CREATE INDEX "shop_item_min_offer_28df15ed_like" ON "public"."shop_item" USING btree ("min_offer");

CREATE INDEX "shop_item_slug_6410ce1c_like" ON "public"."shop_item" USING btree ("slug");


DROP TABLE IF EXISTS "shop_item_category";
CREATE SEQUENCE shop_item_category_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_item_category" (
    "id" integer DEFAULT nextval('shop_item_category_id_seq') NOT NULL,
    "item_id" integer NOT NULL,
    "category_id" integer NOT NULL,
    CONSTRAINT "shop_item_category_item_id_d7f3495b_uniq" UNIQUE ("item_id", "category_id"),
    CONSTRAINT "shop_item_category_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_item_category_category_id_6b340432_fk_shop_category_id" FOREIGN KEY (category_id) REFERENCES shop_category(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "shop_item_category_item_id_cc9d4819_fk_shop_item_id" FOREIGN KEY (item_id) REFERENCES shop_item(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "shop_item_category_82bfda79" ON "public"."shop_item_category" USING btree ("item_id");

CREATE INDEX "shop_item_category_b583a629" ON "public"."shop_item_category" USING btree ("category_id");


DROP TABLE IF EXISTS "shop_item_image";
CREATE SEQUENCE shop_item_image_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_item_image" (
    "id" integer DEFAULT nextval('shop_item_image_id_seq') NOT NULL,
    "title" character varying(1000) NOT NULL,
    "file" character varying(100) NOT NULL,
    "num" integer NOT NULL,
    "item_variation_id" integer NOT NULL,
    CONSTRAINT "shop_item_image_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_item__item_variation_id_14743851_fk_shop_item_variation_id" FOREIGN KEY (item_variation_id) REFERENCES shop_item_variation(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "shop_item_image_0fc3cfbc" ON "public"."shop_item_image" USING btree ("num");

CREATE INDEX "shop_item_image_d13a33bf" ON "public"."shop_item_image" USING btree ("item_variation_id");


DROP TABLE IF EXISTS "shop_item_variation";
CREATE SEQUENCE shop_item_variation_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_item_variation" (
    "id" integer DEFAULT nextval('shop_item_variation_id_seq') NOT NULL,
    "title" character varying(255) NOT NULL,
    "vendor_code" character varying(255) NOT NULL,
    "default_variation" boolean NOT NULL,
    "stock" integer NOT NULL,
    "stock_text" character varying(255) NOT NULL,
    "price_1" numeric(10,2),
    "price_2" numeric(10,2),
    "num" integer NOT NULL,
    "item_id" integer NOT NULL,
    CONSTRAINT "shop_item_variation_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_item_variation_item_id_97f5a155_fk_shop_item_id" FOREIGN KEY (item_id) REFERENCES shop_item(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "shop_item_variation_0fc3cfbc" ON "public"."shop_item_variation" USING btree ("num");

CREATE INDEX "shop_item_variation_82bfda79" ON "public"."shop_item_variation" USING btree ("item_id");


DROP TABLE IF EXISTS "shop_order";
CREATE SEQUENCE shop_order_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_order" (
    "id" integer DEFAULT nextval('shop_order_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "total_price" numeric(10,2),
    "email" character varying(254) NOT NULL,
    "address" text NOT NULL,
    "phone_number" character varying(128) NOT NULL,
    "customer_id" integer NOT NULL,
    "status_id" integer,
    CONSTRAINT "shop_order_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_order_customer_id_f638df20_fk_auth_user_id" FOREIGN KEY (customer_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "shop_order_status_id_60793dbe_fk_shop_status_id" FOREIGN KEY (status_id) REFERENCES shop_status(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "shop_order_cb24373b" ON "public"."shop_order" USING btree ("customer_id");

CREATE INDEX "shop_order_dc91ed4b" ON "public"."shop_order" USING btree ("status_id");


DROP TABLE IF EXISTS "shop_orderitem";
CREATE SEQUENCE shop_orderitem_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_orderitem" (
    "id" integer DEFAULT nextval('shop_orderitem_id_seq') NOT NULL,
    "created_date" timestamptz NOT NULL,
    "edited_date" timestamptz,
    "title" character varying(255) NOT NULL,
    "cols" integer NOT NULL,
    "price" numeric(10,2),
    "item_id" integer,
    "order_id" integer NOT NULL,
    CONSTRAINT "shop_orderitem_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_orderitem_item_id_f8b42fc5_fk_shop_item_variation_id" FOREIGN KEY (item_id) REFERENCES shop_item_variation(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "shop_orderitem_order_id_2f1b00cf_fk_shop_order_id" FOREIGN KEY (order_id) REFERENCES shop_order(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "shop_orderitem_69dfcb07" ON "public"."shop_orderitem" USING btree ("order_id");

CREATE INDEX "shop_orderitem_82bfda79" ON "public"."shop_orderitem" USING btree ("item_id");


DROP TABLE IF EXISTS "shop_status";
CREATE SEQUENCE shop_status_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_status" (
    "id" integer DEFAULT nextval('shop_status_id_seq') NOT NULL,
    "title" character varying(255) NOT NULL,
    "num" integer NOT NULL,
    "default_status" boolean NOT NULL,
    CONSTRAINT "shop_status_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP TABLE IF EXISTS "shop_userprofile";
CREATE SEQUENCE shop_userprofile_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."shop_userprofile" (
    "id" integer DEFAULT nextval('shop_userprofile_id_seq') NOT NULL,
    "name" character varying(1000) NOT NULL,
    "phone" character varying(1000) NOT NULL,
    "company_name" character varying(1000) NOT NULL,
    "inn" character varying(1000) NOT NULL,
    "city" character varying(1000) NOT NULL,
    "adres" character varying(1000) NOT NULL,
    "user_id" integer NOT NULL,
    CONSTRAINT "shop_userprofile_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "shop_userprofile_user_id_key" UNIQUE ("user_id"),
    CONSTRAINT "shop_userprofile_user_id_f68b553c_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);


DROP TABLE IF EXISTS "taggit_tag";
CREATE SEQUENCE taggit_tag_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."taggit_tag" (
    "id" integer DEFAULT nextval('taggit_tag_id_seq') NOT NULL,
    "name" character varying(100) NOT NULL,
    "slug" character varying(100) NOT NULL,
    CONSTRAINT "taggit_tag_name_key" UNIQUE ("name"),
    CONSTRAINT "taggit_tag_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "taggit_tag_slug_key" UNIQUE ("slug")
) WITH (oids = false);

CREATE INDEX "taggit_tag_name_58eb2ed9_like" ON "public"."taggit_tag" USING btree ("name");

CREATE INDEX "taggit_tag_slug_6be58b2c_like" ON "public"."taggit_tag" USING btree ("slug");


DROP TABLE IF EXISTS "taggit_taggeditem";
CREATE SEQUENCE taggit_taggeditem_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."taggit_taggeditem" (
    "id" integer DEFAULT nextval('taggit_taggeditem_id_seq') NOT NULL,
    "object_id" integer NOT NULL,
    "content_type_id" integer NOT NULL,
    "tag_id" integer NOT NULL,
    CONSTRAINT "taggit_taggeditem_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "taggit_tagge_content_type_id_9957a03c_fk_django_content_type_id" FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE,
    CONSTRAINT "taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id" FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

CREATE INDEX "taggit_taggeditem_417f1b1c" ON "public"."taggit_taggeditem" USING btree ("content_type_id");

CREATE INDEX "taggit_taggeditem_76f094bc" ON "public"."taggit_taggeditem" USING btree ("tag_id");

CREATE INDEX "taggit_taggeditem_af31437c" ON "public"."taggit_taggeditem" USING btree ("object_id");

CREATE INDEX "taggit_taggeditem_content_type_id_196cc965_idx" ON "public"."taggit_taggeditem" USING btree ("content_type_id", "object_id");


DROP TABLE IF EXISTS "user_profile_userprofile";
CREATE SEQUENCE user_profile_userprofile_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."user_profile_userprofile" (
    "id" integer DEFAULT nextval('user_profile_userprofile_id_seq') NOT NULL,
    "city" character varying(100) NOT NULL,
    "user_id" integer NOT NULL,
    CONSTRAINT "user_profile_userprofile_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "user_profile_userprofile_user_id_key" UNIQUE ("user_id"),
    CONSTRAINT "user_profile_userprofile_user_id_84fd5b2a_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED DEFERRABLE
) WITH (oids = false);

INSERT INTO "user_profile_userprofile" ("id", "city", "user_id") VALUES
(1,	'',	1);

-- 2017-08-08 14:35:02.730687+00