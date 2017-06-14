PGDMP                         u            traffic    9.6.3    9.6.3     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            	           1262    17255    traffic    DATABASE     �   CREATE DATABASE traffic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE traffic;
             root    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    17287 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         root    false    3            �            1259    17285    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       root    false    192    3            	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       root    false    191            �            1259    17297    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         root    false    3            �            1259    17295    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       root    false    194    3            	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       root    false    193            �            1259    17279    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         root    false    3            �            1259    17277    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       root    false    190    3            	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       root    false    189            �            1259    17305 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         root    false    3            �            1259    17315    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         root    false    3            �            1259    17313    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       root    false    198    3            	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       root    false    197            �            1259    17303    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       root    false    196    3            	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       root    false    195            �            1259    17323    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         root    false    3            �            1259    17321 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       root    false    200    3            	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       root    false    199            �            1259    17383    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         root    false    3            �            1259    17381    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       root    false    202    3            	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       root    false    201            �            1259    17269    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         root    false    3            �            1259    17267    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       root    false    188    3            	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       root    false    187            �            1259    17258    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         root    false    3            �            1259    17256    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       root    false    186    3            	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       root    false    185            �            1259    17520    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         root    false    3            �            1259    17432    fir_circles    TABLE     +  CREATE TABLE fir_circles (
    "DISTNAM" character varying(50) NOT NULL,
    "DIST" character varying(4) NOT NULL,
    "CIRCLE" character varying(4) NOT NULL,
    "CIRCLENAM" character varying(50) NOT NULL,
    "RANGE" character varying(4) NOT NULL,
    "RANGENAM" character varying(50) NOT NULL
);
    DROP TABLE public.fir_circles;
       public         root    false    3            �            1259    17411    fir_details    TABLE     �  CREATE TABLE fir_details (
    "ACC_ID" character varying(15) NOT NULL,
    "RNG" character varying(5) NOT NULL,
    "CIRCLE_id" character varying(4) NOT NULL,
    "DIST" character varying(5) NOT NULL,
    "PS" character varying(5) NOT NULL,
    "FIRNO" integer NOT NULL,
    "SECTION_id" integer NOT NULL,
    "TIME_OCC" time without time zone NOT NULL,
    "TIME_TYPE" character varying(15) NOT NULL,
    "DATE_OCC" date NOT NULL,
    "PLACE_OCC" character varying(140) NOT NULL,
    "ROAD_id" character varying(50) NOT NULL,
    "ROADNAME" character varying(150) NOT NULL,
    "LOCATION" character varying(140) NOT NULL,
    "CATEGORY" character varying(140) NOT NULL,
    "VEHTYPE1" character varying(15) NOT NULL,
    "TWW1" character varying(15) NOT NULL,
    "RNOV1A" character varying(15) NOT NULL,
    "RNOV1B" character varying(10) NOT NULL,
    "VEHTYPE2" character varying(4) NOT NULL,
    "TWW2" character varying(15) NOT NULL,
    "RNOV2A" character varying(10) NOT NULL,
    "RNOV2B" character varying(4) NOT NULL,
    "SELF_TYPE" character varying(100) NOT NULL,
    "INJURED" integer NOT NULL,
    "INJMALE" integer NOT NULL,
    "INJFEMALE" integer NOT NULL,
    "INJBOY" integer NOT NULL,
    "INJGIRL" integer NOT NULL,
    "KILLED" integer NOT NULL,
    "KILMALE" integer NOT NULL,
    "KILFEMALE" integer NOT NULL,
    "KILBOY" integer NOT NULL,
    "KILGIRL" integer NOT NULL,
    "PEDESTRIAN" integer NOT NULL,
    "ACCTYPE" character varying(20) NOT NULL,
    "ACCID_TYPE" character varying(100) NOT NULL,
    "VICTIM" character varying(100) NOT NULL,
    "DUPL" character varying(15) NOT NULL,
    "PENDING" character varying(15) NOT NULL,
    "DAY_NIGHT" character varying(15) NOT NULL,
    "YEAR" integer NOT NULL,
    "TIME_SLOT" character varying(15) NOT NULL,
    "MONTH" character varying(15) NOT NULL,
    "FN" character varying(15) NOT NULL,
    "ACCAGE" character varying(15) NOT NULL,
    "ACCSEX" character varying(15) NOT NULL,
    "ACCDRUNK" boolean NOT NULL,
    "Intersection" character varying(150) NOT NULL,
    routeno character varying(15) NOT NULL,
    case_status character varying(15) NOT NULL,
    convert_case character varying(15) NOT NULL,
    "BRIEF_FACTS" character varying(500) NOT NULL,
    dri_lic_no character varying(150) NOT NULL,
    dri_name character varying(150) NOT NULL,
    dri_fath character varying(150) NOT NULL,
    dri_sex character varying(15) NOT NULL,
    dri_age character varying(15) NOT NULL,
    dri_add character varying(150) NOT NULL,
    dri_arrest character varying(15) NOT NULL,
    dri_place character varying(150) NOT NULL,
    dri_lic_date_issu date NOT NULL,
    dri_lic_date_upto date NOT NULL,
    dri_lic_status character varying(15) NOT NULL,
    "REMARK" character varying(300) NOT NULL,
    "CONFIRM" character varying(15) NOT NULL,
    "LONGITUDE" character varying(15) NOT NULL,
    "LATITUDE" character varying(15) NOT NULL,
    "CONVERT" character varying(15) NOT NULL,
    "CONVERT_DATE" date NOT NULL,
    "CN_DT" character varying(150) NOT NULL,
    "CONVERT_FN" character varying(150) NOT NULL,
    "BUS_NO" character varying(15) NOT NULL,
    "BLACK_SPOT" character varying(15) NOT NULL,
    "BLACK_SPOT_NO" character varying(15) NOT NULL,
    "FOR_BLK" character varying(15) NOT NULL,
    "STATUS" character varying(15) NOT NULL,
    "F_STATUS" character varying(15) NOT NULL,
    dri_add1 character varying(15) NOT NULL,
    "RIDER_HELMET" character varying(15) NOT NULL,
    "PILLION_HELMET" character varying(15) NOT NULL,
    "STATE" character varying(15) NOT NULL,
    "SCANNED" character varying(15) NOT NULL,
    "HIT_AND_RUN_UPDATE1" character varying(15) NOT NULL,
    CONSTRAINT "fir_details_INJBOY_check" CHECK (("INJBOY" >= 0)),
    CONSTRAINT "fir_details_INJFEMALE_check" CHECK (("INJFEMALE" >= 0)),
    CONSTRAINT "fir_details_INJGIRL_check" CHECK (("INJGIRL" >= 0)),
    CONSTRAINT "fir_details_INJMALE_check" CHECK (("INJMALE" >= 0)),
    CONSTRAINT "fir_details_INJURED_check" CHECK (("INJURED" >= 0)),
    CONSTRAINT "fir_details_KILBOY_check" CHECK (("KILBOY" >= 0)),
    CONSTRAINT "fir_details_KILFEMALE_check" CHECK (("KILFEMALE" >= 0)),
    CONSTRAINT "fir_details_KILGIRL_check" CHECK (("KILGIRL" >= 0)),
    CONSTRAINT "fir_details_KILLED_check" CHECK (("KILLED" >= 0)),
    CONSTRAINT "fir_details_KILMALE_check" CHECK (("KILMALE" >= 0)),
    CONSTRAINT "fir_details_PEDESTRIAN_check" CHECK (("PEDESTRIAN" >= 0)),
    CONSTRAINT "fir_details_YEAR_check" CHECK (("YEAR" >= 0))
);
    DROP TABLE public.fir_details;
       public         root    false    3            �            1259    17439 	   fir_roads    TABLE     �  CREATE TABLE fir_roads (
    "RNG" character varying(5) NOT NULL,
    "DIST" character varying(5) NOT NULL,
    "ROADNAME" character varying(50) NOT NULL,
    "ROAD" integer NOT NULL,
    "PS" character varying(5) NOT NULL,
    "PLACE_OCC" character varying(50) NOT NULL,
    "NEW" character varying(50) NOT NULL,
    "PSNAME" character varying(50) NOT NULL,
    "NEW1" character varying(50) NOT NULL,
    "CIRCLE_id" character varying(4) NOT NULL
);
    DROP TABLE public.fir_roads;
       public         root    false    3            �            1259    17531    fir_sections    TABLE     �   CREATE TABLE fir_sections (
    "SECTION" integer NOT NULL,
    "SECTIONDTL" character varying(50) NOT NULL,
    "ACCTYPE" character varying(5) NOT NULL,
    "ACCTYPEN" character varying(25) NOT NULL
);
     DROP TABLE public.fir_sections;
       public         root    false    3                       2604    17290    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       root    false    191    192    192                       2604    17300    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    193    194    194                       2604    17282    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       root    false    190    189    190                       2604    17308    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       root    false    195    196    196                        2604    17318    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       root    false    198    197    198            !           2604    17326    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    199    200    200            "           2604    17386    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       root    false    201    202    202                       2604    17272    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       root    false    188    187    188                       2604    17261    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       root    false    186    185    186            �          0    17287 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       root    false    192   (�       	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       root    false    191            �          0    17297    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       root    false    194   E�       	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       root    false    193            �          0    17279    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       root    false    190   b�       	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 30, true);
            public       root    false    189            �          0    17305 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       root    false    196   ��        	          0    17315    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       root    false    198   ٶ       	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       root    false    197            	           0    0    auth_user_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_user_id_seq', 1, false);
            public       root    false    195            	          0    17323    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       root    false    200   ��       	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       root    false    199            	          0    17383    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       root    false    202   �        	           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);
            public       root    false    201            �          0    17269    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       root    false    188   0�       !	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);
            public       root    false    187            �          0    17258    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       root    false    186   ��       "	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 19, true);
            public       root    false    185            	          0    17520    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       root    false    206   R�       	          0    17432    fir_circles 
   TABLE DATA               ]   COPY fir_circles ("DISTNAM", "DIST", "CIRCLE", "CIRCLENAM", "RANGE", "RANGENAM") FROM stdin;
    public       root    false    204   o�       	          0    17411    fir_details 
   TABLE DATA               �  COPY fir_details ("ACC_ID", "RNG", "CIRCLE_id", "DIST", "PS", "FIRNO", "SECTION_id", "TIME_OCC", "TIME_TYPE", "DATE_OCC", "PLACE_OCC", "ROAD_id", "ROADNAME", "LOCATION", "CATEGORY", "VEHTYPE1", "TWW1", "RNOV1A", "RNOV1B", "VEHTYPE2", "TWW2", "RNOV2A", "RNOV2B", "SELF_TYPE", "INJURED", "INJMALE", "INJFEMALE", "INJBOY", "INJGIRL", "KILLED", "KILMALE", "KILFEMALE", "KILBOY", "KILGIRL", "PEDESTRIAN", "ACCTYPE", "ACCID_TYPE", "VICTIM", "DUPL", "PENDING", "DAY_NIGHT", "YEAR", "TIME_SLOT", "MONTH", "FN", "ACCAGE", "ACCSEX", "ACCDRUNK", "Intersection", routeno, case_status, convert_case, "BRIEF_FACTS", dri_lic_no, dri_name, dri_fath, dri_sex, dri_age, dri_add, dri_arrest, dri_place, dri_lic_date_issu, dri_lic_date_upto, dri_lic_status, "REMARK", "CONFIRM", "LONGITUDE", "LATITUDE", "CONVERT", "CONVERT_DATE", "CN_DT", "CONVERT_FN", "BUS_NO", "BLACK_SPOT", "BLACK_SPOT_NO", "FOR_BLK", "STATUS", "F_STATUS", dri_add1, "RIDER_HELMET", "PILLION_HELMET", "STATE", "SCANNED", "HIT_AND_RUN_UPDATE1") FROM stdin;
    public       root    false    203   J�       	          0    17439 	   fir_roads 
   TABLE DATA               x   COPY fir_roads ("RNG", "DIST", "ROADNAME", "ROAD", "PS", "PLACE_OCC", "NEW", "PSNAME", "NEW1", "CIRCLE_id") FROM stdin;
    public       root    false    205   g�       		          0    17531    fir_sections 
   TABLE DATA               O   COPY fir_sections ("SECTION", "SECTIONDTL", "ACCTYPE", "ACCTYPEN") FROM stdin;
    public       root    false    207   ��       =           2606    17294    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         root    false    192    192            B           2606    17349 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         root    false    194    194    194            E           2606    17302 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         root    false    194    194            ?           2606    17292    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         root    false    192    192            8           2606    17335 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         root    false    190    190    190            :           2606    17284 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         root    false    190    190            M           2606    17320 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         root    false    198    198            P           2606    17364 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         root    false    198    198    198            G           2606    17310    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         root    false    196    196            S           2606    17328 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         root    false    200    200            V           2606    17378 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         root    false    200    200    200            J           2606    17406     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         root    false    196    196            Y           2606    17392 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         root    false    202    202            3           2606    17276 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         root    false    188    188    188            5           2606    17274 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         root    false    188    188            1           2606    17266 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         root    false    186    186            n           2606    17527 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         root    false    206    206            d           2606    17436    fir_circles fir_circles_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY fir_circles
    ADD CONSTRAINT fir_circles_pkey PRIMARY KEY ("CIRCLE");
 F   ALTER TABLE ONLY public.fir_circles DROP CONSTRAINT fir_circles_pkey;
       public         root    false    204    204            a           2606    17430    fir_details fir_details_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT fir_details_pkey PRIMARY KEY ("ACC_ID");
 F   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT fir_details_pkey;
       public         root    false    203    203            i           2606    17556 #   fir_roads fir_roads_NEW_226dfa92_pk 
   CONSTRAINT     _   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_NEW_226dfa92_pk" PRIMARY KEY ("NEW");
 O   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_NEW_226dfa92_pk";
       public         root    false    205    205            k           2606    17554 %   fir_roads fir_roads_NEW_226dfa92_uniq 
   CONSTRAINT     \   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_NEW_226dfa92_uniq" UNIQUE ("NEW");
 Q   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_NEW_226dfa92_uniq";
       public         root    false    205    205            q           2606    17535    fir_sections fir_sections_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fir_sections
    ADD CONSTRAINT fir_sections_pkey PRIMARY KEY ("SECTION");
 H   ALTER TABLE ONLY public.fir_sections DROP CONSTRAINT fir_sections_pkey;
       public         root    false    207    207            ;           1259    17337    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         root    false    192            @           1259    17350 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         root    false    194            C           1259    17351 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         root    false    194            6           1259    17336 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         root    false    190            K           1259    17366 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         root    false    198            N           1259    17365 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         root    false    198            Q           1259    17380 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         root    false    200            T           1259    17379 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         root    false    200            H           1259    17407     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         root    false    196            W           1259    17403 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         root    false    202            Z           1259    17404 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         root    false    202            l           1259    17529 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         root    false    206            o           1259    17528 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         root    false    206            b           1259    17504     fir_circles_CIRCLE_2d898636_like    INDEX     k   CREATE INDEX "fir_circles_CIRCLE_2d898636_like" ON fir_circles USING btree ("CIRCLE" varchar_pattern_ops);
 6   DROP INDEX public."fir_circles_CIRCLE_2d898636_like";
       public         root    false    204            [           1259    17431     fir_details_ACC_ID_89c435b5_like    INDEX     k   CREATE INDEX "fir_details_ACC_ID_89c435b5_like" ON fir_details USING btree ("ACC_ID" varchar_pattern_ops);
 6   DROP INDEX public."fir_details_ACC_ID_89c435b5_like";
       public         root    false    203            \           1259    17461    fir_details_CIRCLE_id_3040535b    INDEX     X   CREATE INDEX "fir_details_CIRCLE_id_3040535b" ON fir_details USING btree ("CIRCLE_id");
 4   DROP INDEX public."fir_details_CIRCLE_id_3040535b";
       public         root    false    203            ]           1259    17467 #   fir_details_CIRCLE_id_3040535b_like    INDEX     q   CREATE INDEX "fir_details_CIRCLE_id_3040535b_like" ON fir_details USING btree ("CIRCLE_id" varchar_pattern_ops);
 9   DROP INDEX public."fir_details_CIRCLE_id_3040535b_like";
       public         root    false    203            ^           1259    17557    fir_details_ROAD_id_cfb73d85    INDEX     T   CREATE INDEX "fir_details_ROAD_id_cfb73d85" ON fir_details USING btree ("ROAD_id");
 2   DROP INDEX public."fir_details_ROAD_id_cfb73d85";
       public         root    false    203            _           1259    17547    fir_details_SECTION_id_8e90b8a2    INDEX     Z   CREATE INDEX "fir_details_SECTION_id_8e90b8a2" ON fir_details USING btree ("SECTION_id");
 5   DROP INDEX public."fir_details_SECTION_id_8e90b8a2";
       public         root    false    203            e           1259    17585    fir_roads_CIRCLE_id_fd7f620e    INDEX     T   CREATE INDEX "fir_roads_CIRCLE_id_fd7f620e" ON fir_roads USING btree ("CIRCLE_id");
 2   DROP INDEX public."fir_roads_CIRCLE_id_fd7f620e";
       public         root    false    205            f           1259    17586 !   fir_roads_CIRCLE_id_fd7f620e_like    INDEX     m   CREATE INDEX "fir_roads_CIRCLE_id_fd7f620e_like" ON fir_roads USING btree ("CIRCLE_id" varchar_pattern_ops);
 7   DROP INDEX public."fir_roads_CIRCLE_id_fd7f620e_like";
       public         root    false    205            g           1259    17570    fir_roads_NEW_226dfa92_like    INDEX     a   CREATE INDEX "fir_roads_NEW_226dfa92_like" ON fir_roads USING btree ("NEW" varchar_pattern_ops);
 1   DROP INDEX public."fir_roads_NEW_226dfa92_like";
       public         root    false    205            t           2606    17343 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       root    false    2106    194    190            s           2606    17338 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       root    false    194    2111    192            r           2606    17329 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       root    false    188    190    2101            v           2606    17358 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       root    false    198    192    2111            u           2606    17353 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       root    false    2119    196    198            x           2606    17372 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       root    false    2106    190    200            w           2606    17367 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       root    false    2119    196    200            y           2606    17393 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       root    false    188    202    2101            z           2606    17398 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       root    false    196    202    2119            |           2606    17462 @   fir_details fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE";
       public       root    false    2148    204    203            {           2606    17548 C   fir_details fir_details_SECTION_id_8e90b8a2_fk_fir_sections_SECTION    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_SECTION_id_8e90b8a2_fk_fir_sections_SECTION" FOREIGN KEY ("SECTION_id") REFERENCES fir_sections("SECTION") DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_SECTION_id_8e90b8a2_fk_fir_sections_SECTION";
       public       root    false    207    203    2161            }           2606    17587 <   fir_roads fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE    FK CONSTRAINT     �   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE";
       public       root    false    2148    204    205            �      x������ � �      �      x������ � �      �   J  x�]�Mn�0F��)8AE�����BQ$
�ds�2��8���<����ǽ�؎����^J�;��#D��q_lF�R+g�Y��������u<OeP�gh�-^�)��D��������V��cWJRzi�@�	v�Ό%�`u������Q�>���I�d��"H��?>��߳�Ӫ%TzW@����3���੅�o�g�k��%Нl 1�f��ބ���!�^�f����!�)�y���FLgc2'��a�l��nN������Đ��Z�F:��]�8;5��`Z���$"�������^�k���:u��ac!��%��FdU�[K$��� ��	y�      �      x������ � �       	      x������ � �      	      x������ � �      	      x������ � �      �   v   x�M�K�0���0���.l��Ki�΢�R!��o���)����uŁB��Z{�qCc]�Lj�i{���L��d�6��B�#������Ecf�m(�Ɇ��֐�~�8���c���7      �   �  x����n� E����{43l���BM���@���k��,ue��Ŝ3�e��}��S�]�  ��}�PoAmQ��l�D&9��l8l�����F#!g�Wv��~�Z͈�!d��04\Lp�pvf�?��/;v4;�)�f�cz۹E�(��3�&�х����ʛ�~����qעJ��tQ�Yu���:��UK�.qo���q�c��
	�����W�6�)q?6vj��I�%Ţ�p�N>�t���)�5	���r����4�8]�q!�t.F{p�4V.oZ/����,)#�>|X�[]BE�	��i;(�H����r���:S�R0����5�CMaP<��!h0�JM�a�Hq���*�R�3,�������˰z���TL�yd��f���9>6      	      x������ � �      	   �  x���Yr� @��)���- �X�AR95�?�4N<��H���Tx��X�X<��T��2!Yւe0�\C��(�b�����:�_P7� ��hӇ��< :U�`I*K�쫬��;�HhnB�"������
�8;�f;+�g�<u�`��|�<#Ӥ�<��VsG#٘j;��"��=Lx������FUz�BYP��AY�y��:|Zޜ���Z�T���S�֖��-�<����T�x��`u�ƃ�@��G%L���ցQmӀ�A���d:�QI<f���l ��^���u�FJ�b�#�C�	�L�G�?Sک�M��(`�����E������($r�i�7<!K�/����]�Af�����S��>��<l�_��3��L�h�F�#h"�dl�2�'tnO�Px�W菇VP$��2{�gy&�odAv�}��O8C��!4����WM X������2ó;7kI~���b�CEA�"�/]��Z�����2o�B�:���u��VprferF���'<�8c��q�_04�L�5��!�ņ����5���:�`�o���B�A9�n}���tդ�F� %=���G�͠��_����
50g��2IV�q� k7_Ӓz�\hs�Gk���U���(���A�'�M|7Ґی^���\�M^�>u@9�Ũ�H�7�r[X�ֈ�h�Sa����I�]aLMi*U�d��O��?�H�      	      x������ � �      	      x��}ٖ�8����+�t��Z�.[��G�RX�����u��;.6@P���8��*X�8�  �P�{�g��E��~ߚt���<��;x��G#4��d
/@Q�Y�wS�?��ځ�~_�g�����P4�|�/m�f=c���7��f�6����k
��wK ��Me����8��t%�t��ջ~gn�ݐ5�p��+��qUȐ�����s����}��W4�����v����d���go�k���+t��}�/�ߟ�+�%k\g�O���gox�(��T~�]12�p�8���e>�X�׶���I�8Wp�LU۩�@���̆��3P���6vf�]I��3����F�3��pf�ے�$7��/��F���wEQ4�{�i��'2E�5�1r���ƌ��:bv.&�
�2�0�&}������g�c���
��{@�Ɍ�f];�����6|3&���PQ��y�Y2b3�Q8#�����d\���WSt#ƅ��r�(���
����-�Q'��>��A���H1-���i<�ƺQ�en���m�v�\���U�sdum]�@D�H��
�϶W`����`�DW�+��UH�&�Q���KB�5���J�n�¥���I��4�8�CCҤy!�=���v��g��knm�8�$10ɮ\�r�x������i��9-ZM�С(�6�Cx���+���]���W���h�6/SIv�Mә1�+�X�y�+*Zʂ:���Ͽ��V�?��@��5�B�R榾h3�1��!�I�i�
���Q��/����`����@�dMi�̝f�~�*�����(�$Ze�1t3�,�lcI��Ч���1�D2�Q,� ;x�1@$�B_$��f�g�8�H���)�)�i�UÐ�@^[bئ������%D��)M�ԏ�9 �:o��}�Ҝ�$��.�������4�qp��1��wڣR�ƙ~:�%�M5�>��&�4����)�(��j�GK�}��ZBBOHqȭ��� �ZA�Q�`��E2�>�(u��81 v��QA1w�/�|�E|����SϿ��ط� ��U�5E���aw���&�4����N�~�	���M��\
ZC[�(:,^�b�1X�V���1t����>?n��y��a��L�d7��a���m	:��b����F4a�-�����Es�̝hub��3yl�@>��_rH��aqlrmE"K{s��
XZ�As��ӂ�z(S	�+�t*�ćc�8��w�[ϓ��9�K�x���+��7�$�o��U��c��Ɋ�k�0خ�'��4�<�Bs���~�`���g���+`D�%MY�\#4�+i+{�ߒ��������&�+�Ħ�q��T�!��m��W�&�ת�,�]6�w��2�.G��7��Rs��,&�o0��5��%��`+��
zug�
�=�ibM kl�y�Pg�u�W�]���G����9�$��ϲQ��CWp���ޔ�v�bL�c��R��k5]o��&/.
N .!gdp�l�  %Au��3w�ZA�CR�7����!�֠{��ms��ŐRbɖ�C�1<�T�5 =o'{(jRs/�k��t� ݜ��'$�.4�xRD�S�Rh?}����WjJ��a���|9hF�^������۠�i1q����f�{n���#��ͮ�«�-+^����~�/���0W`�A,�C-��d��jJ�-���v��?+\�m�-��X�~�";��,�Y�Ơ-琉����˹{�X��5�L%�q�ᥩɶ6��Iӷz��t�u;S�-C��E;�� d�f�����f7�];��$v��N[�e�]�;	��?�~�oؔ�v5�B;��A5% �.��L�޻z"��Г�Ob��q�Yh�Q�⁔���׾�=E����n);� ���i�3b�!��9�[EY����N8�B�Z:�@��d�c�iː}q%q�Ț)�Ng[�J��ZJe�i�i��&�|/0�YU�2P��z�gޙ�b�0�<�N�Q}g;�~]�F�1��3p۝�bνM�����~bs��X���Ba�	�Q�!�p*��bb@�<��'(IRÐx���kٴ�
"#�M��.�e���L0�
4�_�6�Ye눹�n�ZRWi`�n��vaN��x�v��cI�(�/��V06��F���e<j��Ne�u^A�^4"��֙������D�nt�3w�U�v�Lw�$8���~���
� ������ ,Z�h�0�{�ͫ�8��&��L�dSO�c��KP��L$+������7��������K졡-ۚ�LG��rM���7�������w>��$��a:�ʅ�O!�<4 4��/�J�\�P��d;�N�u�w���x���q��3�e��jk���\�h>*sSS�r�+�j/�Z��ni��A ���ᐞ̈́�Ǟ�]�����B׆�(�JT#&�\A�1U�����2���挻��2���ѽ���F�J��CƁ 	gʻzؚSm �:�4�in���I�3'DɢG׊��a&;�dZ��{óۿ�퐺�WX�آ���r��(�Jv�U�$��KeR�g�?DkD��<�zJb�
��D��kꍎK���	�x�Y0�q� ,�q���{8m�h�o)/YC����mSҾ�������fe����nn�Ue~�tw��`�F�k�J�`�"L{d�D� 7�q��[�K5��#��m]-��d��{G�Dv1CfmB�@g�L��r��,����F���;�Y�5�>��|ڗ 	ݴҿ?a|���j�!����)C��y�Y
�Q�,��+�e����8����mծ�'Se������E���p�����Kߦ��
��/�uj)��軂XYIr�SeQbi��41��#���Z���\�qb�����~��`�D�F#;v��	�sΰ턒�͗*�	�H��}G"�u�a时!/�aܥ9�b9f�c��n�Mz%�3�>��'��q�3��v�V���3�m�iau�
V���[OU��v �W]=��nF^��]�q��.$���b�ZIQ�j�w������pV�g�%/����dǨvv>h���C�7,��a�y�ٕ0�ऴ�5w�r7�Mc���A��h%)eY�3�
�y�m���.0�#���k~1	��:�V]�$bc�v>1���n��4�~��DUߩ}�+`�#����,�z�E��H{!S�d�81+#s��<�f)��@��[m�"��s3�iN�vNi��ǉD}�[ɞN>����X��hF�BC�>Y�W��r�����d�ҫo��7E<�yX9xE}�	��
$ֈ&��i�}�a�]�`╛h�UF�����ڮ5A%{���dك@����H ��k3܋Ta�A�`ߝ�j,=9F��%2�L��3y��w���Q\\�\�:�G�/��`�v�Hn�F�j���|��f�ib@��T$ ��������fG;ln�9�h~nmE@�d�����@2Whk���K|�'�и�hǟ��h;���.�������7ǶJW �l��)&;�@�(�;_V�%9a��/�M���ȹJ�G�V��v]����@f��1c>^��4;�jϑm�+�I�u��)|$Eeh��7y���j��_c�ݾ�鸝_����	���§���pM�η��v!�{��Ot5�����E7y�F[r����=2��}[�-`י+�^]h�S����_ھ��_�U4,��V��UDsJ� �������ym ���gTИ̓��sR��tY��z8ͭ.K��ӫ��=���
r<X�X�P�4�(�|���12�[Lj.*�����&����zښ�zj�9u��k�������p;~6�&}>�Nh(P�[�d\���e���<���Ҧ�C���x��+3�xZ���h7.T�9���t�-���2��]q$uS�`�i���e���~�}� ���M�&�.e,:��>vQQ���U��G͉%ӂmq�5
*@�+�˃k� ֖g=)T�Ngo���F�&�3���:�mE"\L�a���L��x^O-�jِ.�N�w��׵#���� ��|�@Eɶ{r�2[�k� ah&Dx�0`>�J���8~$�6�w,:��LQ�>b�X�0(r    ����k!J�� -b�l�U<ؓ��u'�i�}̀�Z�ݨ��I_x��=�dښ��H'�ر2|�W��+p��Ũ� ��x�o�C���|��
�l�K~�ك�m���굗+;��ۮ�������š��T�0�+-; 6���at� ��� od�������i��H�����ź��OFl��3W`�Y�R�:��4�u�q2s�$2�=�������A�3�(�%�p���(`�H\KnYFcrm���Rv��s�ضl�Ju����
.��`�~��p���$�ae�P��վA'I�7��\���|o"�(F���P�� FJ(YD�a � ��v z�募s���3�K�b�ϣ���ҌP��H��`�^�!"Pi�%� k�!8Y3֪��W�jٕO��O�+���2�D	h���ح���D��\yp�z%p�$Z�����h�o� ���A�~%�r+���O:cq`�!7�pfK�*��h.�QȀ�`=�Hŭq��-	[�{�2F��.p�NPz����A��c���,� �i+�fpP�b�x�ɚ�����M%p�%�� �rvC�1Z�i�w8��w�C ��m�m�P��W����'���wW ��W�jĉ���{����mK�cI��3=Z��m�g~r�s�+دm:}$x�����@D�13�!�XJƀ��E�o�01*��W���B���M"Q�������L=d���#Xg���Mv�h�қ����M�W��}�S(R߈Y5LĹ	אS�R��	���A��+ l7ϐESE1Ёm� ���!bf���!C��(w`�:?u����l��
��I�0�#^;�7�pd�b�J��,�bt}�#��x��h�;T9��B��:�GQ���+M@��_��=
c�|f�����n.$V}�Ȟ�uG�gy�(��`�h&æW��f�Q��mb%y��#WC}^���+�vTg�;m���ѢYe`o�U����
�M-�m�&ΖN���E,4'�ͮ 4��n0h�Ns��Ke���:Ӯ K�h�Ų�g���E������`~ag�T��^
-��M�|���x(�y�L��B���ﮰ�4aiB�����b*��k�����1 ��2�+���iu$Q�O6� �A�棱/<c�P�˥0r��������E��l�؃��ȿ�>(O���2簯�oٗ�B���/ �H
�M�����f��l�0}���~jե-��{q���򉝺��$!Y~���g>�����'�ȣ��/Uj��|5���������H07�4��7�8�yA�n��@
���r��k>���!���Udn�+]�������#�=/���K��� ��'X��.e�d���WWPS�����������c��s�qT�s�k����ܷ_|Mp��pj�iD�9 �d��r�'e {jf�0��rj��-�a�ڧ�O�FMsU}���ւ�wq�)�!NJ�φQ�U�R����(ħ�hh��!(�{�Qm��1N���?H8�	���d��f;(4���|/r_�#�k����n�DH�m�v9���{6��"��OH"���?�^��h�i(��
��8�c*A��:.2�?�8泄*v�<Vw�0��W�=���=@�x�,��?f��6zH�WE�vâ��ْQ��v����IW�̇%���Z��'"��1+�+(N�;Zp��1w7˟Cq�2�.�6q�A��fk��
�u,��9<y�Q��5�B�B	�����y �F|��[Y�l���5Cj����ja�3)�L-|?���F홏:����8�C���E���ę��F+R^ck㓟5��KE��t��Ӿ�(��«#�R�p�H�h��!�Ƚ�4���Fp�}��1[=q�w_�!��%�`����A�4�)��װ'+C���؃�)��Bv�\:�}2�8in.����Q`[�
,�_�'2F�,8[Fq�I�rdc�����H��e5`�W?"�%i��
�=6�x���d�ۗ��5֖ǋ.��F������]�U�GF�/	�Jy^�����^�.��Џm��.��(�>{�>��F�h��mnt;Z�w�4�m0EWC�3�ݥ3��*�n|������5j�P��Q��!jtk���cd�EF�vD�L�|m�1�V_t�)V�pPR�v4��v�*	�M{�^�ҳ<v��HϺJ�}xj\.���~�yW�^ԚQ���>�{�
�l��B����44y���X��ѳ���Y��[��f��i�ā��7s��w��#.+�)-��V ��W<�ĵ�j�k�^)^��sG����J���5�6W�"e�Q3�9<0�:x���;��C �dC��[}C�H�����ڸ�U���`��Kp�5�D��7�:5��G|8N?�=_�Pg� ���v�i��H}��+0Քr �i�<�J���,Ƕ�`}�T� L�rX,n"����ky|������U[ʱ����WxiO}\=9��OU����ª�M���0캂��Eg��Y0>y�����NX�MlP&��#��u�p
�{�|k~��t#<^d��	�c��_|ږ��m�P�|��%qJ�5�X�pF02Y!���F���0�mBD��Bo�*��B���t�[��j�tg*g�D�vDE"�҆-3<Z��@ls��#zR�$�u�J����+�`i�wR�~pb�G�+����g�ڛJ�*���[�������9�)*�^|X��� ���׋��\5�Y3�īH�c�)�8v%L��'v|]���[AK�q[��7챱GhL�]GJ�G_dM:�fO�3�#�
ǔ5{ �i�s��A�{�w��0�$b6d�h�<��w)/�
z^�m��⌹6�%JQ���{����%�F&`��9������%I�{f���#�^}�
9*��Ƣps,��AC`\�ES �?.*�M���4(�-f4�᪶��)�aG�^G�dI0ۼ�QY����J�z����e�*q�p\#�6���鵛z�k�˚B���+H�L���� y�\HL+m�piX+��kٱ��@��50�n��mS\a���Rs����O����׌AgW_>$�FcU϶Ů � �:���δ}�
�'�����q�8F�8T�p&&p�c��e0���Ȕ'G��������Ξ+��<��������+,e��wԟ��X�?*��/��0L��ſT������L��^��gop5��a�(��\ᜋ�Y�	�s0��0p�H�f���X���Q)��q~�J���NF/����NO+H,����n?��8ї����iIMgP�@�h����_���7n-�Dc/��'�*��zX=���%���\0e@�@�)�6@UF8dݘ�P��$�{��m���5*-�+�A���Ֆ��G���.nM;����s-�j��~xs�}Y#�WXvĝz��G?nyA�	��
�':�6r���)���#|���1��?#ǫ���(��2U)G��v7JA��W��c�m�����A\8jӆ�Z	Js^z�K�9�H=�4���p�6�����LjПQ��g$_R��ڜ1��� 9�f�^���4v3'|rX�7<j8������"��Q��Jv0��"P��o��������o�ު�Y�J�	I�l�b������#����Y����H���������hx8H�z�l�\��*a������z䌞Fg;,��$��w����p���O��WK�<��$O��6NSc[b�e��.�sHk���d?�`�AOQ��v�-,�>Ŕ��_ؿ����`��8�=5w�4�����p���py��q1@��-@>3fT�F}���p�;9���Y�q+��lޢ�^E������'Ɍ���lj��1�65�i	���E��̱�V���L�<4��c�%�L7]���W�+�>��'���b�f�%��v1�c��7�٠������F�$Q�Y�Ľ�ލ�uײ͋�P�{N���    ����g�`��A!G�Xr��T
ңE��w� 6}��+��LsS���b7��nB�_���s��Ll$���2��9�!P���<��t�ϙ�:�A/��~�i��l�4��I	�gW��ۤ��t��> ȴ��e>@P��&�I�G]�ǋ$x������8��eF>z�,��9#���/3�&��m��y��b@B��,��j�����ҶΆ��R��KC�Ј��+'�o-�Wl?3�Н�A�K�@	"���ccQ�"����u�K,b�Yw,�*��LsD�������/V�k��}3��g'���P����/ovu�w �3��A:�l���	;���Y=w��WX������pu���O%�GG�����C�ς���>��bmI<��y�L�+�V3��+���f3)�+�6��08/�%�E��E�~�<��{�>a��+���I�8|o�"RE�
�h$��o����^'���
���h��oQ���a�tj��q��.NI��8�~;{�y��w��>We���~!�������?�֒�j���:|�z���_�MQA�`�a`�n�6 �Pd	4�2����J�^��ޥ5Zp�)����w y.��&-��.��
�LZb]Iܗ�E�V>���5��uW��-bf�Q���������fz��ҩ6$�¯i}�g�#�f��P����^2����>ot�9��:W`�/�\����DgG���Z:h��6��%��iR×�o#6ܘ2v����E�#�
��n�o���U�
�,�fu��hn}�,̘u/EJ-�>uF���+@���ڃV�
�`O�h��P�6w�O'��GWx��c���p��d���0l~�-~����%���6ʹl�8��<#����'q�yA
 �B��سV@�+8]$ ������M�J��]��X���j��B����&��(�>9�U�,�v��cW��s��
���X��[bI� �-2{/6Z>I�~x�kĖNߨ����2i�J{�3|ہ�c��0Zl{�e��o}b�u1`���-�MNg����^'��n�.~j�b��_�`��'e�1,Q��p_^8 ��e���`[����_I���lk�lkt��� ��E�jJ��'�E��KQd��/���T�4(/�/��b�J[���1���$<�	40��^;����O�i��һ�g` �Fin���z�0�}����m�s.i48E�Aö-��1x� ���X���"��]E�²�h�|u��<�in��fM��'�{�J�Ճ�}܎Q�A�w83���z���[�{�	]!�b�����6鶝ϝL���v|�|��w|<�� ��4x�	�kg׌��/���U��4Y�_ :P�2���@��$�'�um�i� [.10�f�%�d;+�̪��IJ��p �3���f!��m�����я[���v�z�V��m>Al�D�"'w��x���*Jr����'�+��_H��@�����)�� O���fƞ��05y�29�y����ċo�0&xB��������"Y�Nh+-�0>:Y<TM[U,����o���������!���@��+�����2��}�
|����Jo���k�hL��V%B�\�R`i�����=vU��&W��2�{q��CX��&���J}�M1��������»�`��J���� �W���~����3�wR~�y^A�"jv�u=I2$@�k�2�ZBplҐZ�+�|�uR<�1_��������b۩�ɩ��<�3E�p��~pCu^v����"G�4�e�� ��[U6�9��nv� ⹑l��%~qA�:��W`:$����Ĵ���@�G�޻B-�>y(�ް��ɭP�3��1kID�=����a��m�{�y�r����� ��ưp��盈^>ߴ �:� (\��Y,���-��	�.�T�9R�����c����OF�֠o��fT��!%��t��Wa|B1���[KL�̔￐J-,(_~!�i���O_H�~,�λ���=��K��o?�}v]4O�z ��E	��L�>~��\��/ ��8�o��J-H�*Ker���
��%V%�i/�MKmt�Ȃ,R2���P���~ij ��/�`���>x_�BՈPݱ�-��^� i�k�y�}�Ί�8�����,�থ�V6��<�L��	{ش�v��0�|��1���8{Zc���pW�)px$7d�6�}d�����9>b��ͮ��ȷ��2Z6��2��7{\ǰ�IDZ�'��i�$Ӄ�������<,E�C��������ed;�
��~�Mó��<�?
,q0�T�?�x*��"����=^Ҋ�I)N��%�=#6���[�j��#C���]oAk��?�츱�<v�okajr�
W�C/ƮA\�}�2ű�'�{�!�Ô�$��]�e����\����g�ڱM�f�6��C5H�fG��~,@����W/9	��d���s���Bl������⋑\�;4b)8ÞO����G����z{xD�;\��S,�e3�őЀ�)-s� ������M|���;�a���/lDtr���Ǌi,oT�E>l�8Ne�����c
v�͔oNh.�X4#��;�p��t)����tGĀ�W�h>��]�� Fb�p�l�咏�0�tW��>�Рi���i�M#4�g�6i�shu�\ݭf54:*�q�(Ͱ���ގ�+��Х����nl+�Es��gФ?�M�����sF�ѮW`���>�N�s�7H,e=#�sG��ӥ]Ht�]A��S�+��	�c��UG؏D�}�Q�kQR�-8�nm�p4��@&928 �rwl	��m%"N֘�����{p��F��x�[ֵ��p��7���ѼK�K$����H����{�u�<o�������$�)�ɕL�@��z_䗥��0�ǟ�v Y�w��������%n	��bܢ<�14���A���b�`�C-��/��-Ŀ ֜����9zߎ���G��^�2d�^\#ޕ��
7���P/�ņ�#P�by���i������'��H��=<�S�5� O�ߪ�G2�Tnb�p��d@J�?GL���|B��]L|r��>��rEdG��,ACKN^@�#�+P������������&�6��Je��b�u�Z���k��ܽ�u>�$�v�����O��g��pH�[��cS�G@v7������ G�/�ҋ�5|� �e!7���®P��o /�MJ��l F����A8�%\�mǶg�]Kܻ��ޟO�%,(�j�kJL$�&>�l޿^�&�I+�	rro]t<�\���v�7�V�q�8ЮC/��;C�^;���t��Noa�h�F�.�������ܺT�M�w�(¸��e�d�\��8�6j}�|��&�dw�{{��j��6���Z����f��6�z��+tZ���ho/�X�`ݺE�v� ��/GGܠ@ޫ��#W����~i\	-*h� �"?gsq������F��Z��0*��R����4ڻ�!�~j3
쨹�g�T���=�`W`�՟����ޱ!.�O��"�|W�{P�2MZ�sW(�͜�'ϻ�A<m��������D�HlO]����͒��|p�v�{m���*ז�]T�b�K8��)�3�8	�I`��~H�m4_�}�7ѱq�o?�h���Y�����IQ/7'��ucr5|��5��^=�Z�5���[�F��;�m��=�)3c��uT��p����4�/����h�Zit7�1%���2'��v���ח���y���V�n-B-$�=���JN��N�(��Ԑ�c�A ��j��b�NMs��mGb��f��t��eϑ�u�H�������,\�� �3��8�,`�� tr��.���v{��6m:M<Ԃ����J>�ȷ�h2&r���Hl���o��$bI�)�o��"��H�	G��)30��e��n���T��-f�[i2�t����j�T������?s�SzLz�
:d�����~�N�	�3|��~HjL�� h  ԘL1��MjLPi�ǟRc�8Yv�Oi1�.�Wƛ�� :,Vݛ�� g�ܦ�B�țh����E,�E#��"gM4�ޔ~�7� �B�F������q
G��P��[�F�� W�U���/q��B�z����v��/gw�QYUi>R>��)6B?!@�l�#��������x��:�V2���~��=|-�"o��v��~e��#J4�m�S�L�:��ԑ-�Z�Ž����aew�o�}���+r�����Q~����jj�m���v7_3cXL/1ț��U��y���w}�?���׿�-�g�nX����w�a[~X��*�<����W�#���^}q��$sy�r�Ү#̅�� ���%�*������G|��[*1�K�9��E��`��ڔ���>t�c�}Srh���ég`u���0sL�n2�h[�2��{��a��"�n�U�9��	�܂)�J�#����\��t�ޭ��K����]��&�7�z�4�r�+�3�G�J��-��h��0���մ"@���\��[��ʠ�=c�9��~^;�yژ.�N�8�*����
�n؍n4�m?~�1�6rd��~�n%�"�����ݢ?�q�l�?��_sk��s��;W�r���/S�7�t�J���鸕���%��e���6�׫̻�"�)b�Lٝ�����$���ʹT�����$�6IzEv�;V
���ʼq�rD�Y���v�{C�_�;��iXp�����<��˗��B9�e�kK+�)����g���ԏ��f��̫��{�]��A=쐲g��]c�.2v��% �+ğ?�D�Y:c^ț�C|d+�bq��E�h���^��9|>@�]~���0��=Z"-�>?̆����ކ�>j��W3����	�=��#ٿ�a���C��%��E�W���n����|{7>�r�L�oǢ���UJ�=M���8|�Gإw4��#{�#g�w��^���=-�W-r���)sn����7�>���L�^�0z�ZX���:��s%��F�ۍd��m=� ����gNL;�GKqԎ���L�:��.o�������{ȧM�>�ɞL�kS�r� ��h�&�p��j�N��9��:�5�Ub�S���7�XU�l�6�N�>�/,�H�\���9M/4;�+ĩ��f��ʈ�a�Ł<ِ�>>�Iȸ�DW¤;�Ƙ�넋2aR����׺�\�q��}�+0� ;�D;��jƔ'Gy�E��y~��������� ?��L�������<|�o�rq8ܗG_n_=�SH\�$�T���!�j�8\S��}��kw�,��˪2{A�D�A�U��F��V P���������d�N*Ǎ �6�>�졾�?���4��9]T�p�s�Ή:0�i0A��Ӧ��;4P׶�:�[@8��*���p�f���vJ�m��v�#ZɿA�`�>Z���x��K0�:�c�@j��z7��W��E{�Wx�����I�$�Z�`� ��2��{\ルG���mG�8�l��E��ţm�+�Df��J0���Oĳ��]�,�-�+@K���G|L�]�Ht�]��sgOa��괥�g%���o��Ǐ�f+��      		   o   x�3�42�T�p����������
��2	�����9�=}|\����`awN� �0O��`.�����#Xʍ��1�ч�f93�aX���0-� K��c�;F��� �$,�     