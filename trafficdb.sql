PGDMP         8                u            traffic    9.6.3    9.6.3 �    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           1262    28091    traffic    DATABASE     �   CREATE DATABASE traffic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE traffic;
             root    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    28092 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         root    false    3            �            1259    28095    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       root    false    185    3            
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       root    false    186            �            1259    28097    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         root    false    3            �            1259    28100    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       root    false    3    187            
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       root    false    188            �            1259    28102    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         root    false    3            �            1259    28105    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       root    false    3    189            	
           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       root    false    190            �            1259    28107 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         root    false    3            �            1259    28113    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         root    false    3            �            1259    28116    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       root    false    3    192            

           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       root    false    193            �            1259    28118    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       root    false    3    191            
           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       root    false    194            �            1259    28120    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         root    false    3            �            1259    28123 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       root    false    3    195            
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       root    false    196            �            1259    28125    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         root    false    3            �            1259    28132    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       root    false    3    197            
           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       root    false    198            �            1259    28134    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         root    false    3            �            1259    28137    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       root    false    199    3            
           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       root    false    200            �            1259    28139    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         root    false    3            �            1259    28145    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       root    false    3    201            
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       root    false    202            �            1259    28147    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         root    false    3            �            1259    28153    fir_accid_type    TABLE     0  CREATE TABLE fir_accid_type (
    "SNO" integer NOT NULL,
    "TYPE" character varying(200) NOT NULL,
    "CATEGORY" character varying(100) NOT NULL,
    "CODE" character varying(20) NOT NULL,
    "VICTIM" character varying(50) NOT NULL,
    CONSTRAINT "fir_accid_type_SNO_check" CHECK (("SNO" >= 0))
);
 "   DROP TABLE public.fir_accid_type;
       public         root    false    3            �            1259    28157    fir_circles    TABLE     +  CREATE TABLE fir_circles (
    "DISTNAM" character varying(50) NOT NULL,
    "DIST" character varying(4) NOT NULL,
    "CIRCLE" character varying(4) NOT NULL,
    "CIRCLENAM" character varying(50) NOT NULL,
    "RANGE" character varying(4) NOT NULL,
    "RANGENAM" character varying(50) NOT NULL
);
    DROP TABLE public.fir_circles;
       public         root    false    3            �            1259    28160    fir_details    TABLE       CREATE TABLE fir_details (
    "ACC_ID" character varying(15) NOT NULL,
    "RNG" character varying(5) NOT NULL,
    "CIRCLE_id" character varying(4) NOT NULL,
    "DIST" character varying(5) NOT NULL,
    "PS_id" character varying(50) NOT NULL,
    "FIRNO" integer NOT NULL,
    "SECTION_id" integer NOT NULL,
    "TIME_OCC" character varying(4),
    "TIME_TYPE" character varying(15) NOT NULL,
    "DATE_OCC" date NOT NULL,
    "PLACE_OCC" character varying(140) NOT NULL,
    "ROAD_id" character varying(50) NOT NULL,
    "ROADNAME" character varying(150) NOT NULL,
    "LOCATION_id" integer NOT NULL,
    "CATEGORY" character varying(140),
    "VEHTYPE1_id" character varying(20) NOT NULL,
    "TWW1" character varying(15),
    "RNOV1A" character varying(4),
    "RNOV1B" character varying(4),
    "VEHTYPE2_id" character varying(30) NOT NULL,
    "TWW2" character varying(15),
    "RNOV2A" character varying(4),
    "RNOV2B" character varying(4),
    "SELF_TYPE_id" character varying(20),
    "INJURED" integer,
    "INJMALE" integer,
    "INJFEMALE" integer,
    "INJBOY" integer,
    "INJGIRL" integer,
    "KILLED" integer,
    "KILMALE" integer,
    "KILFEMALE" integer,
    "KILBOY" integer,
    "KILGIRL" integer,
    "PEDESTRIAN" integer,
    "ACCTYPE" character varying(20),
    "ACCID_TYPE_id" integer NOT NULL,
    "VICTIM" character varying(100),
    "DUPL" character varying(15),
    "PENDING" character varying(15),
    "DAY_NIGHT" character varying(15) NOT NULL,
    "YEAR" integer NOT NULL,
    "TIME_SLOT" character varying(15) NOT NULL,
    "MONTH" character varying(15) NOT NULL,
    "FN" character varying(15) NOT NULL,
    "ACCAGE" character varying(15),
    "ACCSEX" character varying(15),
    "ACCDRUNK" boolean NOT NULL,
    "Intersection" character varying(150),
    routeno character varying(15),
    case_status character varying(15),
    convert_case character varying(15),
    "BRIEF_FACTS" character varying(500),
    dri_lic_no character varying(150),
    dri_name character varying(150),
    dri_fath character varying(150),
    dri_sex character varying(15),
    dri_age integer,
    dri_add character varying(150),
    dri_arrest character varying(15),
    dri_place character varying(150),
    dri_lic_date_issu date,
    dri_lic_date_upto date,
    dri_lic_status character varying(15),
    "REMARK" character varying(500),
    "CONFIRM" character varying(15),
    "LONGITUDE" character varying(15) NOT NULL,
    "LATITUDE" character varying(15) NOT NULL,
    "CONVERT" character varying(15) NOT NULL,
    "CONVERT_DATE" date,
    "CN_DT" character varying(150),
    "CONVERT_FN" character varying(150),
    "BUS_NO" character varying(15),
    "BLACK_SPOT" character varying(15),
    "BLACK_SPOT_NO" character varying(15),
    "FOR_BLK" character varying(15),
    "STATUS" character varying(15),
    "F_STATUS" character varying(15),
    dri_add1 character varying(15),
    "RIDER_HELMET" character varying(15),
    "PILLION_HELMET" character varying(15),
    "STATE" character varying(15),
    "SCANNED" character varying(15),
    "HIT_AND_RUN_UPDATE1" character varying(15),
    CONSTRAINT "fir_details_FIRNO_fb0aca30_check" CHECK (("FIRNO" >= 0)),
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
    CONSTRAINT "fir_details_YEAR_check" CHECK (("YEAR" >= 0)),
    CONSTRAINT fir_details_dri_age_6d7e126d_check CHECK ((dri_age >= 0))
);
    DROP TABLE public.fir_details;
       public         root    false    3            �            1259    28179    fir_injured    TABLE     �  CREATE TABLE fir_injured (
    id integer NOT NULL,
    "PS" character varying(5) NOT NULL,
    "FIRNO" integer NOT NULL,
    "YEAR" integer NOT NULL,
    "INJSEX" character varying(15) NOT NULL,
    "INJAGE" character varying(15) NOT NULL,
    "INJTYPE" character varying(5) NOT NULL,
    "ACCID_ID_id" character varying(15) NOT NULL,
    CONSTRAINT "fir_injured_YEAR_check" CHECK (("YEAR" >= 0))
);
    DROP TABLE public.fir_injured;
       public         root    false    3            �            1259    28183    fir_injured_id_seq    SEQUENCE     t   CREATE SEQUENCE fir_injured_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.fir_injured_id_seq;
       public       root    false    3    207            
           0    0    fir_injured_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE fir_injured_id_seq OWNED BY fir_injured.id;
            public       root    false    208            �            1259    28185 
   fir_killed    TABLE     �  CREATE TABLE fir_killed (
    id integer NOT NULL,
    "PS" character varying(5) NOT NULL,
    "FIRNO" integer NOT NULL,
    "YEAR" integer NOT NULL,
    "SEX" character varying(15) NOT NULL,
    "AGE" character varying(15) NOT NULL,
    "TYPE" character varying(20) NOT NULL,
    "ACCID_ID_id" character varying(15) NOT NULL,
    CONSTRAINT "fir_killed_YEAR_check" CHECK (("YEAR" >= 0))
);
    DROP TABLE public.fir_killed;
       public         root    false    3            �            1259    28189    fir_killed_id_seq    SEQUENCE     s   CREATE SEQUENCE fir_killed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.fir_killed_id_seq;
       public       root    false    3    209            
           0    0    fir_killed_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE fir_killed_id_seq OWNED BY fir_killed.id;
            public       root    false    210            �            1259    28191    fir_location    TABLE     �   CREATE TABLE fir_location (
    "SNO" integer NOT NULL,
    "TYPE" character varying(150) NOT NULL,
    "CATEGORY" character varying(100) NOT NULL,
    CONSTRAINT "fir_location_SNO_check" CHECK (("SNO" >= 0))
);
     DROP TABLE public.fir_location;
       public         root    false    3            �            1259    28195    fir_policestation    TABLE     �  CREATE TABLE fir_policestation (
    "DISTNAM" character varying(50) NOT NULL,
    "DIST" character varying(20) NOT NULL,
    "CIRCLENAM" character varying(50) NOT NULL,
    "RANGE" character varying(4) NOT NULL,
    "RANGENAM" character varying(50) NOT NULL,
    "PS" character varying(20) NOT NULL,
    "PSNAME" character varying(100) NOT NULL,
    "CIRCLE_PS" character varying(50) NOT NULL,
    "CIRCLE_id" character varying(4) NOT NULL
);
 %   DROP TABLE public.fir_policestation;
       public         root    false    3            �            1259    28198 	   fir_roads    TABLE     �  CREATE TABLE fir_roads (
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
       public         root    false    3            �            1259    28201    fir_sections    TABLE     �   CREATE TABLE fir_sections (
    "SECTION" integer NOT NULL,
    "SECTIONDTL" character varying(50) NOT NULL,
    "ACCTYPE" character varying(5) NOT NULL,
    "ACCTYPEN" character varying(25) NOT NULL
);
     DROP TABLE public.fir_sections;
       public         root    false    3            �            1259    28204    fir_self_type    TABLE     �   CREATE TABLE fir_self_type (
    "SNO" character varying(20) NOT NULL,
    "CODE" character varying(20) NOT NULL,
    "TYPE" character varying(100) NOT NULL
);
 !   DROP TABLE public.fir_self_type;
       public         root    false    3            �            1259    28207    fir_vehtype1    TABLE     �  CREATE TABLE fir_vehtype1 (
    "VEHTYPE" character varying(20) NOT NULL,
    "VEHDETL" character varying(20) NOT NULL,
    "VEHDTL" character varying(40) NOT NULL,
    "SIMPLE" integer NOT NULL,
    "NONINJ" integer NOT NULL,
    "FATAL" integer NOT NULL,
    "PERINJ" integer NOT NULL,
    "PERKIL" integer NOT NULL,
    "PEDESTRIAN" integer NOT NULL,
    "CARI" integer NOT NULL,
    "CARK" integer NOT NULL,
    "DTCI" integer NOT NULL,
    "DTCK" integer NOT NULL,
    "BLBI" integer NOT NULL,
    "BLBK" integer NOT NULL,
    "BUSI" integer NOT NULL,
    "BUSK" integer NOT NULL,
    "OSBI" integer NOT NULL,
    "OSBK" integer NOT NULL,
    "MBSI" integer NOT NULL,
    "MBSK" integer NOT NULL,
    "TAXI" integer NOT NULL,
    "TAXK" integer NOT NULL,
    "TSRK" integer NOT NULL,
    "TSRI" integer NOT NULL,
    "TWWI" integer NOT NULL,
    "TWWK" integer NOT NULL,
    "MILI" integer NOT NULL,
    "MILK" integer NOT NULL,
    "DLVI" integer NOT NULL,
    "DLVK" integer NOT NULL,
    "TRCI" integer NOT NULL,
    "TRCK" integer NOT NULL,
    "POVI" integer NOT NULL,
    "POVK" integer NOT NULL,
    "AMBI" integer NOT NULL,
    "AMBK" integer NOT NULL,
    "STRI" integer NOT NULL,
    "STRK" integer NOT NULL,
    "TMPI" integer NOT NULL,
    "TMPK" integer NOT NULL,
    "MATI" integer NOT NULL,
    "MATK" integer NOT NULL,
    "TNKI" integer NOT NULL,
    "TNKK" integer NOT NULL,
    "UNKI" integer NOT NULL,
    "UNKK" integer NOT NULL,
    "CYCI" integer NOT NULL,
    "CYCK" integer NOT NULL,
    "TNGI" integer NOT NULL,
    "TNGK" integer NOT NULL,
    "CYRI" integer NOT NULL,
    "CYRK" integer NOT NULL,
    "HDCI" integer NOT NULL,
    "HDCK" integer NOT NULL,
    "BULI" integer NOT NULL,
    "BULK" integer NOT NULL,
    "ANII" integer NOT NULL,
    "ANIK" integer NOT NULL,
    "CRNI" integer NOT NULL,
    "CRNK" integer NOT NULL,
    "UDTI" integer NOT NULL,
    "UDTK" integer NOT NULL,
    "PEDI" integer NOT NULL,
    "PEDK" integer NOT NULL,
    "HTVI" integer NOT NULL,
    "HTVK" integer NOT NULL,
    "SLFI" integer NOT NULL,
    "SLFK" integer NOT NULL,
    "ELTI" integer NOT NULL,
    "ELTK" integer NOT NULL,
    "WLLI" integer NOT NULL,
    "WLLK" integer NOT NULL,
    "PASI" integer NOT NULL,
    "PASK" integer NOT NULL,
    CONSTRAINT "fir_vehtype1_AMBI_5a4b678f_check" CHECK (("AMBI" >= 0)),
    CONSTRAINT "fir_vehtype1_AMBK_b8048434_check" CHECK (("AMBK" >= 0)),
    CONSTRAINT "fir_vehtype1_ANII_aac56e80_check" CHECK (("ANII" >= 0)),
    CONSTRAINT "fir_vehtype1_ANIK_5c4bb31e_check" CHECK (("ANIK" >= 0)),
    CONSTRAINT "fir_vehtype1_BLBI_ec272624_check" CHECK (("BLBI" >= 0)),
    CONSTRAINT "fir_vehtype1_BLBK_1163e560_check" CHECK (("BLBK" >= 0)),
    CONSTRAINT "fir_vehtype1_BULI_8d36e91f_check" CHECK (("BULI" >= 0)),
    CONSTRAINT "fir_vehtype1_BULK_b95bb412_check" CHECK (("BULK" >= 0)),
    CONSTRAINT "fir_vehtype1_BUSI_f5482a48_check" CHECK (("BUSI" >= 0)),
    CONSTRAINT "fir_vehtype1_BUSK_a354f6d9_check" CHECK (("BUSK" >= 0)),
    CONSTRAINT "fir_vehtype1_CARI_16fb5b8d_check" CHECK (("CARI" >= 0)),
    CONSTRAINT "fir_vehtype1_CARK_14a4c2a6_check" CHECK (("CARK" >= 0)),
    CONSTRAINT "fir_vehtype1_CRNI_b5ca1008_check" CHECK (("CRNI" >= 0)),
    CONSTRAINT "fir_vehtype1_CRNK_c9942d73_check" CHECK (("CRNK" >= 0)),
    CONSTRAINT "fir_vehtype1_CYCI_4ad81930_check" CHECK (("CYCI" >= 0)),
    CONSTRAINT "fir_vehtype1_CYCK_407213e2_check" CHECK (("CYCK" >= 0)),
    CONSTRAINT "fir_vehtype1_CYRI_77a52351_check" CHECK (("CYRI" >= 0)),
    CONSTRAINT "fir_vehtype1_CYRK_23b5e7c6_check" CHECK (("CYRK" >= 0)),
    CONSTRAINT "fir_vehtype1_DLVI_2e7b51c0_check" CHECK (("DLVI" >= 0)),
    CONSTRAINT "fir_vehtype1_DLVK_d66d8dcb_check" CHECK (("DLVK" >= 0)),
    CONSTRAINT "fir_vehtype1_DTCI_2a3386ea_check" CHECK (("DTCI" >= 0)),
    CONSTRAINT "fir_vehtype1_DTCK_e58fefd1_check" CHECK (("DTCK" >= 0)),
    CONSTRAINT "fir_vehtype1_ELTI_5061f9a2_check" CHECK (("ELTI" >= 0)),
    CONSTRAINT "fir_vehtype1_ELTK_f02abd20_check" CHECK (("ELTK" >= 0)),
    CONSTRAINT "fir_vehtype1_FATAL_b833ee5d_check" CHECK (("FATAL" >= 0)),
    CONSTRAINT "fir_vehtype1_HDCI_57aa9a1a_check" CHECK (("HDCI" >= 0)),
    CONSTRAINT "fir_vehtype1_HDCK_2741afb8_check" CHECK (("HDCK" >= 0)),
    CONSTRAINT "fir_vehtype1_HTVI_623559b3_check" CHECK (("HTVI" >= 0)),
    CONSTRAINT "fir_vehtype1_HTVK_465d416c_check" CHECK (("HTVK" >= 0)),
    CONSTRAINT "fir_vehtype1_MATI_71feae30_check" CHECK (("MATI" >= 0)),
    CONSTRAINT "fir_vehtype1_MATK_90224f14_check" CHECK (("MATK" >= 0)),
    CONSTRAINT "fir_vehtype1_MBSI_be71edce_check" CHECK (("MBSI" >= 0)),
    CONSTRAINT "fir_vehtype1_MBSK_101ad22b_check" CHECK (("MBSK" >= 0)),
    CONSTRAINT "fir_vehtype1_MILI_3c112167_check" CHECK (("MILI" >= 0)),
    CONSTRAINT "fir_vehtype1_MILK_2a699b4c_check" CHECK (("MILK" >= 0)),
    CONSTRAINT "fir_vehtype1_NONINJ_0db0d44a_check" CHECK (("NONINJ" >= 0)),
    CONSTRAINT "fir_vehtype1_OSBI_e40878ad_check" CHECK (("OSBI" >= 0)),
    CONSTRAINT "fir_vehtype1_OSBK_c81b9e5c_check" CHECK (("OSBK" >= 0)),
    CONSTRAINT "fir_vehtype1_PASI_f59f9265_check" CHECK (("PASI" >= 0)),
    CONSTRAINT "fir_vehtype1_PASK_ea457a55_check" CHECK (("PASK" >= 0)),
    CONSTRAINT "fir_vehtype1_PEDESTRIAN_4723570e_check" CHECK (("PEDESTRIAN" >= 0)),
    CONSTRAINT "fir_vehtype1_PEDI_023af736_check" CHECK (("PEDI" >= 0)),
    CONSTRAINT "fir_vehtype1_PEDK_52fcc01d_check" CHECK (("PEDK" >= 0)),
    CONSTRAINT "fir_vehtype1_PERINJ_856d21ef_check" CHECK (("PERINJ" >= 0)),
    CONSTRAINT "fir_vehtype1_PERKIL_6cd1ad0e_check" CHECK (("PERKIL" >= 0)),
    CONSTRAINT "fir_vehtype1_POVI_cceb16dd_check" CHECK (("POVI" >= 0)),
    CONSTRAINT "fir_vehtype1_POVK_7ac4fb84_check" CHECK (("POVK" >= 0)),
    CONSTRAINT "fir_vehtype1_SIMPLE_c2aace8b_check" CHECK (("SIMPLE" >= 0)),
    CONSTRAINT "fir_vehtype1_SLFI_dbc85299_check" CHECK (("SLFI" >= 0)),
    CONSTRAINT "fir_vehtype1_SLFK_b7b432db_check" CHECK (("SLFK" >= 0)),
    CONSTRAINT "fir_vehtype1_STRI_2614535c_check" CHECK (("STRI" >= 0)),
    CONSTRAINT "fir_vehtype1_STRK_9ce1f6c1_check" CHECK (("STRK" >= 0)),
    CONSTRAINT "fir_vehtype1_TAXI_52622d4a_check" CHECK (("TAXI" >= 0)),
    CONSTRAINT "fir_vehtype1_TAXK_18c38c23_check" CHECK (("TAXK" >= 0)),
    CONSTRAINT "fir_vehtype1_TMPI_e2af358b_check" CHECK (("TMPI" >= 0)),
    CONSTRAINT "fir_vehtype1_TMPK_c802bf04_check" CHECK (("TMPK" >= 0)),
    CONSTRAINT "fir_vehtype1_TNGI_57332fc3_check" CHECK (("TNGI" >= 0)),
    CONSTRAINT "fir_vehtype1_TNGK_07a1f2df_check" CHECK (("TNGK" >= 0)),
    CONSTRAINT "fir_vehtype1_TNKI_f4d3d74d_check" CHECK (("TNKI" >= 0)),
    CONSTRAINT "fir_vehtype1_TNKK_c2e5868d_check" CHECK (("TNKK" >= 0)),
    CONSTRAINT "fir_vehtype1_TRCI_13924509_check" CHECK (("TRCI" >= 0)),
    CONSTRAINT "fir_vehtype1_TRCK_8d657b02_check" CHECK (("TRCK" >= 0)),
    CONSTRAINT "fir_vehtype1_TSRI_91f9193b_check" CHECK (("TSRI" >= 0)),
    CONSTRAINT "fir_vehtype1_TSRK_eb0fc9ab_check" CHECK (("TSRK" >= 0)),
    CONSTRAINT "fir_vehtype1_TWWI_cbcf886e_check" CHECK (("TWWI" >= 0)),
    CONSTRAINT "fir_vehtype1_TWWK_0bcb3386_check" CHECK (("TWWK" >= 0)),
    CONSTRAINT "fir_vehtype1_UDTI_e1c9dc5f_check" CHECK (("UDTI" >= 0)),
    CONSTRAINT "fir_vehtype1_UDTK_48984d0d_check" CHECK (("UDTK" >= 0)),
    CONSTRAINT "fir_vehtype1_UNKI_bec95714_check" CHECK (("UNKI" >= 0)),
    CONSTRAINT "fir_vehtype1_UNKK_cc09af42_check" CHECK (("UNKK" >= 0)),
    CONSTRAINT "fir_vehtype1_WLLI_ed4e0aaa_check" CHECK (("WLLI" >= 0)),
    CONSTRAINT "fir_vehtype1_WLLK_e27b900d_check" CHECK (("WLLK" >= 0))
);
     DROP TABLE public.fir_vehtype1;
       public         root    false    3            �            1259    28282    fir_vehtype2    TABLE     �  CREATE TABLE fir_vehtype2 (
    "VEHTYPE" character varying(30) NOT NULL,
    "VEHDETL" character varying(20) NOT NULL,
    "VEHDTL" character varying(40) NOT NULL,
    "SIMPLE" integer NOT NULL,
    "NONINJ" integer NOT NULL,
    "FATAL" integer NOT NULL,
    "PERINJ" integer NOT NULL,
    "PERKIL" integer NOT NULL,
    "PEDESTRIAN" integer NOT NULL,
    "CARI" integer NOT NULL,
    "CARK" integer NOT NULL,
    "DTCI" integer NOT NULL,
    "DTCK" integer NOT NULL,
    "BLBI" integer NOT NULL,
    "BLBK" integer NOT NULL,
    "BUSI" integer NOT NULL,
    "BUSK" integer NOT NULL,
    "OSBI" integer NOT NULL,
    "OSBK" integer NOT NULL,
    "MBSI" integer NOT NULL,
    "MBSK" integer NOT NULL,
    "TAXI" integer NOT NULL,
    "TAXK" integer NOT NULL,
    "TSRI" integer NOT NULL,
    "TSRK" integer NOT NULL,
    "TWWI" integer NOT NULL,
    "TWWK" integer NOT NULL,
    "MILI" integer NOT NULL,
    "MILK" integer NOT NULL,
    "DLVI" integer NOT NULL,
    "DLVK" integer NOT NULL,
    "TRCI" integer NOT NULL,
    "TRCK" integer NOT NULL,
    "POVI" integer NOT NULL,
    "POVK" integer NOT NULL,
    "AMBI" integer NOT NULL,
    "AMBK" integer NOT NULL,
    "STRI" integer NOT NULL,
    "STRK" integer NOT NULL,
    "TMPI" integer NOT NULL,
    "TMPK" integer NOT NULL,
    "CYCI" integer NOT NULL,
    "CYRI" integer NOT NULL,
    "CYRK" integer NOT NULL,
    "HDCI" integer NOT NULL,
    "HDCK" integer NOT NULL,
    "BULI" integer NOT NULL,
    "BULK" integer NOT NULL,
    "ANII" integer NOT NULL,
    "ANIK" integer NOT NULL,
    "CRNI" integer NOT NULL,
    "CRNK" integer NOT NULL,
    "UDTI" integer NOT NULL,
    "UDTK" integer NOT NULL,
    "PEDI" integer NOT NULL,
    "PEDK" integer NOT NULL,
    "HTVI" integer NOT NULL,
    "HTVK" integer NOT NULL,
    "SLFI" integer NOT NULL,
    "SLFK" integer NOT NULL,
    "ELTI" integer NOT NULL,
    "ELTK" integer NOT NULL,
    "WLLI" integer NOT NULL,
    "WLLK" integer NOT NULL,
    "PASI" integer NOT NULL,
    "PASK" integer NOT NULL,
    "CYCK" integer NOT NULL,
    "MATI" integer NOT NULL,
    "MATK" integer NOT NULL,
    "TNGI" integer NOT NULL,
    "TNGK" integer NOT NULL,
    "TNKI" integer NOT NULL,
    "TNKK" integer NOT NULL,
    "UNKI" integer NOT NULL,
    "UNKK" integer NOT NULL,
    CONSTRAINT "fir_vehtype2_AMBI_dbd9dd74_check" CHECK (("AMBI" >= 0)),
    CONSTRAINT "fir_vehtype2_AMBK_4b430505_check" CHECK (("AMBK" >= 0)),
    CONSTRAINT "fir_vehtype2_ANII_09bb5c4f_check" CHECK (("ANII" >= 0)),
    CONSTRAINT "fir_vehtype2_ANIK_e5067919_check" CHECK (("ANIK" >= 0)),
    CONSTRAINT "fir_vehtype2_BLBI_241805f8_check" CHECK (("BLBI" >= 0)),
    CONSTRAINT "fir_vehtype2_BLBK_26d5c741_check" CHECK (("BLBK" >= 0)),
    CONSTRAINT "fir_vehtype2_BULI_ae8dcad8_check" CHECK (("BULI" >= 0)),
    CONSTRAINT "fir_vehtype2_BULK_f29e73e9_check" CHECK (("BULK" >= 0)),
    CONSTRAINT "fir_vehtype2_BUSI_8039b9b9_check" CHECK (("BUSI" >= 0)),
    CONSTRAINT "fir_vehtype2_BUSK_ae5c70f0_check" CHECK (("BUSK" >= 0)),
    CONSTRAINT "fir_vehtype2_CARI_61771f26_check" CHECK (("CARI" >= 0)),
    CONSTRAINT "fir_vehtype2_CARK_7c2f7bd7_check" CHECK (("CARK" >= 0)),
    CONSTRAINT "fir_vehtype2_CRNI_dd2982fd_check" CHECK (("CRNI" >= 0)),
    CONSTRAINT "fir_vehtype2_CRNK_07083681_check" CHECK (("CRNK" >= 0)),
    CONSTRAINT "fir_vehtype2_CYCI_2e9bd09c_check" CHECK (("CYCI" >= 0)),
    CONSTRAINT "fir_vehtype2_CYCK_3bfa8f7d_check" CHECK (("CYCK" >= 0)),
    CONSTRAINT "fir_vehtype2_CYRI_4855fd8f_check" CHECK (("CYRI" >= 0)),
    CONSTRAINT "fir_vehtype2_CYRK_e556d5ac_check" CHECK (("CYRK" >= 0)),
    CONSTRAINT "fir_vehtype2_DLVI_0b43f419_check" CHECK (("DLVI" >= 0)),
    CONSTRAINT "fir_vehtype2_DLVK_7fc12c81_check" CHECK (("DLVK" >= 0)),
    CONSTRAINT "fir_vehtype2_DTCI_e09e9a6e_check" CHECK (("DTCI" >= 0)),
    CONSTRAINT "fir_vehtype2_DTCK_8ed42ae5_check" CHECK (("DTCK" >= 0)),
    CONSTRAINT "fir_vehtype2_ELTI_12feb419_check" CHECK (("ELTI" >= 0)),
    CONSTRAINT "fir_vehtype2_ELTK_88d8a314_check" CHECK (("ELTK" >= 0)),
    CONSTRAINT "fir_vehtype2_FATAL_d0c8334f_check" CHECK (("FATAL" >= 0)),
    CONSTRAINT "fir_vehtype2_HDCI_14a97cf1_check" CHECK (("HDCI" >= 0)),
    CONSTRAINT "fir_vehtype2_HDCK_b3c7973e_check" CHECK (("HDCK" >= 0)),
    CONSTRAINT "fir_vehtype2_HTVI_162cc755_check" CHECK (("HTVI" >= 0)),
    CONSTRAINT "fir_vehtype2_HTVK_5c2562fe_check" CHECK (("HTVK" >= 0)),
    CONSTRAINT "fir_vehtype2_MATI_3bb7fd5c_check" CHECK (("MATI" >= 0)),
    CONSTRAINT "fir_vehtype2_MATK_81896769_check" CHECK (("MATK" >= 0)),
    CONSTRAINT "fir_vehtype2_MBSI_d8703383_check" CHECK (("MBSI" >= 0)),
    CONSTRAINT "fir_vehtype2_MBSK_53620702_check" CHECK (("MBSK" >= 0)),
    CONSTRAINT "fir_vehtype2_MILI_12947bcd_check" CHECK (("MILI" >= 0)),
    CONSTRAINT "fir_vehtype2_MILK_9482a8e5_check" CHECK (("MILK" >= 0)),
    CONSTRAINT "fir_vehtype2_NONINJ_f8933739_check" CHECK (("NONINJ" >= 0)),
    CONSTRAINT "fir_vehtype2_OSBI_059994e4_check" CHECK (("OSBI" >= 0)),
    CONSTRAINT "fir_vehtype2_OSBK_28522f6f_check" CHECK (("OSBK" >= 0)),
    CONSTRAINT "fir_vehtype2_PASI_8a32764d_check" CHECK (("PASI" >= 0)),
    CONSTRAINT "fir_vehtype2_PASK_70641e00_check" CHECK (("PASK" >= 0)),
    CONSTRAINT "fir_vehtype2_PEDESTRIAN_6483e20c_check" CHECK (("PEDESTRIAN" >= 0)),
    CONSTRAINT "fir_vehtype2_PEDI_90c59aea_check" CHECK (("PEDI" >= 0)),
    CONSTRAINT "fir_vehtype2_PEDK_d899425e_check" CHECK (("PEDK" >= 0)),
    CONSTRAINT "fir_vehtype2_PERINJ_66b8f191_check" CHECK (("PERINJ" >= 0)),
    CONSTRAINT "fir_vehtype2_PERKIL_4093ee98_check" CHECK (("PERKIL" >= 0)),
    CONSTRAINT "fir_vehtype2_POVI_77d8b3e3_check" CHECK (("POVI" >= 0)),
    CONSTRAINT "fir_vehtype2_POVK_68f0ffcb_check" CHECK (("POVK" >= 0)),
    CONSTRAINT "fir_vehtype2_SIMPLE_16a5a31b_check" CHECK (("SIMPLE" >= 0)),
    CONSTRAINT "fir_vehtype2_SLFI_1c7136ca_check" CHECK (("SLFI" >= 0)),
    CONSTRAINT "fir_vehtype2_SLFK_7fdd14f4_check" CHECK (("SLFK" >= 0)),
    CONSTRAINT "fir_vehtype2_STRI_5940daf8_check" CHECK (("STRI" >= 0)),
    CONSTRAINT "fir_vehtype2_STRK_ef8a2712_check" CHECK (("STRK" >= 0)),
    CONSTRAINT "fir_vehtype2_TAXI_64445e48_check" CHECK (("TAXI" >= 0)),
    CONSTRAINT "fir_vehtype2_TAXK_25d1fa18_check" CHECK (("TAXK" >= 0)),
    CONSTRAINT "fir_vehtype2_TMPI_76742bd7_check" CHECK (("TMPI" >= 0)),
    CONSTRAINT "fir_vehtype2_TMPK_37b1b912_check" CHECK (("TMPK" >= 0)),
    CONSTRAINT "fir_vehtype2_TNGI_ee5abb11_check" CHECK (("TNGI" >= 0)),
    CONSTRAINT "fir_vehtype2_TNGK_714d00d9_check" CHECK (("TNGK" >= 0)),
    CONSTRAINT "fir_vehtype2_TNKI_af9b53f4_check" CHECK (("TNKI" >= 0)),
    CONSTRAINT "fir_vehtype2_TNKK_ede13969_check" CHECK (("TNKK" >= 0)),
    CONSTRAINT "fir_vehtype2_TRCI_85047142_check" CHECK (("TRCI" >= 0)),
    CONSTRAINT "fir_vehtype2_TRCK_fa000ba4_check" CHECK (("TRCK" >= 0)),
    CONSTRAINT "fir_vehtype2_TSRI_2a77a831_check" CHECK (("TSRI" >= 0)),
    CONSTRAINT "fir_vehtype2_TSRK_5c5c388f_check" CHECK (("TSRK" >= 0)),
    CONSTRAINT "fir_vehtype2_TWWI_d32c799c_check" CHECK (("TWWI" >= 0)),
    CONSTRAINT "fir_vehtype2_TWWK_060d0dd3_check" CHECK (("TWWK" >= 0)),
    CONSTRAINT "fir_vehtype2_UDTI_5a489059_check" CHECK (("UDTI" >= 0)),
    CONSTRAINT "fir_vehtype2_UDTK_72e876ca_check" CHECK (("UDTK" >= 0)),
    CONSTRAINT "fir_vehtype2_UNKI_bfbac418_check" CHECK (("UNKI" >= 0)),
    CONSTRAINT "fir_vehtype2_UNKK_c8a40c70_check" CHECK (("UNKK" >= 0)),
    CONSTRAINT "fir_vehtype2_WLLI_033ea2f8_check" CHECK (("WLLI" >= 0)),
    CONSTRAINT "fir_vehtype2_WLLK_4303df50_check" CHECK (("WLLK" >= 0))
);
     DROP TABLE public.fir_vehtype2;
       public         root    false    3            >           2604    28357    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       root    false    186    185            ?           2604    28358    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    188    187            @           2604    28359    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       root    false    190    189            A           2604    28360    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       root    false    194    191            B           2604    28361    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       root    false    193    192            C           2604    28362    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    196    195            D           2604    28363    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       root    false    198    197            F           2604    28364    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       root    false    200    199            G           2604    28365    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       root    false    202    201            W           2604    28366    fir_injured id    DEFAULT     b   ALTER TABLE ONLY fir_injured ALTER COLUMN id SET DEFAULT nextval('fir_injured_id_seq'::regclass);
 =   ALTER TABLE public.fir_injured ALTER COLUMN id DROP DEFAULT;
       public       root    false    208    207            Y           2604    28367    fir_killed id    DEFAULT     `   ALTER TABLE ONLY fir_killed ALTER COLUMN id SET DEFAULT nextval('fir_killed_id_seq'::regclass);
 <   ALTER TABLE public.fir_killed ALTER COLUMN id DROP DEFAULT;
       public       root    false    210    209            �	          0    28092 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       root    false    185   E      
           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       root    false    186            �	          0    28097    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       root    false    187   (E      
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       root    false    188            �	          0    28102    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       root    false    189   EE      
           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 54, true);
            public       root    false    190            �	          0    28107 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       root    false    191   }G      �	          0    28113    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       root    false    192   �H      
           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       root    false    193            
           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 2, true);
            public       root    false    194            �	          0    28120    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       root    false    195   �H      
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       root    false    196            �	          0    28125    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       root    false    197   �H      
           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);
            public       root    false    198            �	          0    28134    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       root    false    199   �H      
           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);
            public       root    false    200            �	          0    28139    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       root    false    201   �I      
           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 62, true);
            public       root    false    202            �	          0    28147    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       root    false    203   �M      �	          0    28153    fir_accid_type 
   TABLE DATA               N   COPY fir_accid_type ("SNO", "TYPE", "CATEGORY", "CODE", "VICTIM") FROM stdin;
    public       root    false    204   �O      �	          0    28157    fir_circles 
   TABLE DATA               ]   COPY fir_circles ("DISTNAM", "DIST", "CIRCLE", "CIRCLENAM", "RANGE", "RANGENAM") FROM stdin;
    public       root    false    205   .S      �	          0    28160    fir_details 
   TABLE DATA                 COPY fir_details ("ACC_ID", "RNG", "CIRCLE_id", "DIST", "PS_id", "FIRNO", "SECTION_id", "TIME_OCC", "TIME_TYPE", "DATE_OCC", "PLACE_OCC", "ROAD_id", "ROADNAME", "LOCATION_id", "CATEGORY", "VEHTYPE1_id", "TWW1", "RNOV1A", "RNOV1B", "VEHTYPE2_id", "TWW2", "RNOV2A", "RNOV2B", "SELF_TYPE_id", "INJURED", "INJMALE", "INJFEMALE", "INJBOY", "INJGIRL", "KILLED", "KILMALE", "KILFEMALE", "KILBOY", "KILGIRL", "PEDESTRIAN", "ACCTYPE", "ACCID_TYPE_id", "VICTIM", "DUPL", "PENDING", "DAY_NIGHT", "YEAR", "TIME_SLOT", "MONTH", "FN", "ACCAGE", "ACCSEX", "ACCDRUNK", "Intersection", routeno, case_status, convert_case, "BRIEF_FACTS", dri_lic_no, dri_name, dri_fath, dri_sex, dri_age, dri_add, dri_arrest, dri_place, dri_lic_date_issu, dri_lic_date_upto, dri_lic_status, "REMARK", "CONFIRM", "LONGITUDE", "LATITUDE", "CONVERT", "CONVERT_DATE", "CN_DT", "CONVERT_FN", "BUS_NO", "BLACK_SPOT", "BLACK_SPOT_NO", "FOR_BLK", "STATUS", "F_STATUS", dri_add1, "RIDER_HELMET", "PILLION_HELMET", "STATE", "SCANNED", "HIT_AND_RUN_UPDATE1") FROM stdin;
    public       root    false    206   	V      �	          0    28179    fir_injured 
   TABLE DATA               g   COPY fir_injured (id, "PS", "FIRNO", "YEAR", "INJSEX", "INJAGE", "INJTYPE", "ACCID_ID_id") FROM stdin;
    public       root    false    207   AY      
           0    0    fir_injured_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('fir_injured_id_seq', 11, true);
            public       root    false    208            �	          0    28185 
   fir_killed 
   TABLE DATA               ]   COPY fir_killed (id, "PS", "FIRNO", "YEAR", "SEX", "AGE", "TYPE", "ACCID_ID_id") FROM stdin;
    public       root    false    209   �Y      
           0    0    fir_killed_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('fir_killed_id_seq', 11, true);
            public       root    false    210            �	          0    28191    fir_location 
   TABLE DATA               :   COPY fir_location ("SNO", "TYPE", "CATEGORY") FROM stdin;
    public       root    false    211   �Z      �	          0    28195    fir_policestation 
   TABLE DATA               �   COPY fir_policestation ("DISTNAM", "DIST", "CIRCLENAM", "RANGE", "RANGENAM", "PS", "PSNAME", "CIRCLE_PS", "CIRCLE_id") FROM stdin;
    public       root    false    212   `[      �	          0    28198 	   fir_roads 
   TABLE DATA               x   COPY fir_roads ("RNG", "DIST", "ROADNAME", "ROAD", "PS", "PLACE_OCC", "NEW", "PSNAME", "NEW1", "CIRCLE_id") FROM stdin;
    public       root    false    213   Gl      �	          0    28201    fir_sections 
   TABLE DATA               O   COPY fir_sections ("SECTION", "SECTIONDTL", "ACCTYPE", "ACCTYPEN") FROM stdin;
    public       root    false    214   ΢      �	          0    28204    fir_self_type 
   TABLE DATA               7   COPY fir_self_type ("SNO", "CODE", "TYPE") FROM stdin;
    public       root    false    215   :�      �	          0    28207    fir_vehtype1 
   TABLE DATA               �  COPY fir_vehtype1 ("VEHTYPE", "VEHDETL", "VEHDTL", "SIMPLE", "NONINJ", "FATAL", "PERINJ", "PERKIL", "PEDESTRIAN", "CARI", "CARK", "DTCI", "DTCK", "BLBI", "BLBK", "BUSI", "BUSK", "OSBI", "OSBK", "MBSI", "MBSK", "TAXI", "TAXK", "TSRK", "TSRI", "TWWI", "TWWK", "MILI", "MILK", "DLVI", "DLVK", "TRCI", "TRCK", "POVI", "POVK", "AMBI", "AMBK", "STRI", "STRK", "TMPI", "TMPK", "MATI", "MATK", "TNKI", "TNKK", "UNKI", "UNKK", "CYCI", "CYCK", "TNGI", "TNGK", "CYRI", "CYRK", "HDCI", "HDCK", "BULI", "BULK", "ANII", "ANIK", "CRNI", "CRNK", "UDTI", "UDTK", "PEDI", "PEDK", "HTVI", "HTVK", "SLFI", "SLFK", "ELTI", "ELTK", "WLLI", "WLLK", "PASI", "PASK") FROM stdin;
    public       root    false    216   ��      �	          0    28282    fir_vehtype2 
   TABLE DATA               �  COPY fir_vehtype2 ("VEHTYPE", "VEHDETL", "VEHDTL", "SIMPLE", "NONINJ", "FATAL", "PERINJ", "PERKIL", "PEDESTRIAN", "CARI", "CARK", "DTCI", "DTCK", "BLBI", "BLBK", "BUSI", "BUSK", "OSBI", "OSBK", "MBSI", "MBSK", "TAXI", "TAXK", "TSRI", "TSRK", "TWWI", "TWWK", "MILI", "MILK", "DLVI", "DLVK", "TRCI", "TRCK", "POVI", "POVK", "AMBI", "AMBK", "STRI", "STRK", "TMPI", "TMPK", "CYCI", "CYRI", "CYRK", "HDCI", "HDCK", "BULI", "BULK", "ANII", "ANIK", "CRNI", "CRNK", "UDTI", "UDTK", "PEDI", "PEDK", "HTVI", "HTVK", "SLFI", "SLFK", "ELTI", "ELTK", "WLLI", "WLLK", "PASI", "PASK", "CYCK", "MATI", "MATK", "TNGI", "TNGK", "TNKI", "TNKK", "UNKI", "UNKK") FROM stdin;
    public       root    false    217   �      �           2606    28369    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         root    false    185    185            �           2606    28371 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         root    false    187    187    187            �           2606    28373 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         root    false    187    187            �           2606    28375    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         root    false    185    185            �           2606    28377 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         root    false    189    189    189            �           2606    28379 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         root    false    189    189            	           2606    28381 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         root    false    192    192            	           2606    28383 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         root    false    192    192    192            �           2606    28385    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         root    false    191    191            		           2606    28387 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         root    false    195    195            	           2606    28389 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         root    false    195    195    195             	           2606    28391     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         root    false    191    191            	           2606    28393 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         root    false    197    197            	           2606    28395 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         root    false    199    199    199            	           2606    28397 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         root    false    199    199            	           2606    28399 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         root    false    201    201            	           2606    28401 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         root    false    203    203            	           2606    28403 "   fir_accid_type fir_accid_type_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fir_accid_type
    ADD CONSTRAINT fir_accid_type_pkey PRIMARY KEY ("SNO");
 L   ALTER TABLE ONLY public.fir_accid_type DROP CONSTRAINT fir_accid_type_pkey;
       public         root    false    204    204            	           2606    28405    fir_circles fir_circles_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY fir_circles
    ADD CONSTRAINT fir_circles_pkey PRIMARY KEY ("CIRCLE");
 F   ALTER TABLE ONLY public.fir_circles DROP CONSTRAINT fir_circles_pkey;
       public         root    false    205    205            /	           2606    28407    fir_details fir_details_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT fir_details_pkey PRIMARY KEY ("ACC_ID");
 F   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT fir_details_pkey;
       public         root    false    206    206            3	           2606    28409    fir_injured fir_injured_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY fir_injured
    ADD CONSTRAINT fir_injured_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.fir_injured DROP CONSTRAINT fir_injured_pkey;
       public         root    false    207    207            7	           2606    28411    fir_killed fir_killed_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY fir_killed
    ADD CONSTRAINT fir_killed_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.fir_killed DROP CONSTRAINT fir_killed_pkey;
       public         root    false    209    209            9	           2606    28413    fir_location fir_location_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY fir_location
    ADD CONSTRAINT fir_location_pkey PRIMARY KEY ("SNO");
 H   ALTER TABLE ONLY public.fir_location DROP CONSTRAINT fir_location_pkey;
       public         root    false    211    211            >	           2606    28415 (   fir_policestation fir_policestation_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY fir_policestation
    ADD CONSTRAINT fir_policestation_pkey PRIMARY KEY ("CIRCLE_PS");
 R   ALTER TABLE ONLY public.fir_policestation DROP CONSTRAINT fir_policestation_pkey;
       public         root    false    212    212            C	           2606    28417 #   fir_roads fir_roads_NEW_226dfa92_pk 
   CONSTRAINT     _   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_NEW_226dfa92_pk" PRIMARY KEY ("NEW");
 O   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_NEW_226dfa92_pk";
       public         root    false    213    213            E	           2606    28419 %   fir_roads fir_roads_NEW_226dfa92_uniq 
   CONSTRAINT     \   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_NEW_226dfa92_uniq" UNIQUE ("NEW");
 Q   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_NEW_226dfa92_uniq";
       public         root    false    213    213            G	           2606    28421    fir_sections fir_sections_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fir_sections
    ADD CONSTRAINT fir_sections_pkey PRIMARY KEY ("SECTION");
 H   ALTER TABLE ONLY public.fir_sections DROP CONSTRAINT fir_sections_pkey;
       public         root    false    214    214            J	           2606    28423 +   fir_self_type fir_self_type_SNO_4b299614_pk 
   CONSTRAINT     g   ALTER TABLE ONLY fir_self_type
    ADD CONSTRAINT "fir_self_type_SNO_4b299614_pk" PRIMARY KEY ("SNO");
 W   ALTER TABLE ONLY public.fir_self_type DROP CONSTRAINT "fir_self_type_SNO_4b299614_pk";
       public         root    false    215    215            L	           2606    28425 -   fir_self_type fir_self_type_SNO_4b299614_uniq 
   CONSTRAINT     d   ALTER TABLE ONLY fir_self_type
    ADD CONSTRAINT "fir_self_type_SNO_4b299614_uniq" UNIQUE ("SNO");
 Y   ALTER TABLE ONLY public.fir_self_type DROP CONSTRAINT "fir_self_type_SNO_4b299614_uniq";
       public         root    false    215    215            O	           2606    28427 -   fir_vehtype1 fir_vehtype1_VEHTYPE_3b51b3a3_pk 
   CONSTRAINT     m   ALTER TABLE ONLY fir_vehtype1
    ADD CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_pk" PRIMARY KEY ("VEHTYPE");
 Y   ALTER TABLE ONLY public.fir_vehtype1 DROP CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_pk";
       public         root    false    216    216            Q	           2606    28429 /   fir_vehtype1 fir_vehtype1_VEHTYPE_3b51b3a3_uniq 
   CONSTRAINT     j   ALTER TABLE ONLY fir_vehtype1
    ADD CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_uniq" UNIQUE ("VEHTYPE");
 [   ALTER TABLE ONLY public.fir_vehtype1 DROP CONSTRAINT "fir_vehtype1_VEHTYPE_3b51b3a3_uniq";
       public         root    false    216    216            T	           2606    28431    fir_vehtype2 fir_vehtype2_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY fir_vehtype2
    ADD CONSTRAINT fir_vehtype2_pkey PRIMARY KEY ("VEHTYPE");
 H   ALTER TABLE ONLY public.fir_vehtype2 DROP CONSTRAINT fir_vehtype2_pkey;
       public         root    false    217    217            �           1259    28432    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         root    false    185            �           1259    28433 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         root    false    187            �           1259    28434 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         root    false    187            �           1259    28435 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         root    false    189            	           1259    28436 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         root    false    192            	           1259    28437 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         root    false    192            	           1259    28438 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         root    false    195            
	           1259    28439 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         root    false    195            �           1259    28440     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         root    false    191            	           1259    28441 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         root    false    197            	           1259    28442 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         root    false    197            	           1259    28443 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         root    false    203            	           1259    28444 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         root    false    203            	           1259    28445     fir_circles_CIRCLE_2d898636_like    INDEX     k   CREATE INDEX "fir_circles_CIRCLE_2d898636_like" ON fir_circles USING btree ("CIRCLE" varchar_pattern_ops);
 6   DROP INDEX public."fir_circles_CIRCLE_2d898636_like";
       public         root    false    205             	           1259    28446 "   fir_details_ACCID_TYPE_id_1e8e4ea8    INDEX     `   CREATE INDEX "fir_details_ACCID_TYPE_id_1e8e4ea8" ON fir_details USING btree ("ACCID_TYPE_id");
 8   DROP INDEX public."fir_details_ACCID_TYPE_id_1e8e4ea8";
       public         root    false    206            !	           1259    28447     fir_details_ACC_ID_89c435b5_like    INDEX     k   CREATE INDEX "fir_details_ACC_ID_89c435b5_like" ON fir_details USING btree ("ACC_ID" varchar_pattern_ops);
 6   DROP INDEX public."fir_details_ACC_ID_89c435b5_like";
       public         root    false    206            "	           1259    28448    fir_details_CIRCLE_id_3040535b    INDEX     X   CREATE INDEX "fir_details_CIRCLE_id_3040535b" ON fir_details USING btree ("CIRCLE_id");
 4   DROP INDEX public."fir_details_CIRCLE_id_3040535b";
       public         root    false    206            #	           1259    28449 #   fir_details_CIRCLE_id_3040535b_like    INDEX     q   CREATE INDEX "fir_details_CIRCLE_id_3040535b_like" ON fir_details USING btree ("CIRCLE_id" varchar_pattern_ops);
 9   DROP INDEX public."fir_details_CIRCLE_id_3040535b_like";
       public         root    false    206            $	           1259    28450     fir_details_LOCATION_id_21a22dd3    INDEX     \   CREATE INDEX "fir_details_LOCATION_id_21a22dd3" ON fir_details USING btree ("LOCATION_id");
 6   DROP INDEX public."fir_details_LOCATION_id_21a22dd3";
       public         root    false    206            %	           1259    28451    fir_details_PS_id_ad7ef1c4    INDEX     P   CREATE INDEX "fir_details_PS_id_ad7ef1c4" ON fir_details USING btree ("PS_id");
 0   DROP INDEX public."fir_details_PS_id_ad7ef1c4";
       public         root    false    206            &	           1259    28452    fir_details_PS_id_ad7ef1c4_like    INDEX     i   CREATE INDEX "fir_details_PS_id_ad7ef1c4_like" ON fir_details USING btree ("PS_id" varchar_pattern_ops);
 5   DROP INDEX public."fir_details_PS_id_ad7ef1c4_like";
       public         root    false    206            '	           1259    28453    fir_details_ROAD_id_cfb73d85    INDEX     T   CREATE INDEX "fir_details_ROAD_id_cfb73d85" ON fir_details USING btree ("ROAD_id");
 2   DROP INDEX public."fir_details_ROAD_id_cfb73d85";
       public         root    false    206            (	           1259    28454    fir_details_SECTION_id_8e90b8a2    INDEX     Z   CREATE INDEX "fir_details_SECTION_id_8e90b8a2" ON fir_details USING btree ("SECTION_id");
 5   DROP INDEX public."fir_details_SECTION_id_8e90b8a2";
       public         root    false    206            )	           1259    28455 !   fir_details_SELF_TYPE_id_bc950e73    INDEX     ^   CREATE INDEX "fir_details_SELF_TYPE_id_bc950e73" ON fir_details USING btree ("SELF_TYPE_id");
 7   DROP INDEX public."fir_details_SELF_TYPE_id_bc950e73";
       public         root    false    206            *	           1259    28456 &   fir_details_SELF_TYPE_id_bc950e73_like    INDEX     w   CREATE INDEX "fir_details_SELF_TYPE_id_bc950e73_like" ON fir_details USING btree ("SELF_TYPE_id" varchar_pattern_ops);
 <   DROP INDEX public."fir_details_SELF_TYPE_id_bc950e73_like";
       public         root    false    206            +	           1259    28457     fir_details_VEHTYPE1_id_870a6bae    INDEX     \   CREATE INDEX "fir_details_VEHTYPE1_id_870a6bae" ON fir_details USING btree ("VEHTYPE1_id");
 6   DROP INDEX public."fir_details_VEHTYPE1_id_870a6bae";
       public         root    false    206            ,	           1259    28458     fir_details_VEHTYPE2_id_fc3a601d    INDEX     \   CREATE INDEX "fir_details_VEHTYPE2_id_fc3a601d" ON fir_details USING btree ("VEHTYPE2_id");
 6   DROP INDEX public."fir_details_VEHTYPE2_id_fc3a601d";
       public         root    false    206            -	           1259    28459 %   fir_details_VEHTYPE2_id_fc3a601d_like    INDEX     u   CREATE INDEX "fir_details_VEHTYPE2_id_fc3a601d_like" ON fir_details USING btree ("VEHTYPE2_id" varchar_pattern_ops);
 ;   DROP INDEX public."fir_details_VEHTYPE2_id_fc3a601d_like";
       public         root    false    206            0	           1259    28460     fir_injured_ACCID_ID_id_0a33e27d    INDEX     \   CREATE INDEX "fir_injured_ACCID_ID_id_0a33e27d" ON fir_injured USING btree ("ACCID_ID_id");
 6   DROP INDEX public."fir_injured_ACCID_ID_id_0a33e27d";
       public         root    false    207            1	           1259    28461 %   fir_injured_ACCID_ID_id_0a33e27d_like    INDEX     u   CREATE INDEX "fir_injured_ACCID_ID_id_0a33e27d_like" ON fir_injured USING btree ("ACCID_ID_id" varchar_pattern_ops);
 ;   DROP INDEX public."fir_injured_ACCID_ID_id_0a33e27d_like";
       public         root    false    207            4	           1259    28462    fir_killed_ACCID_ID_id_42714456    INDEX     Z   CREATE INDEX "fir_killed_ACCID_ID_id_42714456" ON fir_killed USING btree ("ACCID_ID_id");
 5   DROP INDEX public."fir_killed_ACCID_ID_id_42714456";
       public         root    false    209            5	           1259    28463 $   fir_killed_ACCID_ID_id_42714456_like    INDEX     s   CREATE INDEX "fir_killed_ACCID_ID_id_42714456_like" ON fir_killed USING btree ("ACCID_ID_id" varchar_pattern_ops);
 :   DROP INDEX public."fir_killed_ACCID_ID_id_42714456_like";
       public         root    false    209            :	           1259    28464 )   fir_policestation_CIRCLE_PS_bc657bf0_like    INDEX     }   CREATE INDEX "fir_policestation_CIRCLE_PS_bc657bf0_like" ON fir_policestation USING btree ("CIRCLE_PS" varchar_pattern_ops);
 ?   DROP INDEX public."fir_policestation_CIRCLE_PS_bc657bf0_like";
       public         root    false    212            ;	           1259    28465 $   fir_policestation_CIRCLE_id_85da1e16    INDEX     d   CREATE INDEX "fir_policestation_CIRCLE_id_85da1e16" ON fir_policestation USING btree ("CIRCLE_id");
 :   DROP INDEX public."fir_policestation_CIRCLE_id_85da1e16";
       public         root    false    212            <	           1259    28466 )   fir_policestation_CIRCLE_id_85da1e16_like    INDEX     }   CREATE INDEX "fir_policestation_CIRCLE_id_85da1e16_like" ON fir_policestation USING btree ("CIRCLE_id" varchar_pattern_ops);
 ?   DROP INDEX public."fir_policestation_CIRCLE_id_85da1e16_like";
       public         root    false    212            ?	           1259    28467    fir_roads_CIRCLE_id_fd7f620e    INDEX     T   CREATE INDEX "fir_roads_CIRCLE_id_fd7f620e" ON fir_roads USING btree ("CIRCLE_id");
 2   DROP INDEX public."fir_roads_CIRCLE_id_fd7f620e";
       public         root    false    213            @	           1259    28468 !   fir_roads_CIRCLE_id_fd7f620e_like    INDEX     m   CREATE INDEX "fir_roads_CIRCLE_id_fd7f620e_like" ON fir_roads USING btree ("CIRCLE_id" varchar_pattern_ops);
 7   DROP INDEX public."fir_roads_CIRCLE_id_fd7f620e_like";
       public         root    false    213            A	           1259    28469    fir_roads_NEW_226dfa92_like    INDEX     a   CREATE INDEX "fir_roads_NEW_226dfa92_like" ON fir_roads USING btree ("NEW" varchar_pattern_ops);
 1   DROP INDEX public."fir_roads_NEW_226dfa92_like";
       public         root    false    213            H	           1259    28470    fir_self_type_SNO_4b299614_like    INDEX     i   CREATE INDEX "fir_self_type_SNO_4b299614_like" ON fir_self_type USING btree ("SNO" varchar_pattern_ops);
 5   DROP INDEX public."fir_self_type_SNO_4b299614_like";
       public         root    false    215            M	           1259    28471 "   fir_vehtype1_VEHTYPE_3b51b3a3_like    INDEX     o   CREATE INDEX "fir_vehtype1_VEHTYPE_3b51b3a3_like" ON fir_vehtype1 USING btree ("VEHTYPE" varchar_pattern_ops);
 8   DROP INDEX public."fir_vehtype1_VEHTYPE_3b51b3a3_like";
       public         root    false    216            R	           1259    28472 "   fir_vehtype2_VEHTYPE_d6246cc0_like    INDEX     o   CREATE INDEX "fir_vehtype2_VEHTYPE_d6246cc0_like" ON fir_vehtype2 USING btree ("VEHTYPE" varchar_pattern_ops);
 8   DROP INDEX public."fir_vehtype2_VEHTYPE_d6246cc0_like";
       public         root    false    217            U	           2606    28473 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       root    false    187    2299    189            V	           2606    28478 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       root    false    187    2288    185            W	           2606    28483 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       root    false    2324    199    189            X	           2606    28488 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       root    false    185    192    2288            Y	           2606    28493 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       root    false    192    2301    191            Z	           2606    28498 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       root    false    189    2299    195            [	           2606    28503 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       root    false    195    2301    191            \	           2606    28508 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       root    false    199    197    2324            ]	           2606    28513 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       root    false    191    197    2301            ^	           2606    28518 D   fir_details fir_details_ACCID_TYPE_id_1e8e4ea8_fk_fir_accid_type_SNO    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_ACCID_TYPE_id_1e8e4ea8_fk_fir_accid_type_SNO" FOREIGN KEY ("ACCID_TYPE_id") REFERENCES fir_accid_type("SNO") DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_ACCID_TYPE_id_1e8e4ea8_fk_fir_accid_type_SNO";
       public       root    false    2332    204    206            _	           2606    28523 @   fir_details fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_CIRCLE_id_3040535b_fk_fir_circles_CIRCLE";
       public       root    false    206    2335    205            `	           2606    28528 @   fir_details fir_details_LOCATION_id_21a22dd3_fk_fir_location_SNO    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_LOCATION_id_21a22dd3_fk_fir_location_SNO" FOREIGN KEY ("LOCATION_id") REFERENCES fir_location("SNO") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_LOCATION_id_21a22dd3_fk_fir_location_SNO";
       public       root    false    206    211    2361            a	           2606    28533 E   fir_details fir_details_PS_id_ad7ef1c4_fk_fir_policestation_CIRCLE_PS    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_PS_id_ad7ef1c4_fk_fir_policestation_CIRCLE_PS" FOREIGN KEY ("PS_id") REFERENCES fir_policestation("CIRCLE_PS") DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_PS_id_ad7ef1c4_fk_fir_policestation_CIRCLE_PS";
       public       root    false    206    212    2366            b	           2606    28538 C   fir_details fir_details_SECTION_id_8e90b8a2_fk_fir_sections_SECTION    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_SECTION_id_8e90b8a2_fk_fir_sections_SECTION" FOREIGN KEY ("SECTION_id") REFERENCES fir_sections("SECTION") DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_SECTION_id_8e90b8a2_fk_fir_sections_SECTION";
       public       root    false    206    2375    214            e	           2606    28752 B   fir_details fir_details_SELF_TYPE_id_bc950e73_fk_fir_self_type_SNO    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_SELF_TYPE_id_bc950e73_fk_fir_self_type_SNO" FOREIGN KEY ("SELF_TYPE_id") REFERENCES fir_self_type("SNO") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_SELF_TYPE_id_bc950e73_fk_fir_self_type_SNO";
       public       root    false    2378    206    215            c	           2606    28548 /   fir_details fir_details_VEHTYPE1_id_870a6bae_fk    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_VEHTYPE1_id_870a6bae_fk" FOREIGN KEY ("VEHTYPE1_id") REFERENCES fir_vehtype1("VEHTYPE") DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_VEHTYPE1_id_870a6bae_fk";
       public       root    false    2383    206    216            d	           2606    28553 /   fir_details fir_details_VEHTYPE2_id_fc3a601d_fk    FK CONSTRAINT     �   ALTER TABLE ONLY fir_details
    ADD CONSTRAINT "fir_details_VEHTYPE2_id_fc3a601d_fk" FOREIGN KEY ("VEHTYPE2_id") REFERENCES fir_vehtype2("VEHTYPE") DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.fir_details DROP CONSTRAINT "fir_details_VEHTYPE2_id_fc3a601d_fk";
       public       root    false    206    217    2388            f	           2606    28558 B   fir_injured fir_injured_ACCID_ID_id_0a33e27d_fk_fir_details_ACC_ID    FK CONSTRAINT     �   ALTER TABLE ONLY fir_injured
    ADD CONSTRAINT "fir_injured_ACCID_ID_id_0a33e27d_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.fir_injured DROP CONSTRAINT "fir_injured_ACCID_ID_id_0a33e27d_fk_fir_details_ACC_ID";
       public       root    false    2351    207    206            g	           2606    28563 @   fir_killed fir_killed_ACCID_ID_id_42714456_fk_fir_details_ACC_ID    FK CONSTRAINT     �   ALTER TABLE ONLY fir_killed
    ADD CONSTRAINT "fir_killed_ACCID_ID_id_42714456_fk_fir_details_ACC_ID" FOREIGN KEY ("ACCID_ID_id") REFERENCES fir_details("ACC_ID") DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.fir_killed DROP CONSTRAINT "fir_killed_ACCID_ID_id_42714456_fk_fir_details_ACC_ID";
       public       root    false    2351    209    206            h	           2606    28568 L   fir_policestation fir_policestation_CIRCLE_id_85da1e16_fk_fir_circles_CIRCLE    FK CONSTRAINT     �   ALTER TABLE ONLY fir_policestation
    ADD CONSTRAINT "fir_policestation_CIRCLE_id_85da1e16_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.fir_policestation DROP CONSTRAINT "fir_policestation_CIRCLE_id_85da1e16_fk_fir_circles_CIRCLE";
       public       root    false    212    205    2335            i	           2606    28573 <   fir_roads fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE    FK CONSTRAINT     �   ALTER TABLE ONLY fir_roads
    ADD CONSTRAINT "fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE" FOREIGN KEY ("CIRCLE_id") REFERENCES fir_circles("CIRCLE") DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.fir_roads DROP CONSTRAINT "fir_roads_CIRCLE_id_fd7f620e_fk_fir_circles_CIRCLE";
       public       root    false    213    2335    205            �	      x������ � �      �	      x������ � �      �	   (  x�m��r� F�駘'�@Ǚ�F�R���S�lU�~��1�����Ok^�����i��0�˷�f�߶:��ҽ��=(*71�؇1��MV$�/��a\�g���t�)�)*2���a�b���$��J�Q'؛t*ł�g�?cXL���#X+�؋�8)B ���n���{���G0u�`������N��R}�q
���Lb�_�&��FN�tv�^�PI؍>,��i�s��KLYj��Z&ae�s����c4פ�
��:fPGX%u�����t����ܒ,=��HU�G"��%�\�~u��M�َjޱ\���-c�6Iֻ�$�[!-��y��v�16�j���ǀr3�<?Ɣ��p��s	��9����H@8�T	��q*}�39�r^�#�+�J"�P�T��/�����s��P�,��T�$I�2�^gl-���o´w#�_���ލ�Y4�}K�eKaT�@ ob�$X:��r4�s����h��V�$1��R�$�7ZHΨ��g�s�[�VQ�Q�KZ%��q�~� ��ĩ      �	     x�m��N�@���)z�]���.]��<4Z[lcb�TN�I��%��^�L&��GP������|�u�� �>�(���x�E�Zdd��w�«�I��r�����R�.�2���fb����@��=�;@L
�F0���d�JT��ė��a[pS�e�7N8B۸B��B����|�땚�f�u?t���s�n���f�S<+n7^2bM}����L&305�Nķ7���y�&��5C��{�=������$�cpV?aEQ>`�      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   �   x�M�]!�g�0Ʈ�w11�V6�5���E��&9�]*έ�08?����2�Xu�\�*%cݓI�b�B��Sk����:e+�;KuAjH�؛"7/Iq0�⣂����>��cIX��S�`���T9�Vƻ�4kmz�u�B�Ϳ���C:�l-�m����}�Ab�q\ x�b      �	   ,  x���ێ�6@�3_1��
�MK�踻r�&�E��KeCŖ\d�C�ԡ$��u>������s���0�O��~:��C���7�w�q pB�����ۏW:dy��>���k�bx �Dp<��k��_�e>�Σ�����1�+-�㋱|3����k�֌�t�͗�s�����|���q�w<̧����P��k(z�����|����Qjm�F�e��qO��y�n��!r!���z+�ka_��}�G�5J��������>���
5H|��s:�?���r-=Η��2��u�>�Oau��ih�l΋.K�2����嵷�6���i��@#���\�����ݩ���K]3ؚ�Z�G�Wp��]u�h070z�%��� ��`S
�`����Q�B��������O�)�u=ขE}�E���`���������9.a���۵fD��

�N�ې��!f��)�-/D�<k�&o�������T�~�货�m:P�ǎjx���K#n��x�-N4��$e���a��<����H�Z����S�:��t:����~����d�A�x��Ƴ��S�f�z�:~��:�J�D�۸��������c��ه��s��ąϋ��>������@`;�����>�������Z�針~ѷ�SP���l�ه�}Qo�5����OP�7�PƟ�r�ኢ2�L.
�g�L:�K^�����/�-d�a�\��r?��S��
�s�:�~9r���GN��$շ�9�+�� ��l�w�C9t�%��	G��c���g�&A�J˖a��&��4��,+8+YL�RW6͈z8l�ю86ɈX�헰ފ�ܪ��l���0�U��VԚ���N�hz8�p*�p�LL3����ѴC}��9F��e��롦��/� v��	F�`
�M8�u[L0nC\L�N���l�qk��[+'�C��0nC�g�g�S�0n��o���;��6��)�ׂ��_���լM0-,�k6�gW����űc���7KVr0�8�p��/��L�_���_�+/.}�Uk�r�g���tooo�_�_      �	   �  x������0�s�{/$َcCid�6�D�b[�'nbKV6�xc�雔z,�e`��6�`�}gu{��ͭ��V��?�o�u����N�eE�I-�qG�7E�i!�� Ib͊��I�"����vAS�۷�ɭ,�c�ĶZ��T���'İd���Ćar'j	���d`�6���Za	���]���(sP�<�|,Q�t��fӲ6ӕ�{��@A_�.��~��߹�]k�.���1��P��Uz�tg�ܗ�|�  �W0E��!�g� /t����ɇ^��O�3?�spi��	jw�7G���G�w�q1��/�P'OR�dw'In�:@���Id�����-�KW�,�(�-5Ow�=r�����p��$V?����n�`�(��!Bǟ!���ߏ�t:��yυ      �	   �  x��V�� �M����ں�?iK-w)� ���}���UW[�茻��prrB��N:�:A��X�Z�L��N�� *�*�}/{���FD�Lq;�-��K%����
a��U�AL����*9���v^/��p�����u �P��z���Ӌ�d=��_R�#I���2��-$��GK�����țu�#+r����|,��k׍���Fhu��w[4���Qӎ̧�l�#4W�¨
�z���HXg$�Yq�e��P�d�$������E�5g�g��7��b����@x>�vΧ6���f���l�'f���	a��c�dŭ�,LVdN�Ɣ-5����Y��Y-�L�.��a������Zd�z'�p2��[�gŉܓ+xU���+\|=�l���j>�;��&�P�d��g���bnB���[(`��P1�~��B���+DǼm�⛬u}����{R�:<�_��=i�{��sRw(��D�Q99�9�:���	���T��/!���|Oz��jYsTE��0wED��X���ZU�Ȉ���S�R`%��_7��į�
�����媆�Dc�4�"YA�����@/vs����b�#����d�V0���%%��������1�n�3�,�e���Ԇ���7̏NV	�S��OЏ�i�l<.�Sqc��M2���Y&kF��@;��s#1h��#�oI�K5JZ���D�+vh�{�'�<���<bC!�5> ���ը�ΌHr����N��Y!�R+_[p�l�:!��.uz>��7��5h�s��7J�ų��{t�~��7baE��j#�x�T�Řkss����H'�; ��^g2�e�q�7��>~4Lo���H"��v ?�v��?꒎1d���!>+QVG��W�!'���6�����@�����~fY��̎      �	   �  x���Yr� @��)���- �X�AR95�?�4N<��H���Tx��X�X<��T��2!Yւe0�\C��(�b�����:�_P7� ��hӇ��< :U�`I*K�쫬��;�HhnB�"������
�8;�f;+�g�<u�`��|�<#Ӥ�<��VsG#٘j;��"��=Lx������FUz�BYP��AY�y��:|Zޜ���Z�T���S�֖��-�<����T�x��`u�ƃ�@��G%L���ցQmӀ�A���d:�QI<f���l ��^���u�FJ�b�#�C�	�L�G�?Sک�M��(`�����E������($r�i�7<!K�/����]�Af�����S��>��<l�_��3��L�h�F�#h"�dl�2�'tnO�Px�W菇VP$��2{�gy&�odAv�}��O8C��!4����WM X������2ó;7kI~���b�CEA�"�/]��Z�����2o�B�:���u��VprferF���'<�8c��q�_04�L�5��!�ņ����5���:�`�o���B�A9�n}���tդ�F� %=���G�͠��_����
50g��2IV�q� k7_Ӓz�\hs�Gk���U���(���A�'�M|7Ґی^���\�M^�>u@9�Ũ�H�7�r[X�ֈ�h�Sa����I�]aLMi*U�d��O��?�H�      �	   (  x���Qs�@ ���W�H�y\9m�N^RӴc:�N2�I���C""hZL3��c��e�n�`�=n�w��j��p���iv~y�"u&tf��|9_�@n��$�,Բs��9\%0�Ej�Zk�ֺЩ�^4*��K�t���`F߾�����U��tCg}�u���#�:�N� ,8�Z����C��PS����C�����4��]���/CK�|e8�C����h6-T�7�*��d��é���h1f~Iw���J=٠��O^ҍ��*�˧Y���%��_?��|z^V���Z��b@�x�?.Zs9-4ъ&��v�Ѥ����������3�Z��x\|=���hf�3�,�,u��vz<�X���6
�rUS��/>��~ e���xC�v���7��/��n��*���u��.��u�1�T�U�W	6t�T��_��b3Ü�˄��
�8��l�`��������50�ϒ�(�x��jHdk*$�i�D6�EEݨ����2U7�[|W��0!� 3����Y����z���V~m�Ī7��:���֋���������Z,�6�`s�ZТ������%;��m��Q>��l@��UP���P]�d��<L��&�8�H�H\o+�hbaqK �YJ��D����`�kn���J��i-���`��5��fR);&*�}���sb�~=��E��x�쟏W�����&�S���o�)~Ԝ:=)n�I��� �DJ����~��ځ��t1zV��q`�CTc{FEVYɿZ�q�.fo(�+S:��:��{�Ub?Ĭ.bWg�^�7Y�LN      �	   �   x����
�0�s�.����x�؋��x���ô۰���|M��r!PD�	0���h��C��
��8���K��
F!����e
��ҝ����Z���w#�~�u�"�&�Mj�nHr�{h�c�ϩ�T㟬"�ĳ�Y��#e�!�!�������D�      �	   �   x����
�0Dϓ��$�i@�4X�����7M+���y��%��	{�h� �s����^�'!b�G�审/����!r����
O�}1'G3����:���u�)��N��\��+A�C���GH��!_��4�3�<��7�      �	   �   x�}��n� F��)�KӮ���5�&82Nz����ihA�*$d8ǟ��q�<I�t	ƒ ��%1(�
��j��t�YgQk`_ \�#��v�mc�w0�D
���\Y�Tկ%��N�pl��j�EƮ��my���஑G��4s��nԏ�;�^6�>���(W�d��J�C��J[������S�����v��W6�^��7mq<      �	      x���k������(2�*���`h�*:��]�&�W��MK�h6�+�/l�֮�?�i�]�vN�]d�Id�KKu����4�]T�]�.N�,��~n�6����*Re�8��l���U~U�%Q�}y��@�浹:Wnͩa�U�CC,��6�"���U٨!&�L��u�4�S��j>�w_�ڸTC�*{<��%�N��b���rUY�)�T[2}��R��!(冨�m�ӳ4Ҏi$�_�����K��o\L�����Z%Q�8��S�3���|��q'g�&�kkU��ݥ)U�z�Sl�E�r�V�|5M;7�9���N��\p�2/"rNtQ�g$����pU'��vWVmr��R#QG�;2���_��_�f}uy~��#߿?7�/�}��Q�ȱ� "G�����G�MM�C��J}�D�>NJ��Kq� ��Y�����{�͇6Z�����k�u��%uv�%��q�L����%;��b��hnzɽ�o8��zۧD̃��X�A��R۴������z��q��D��8���bJ	$�!��y���d�K���ȪQ2v��숵H��i,}��A��6��k+�u?��$����8.��l��tC� ��uYۯ=,^����\H��D���ꭧR����pª���
��!Y�QY'<u��Z�ki�R�T?���j��3��M�PU�$�[� $ۂ���Ш��Qz��ec��5���Nv[�,*�U)Tɢ$�-_qq�J��fB� ��g�yA��9%�����
�P�mm�/�ǽ�?���]}�{�2�\������r�(qh*%\��j"	�h%E��q^�2�h=;�U�E;�+g�6��E�eV �:�
�,�>�J,��ٶ�ϋ��qX��S�Վ����S�=�[�3VS��_�
���L= x�l{�*�X"�C`�.�Zpie�w�&h�Q*�$CG�E옑e���3&o��ib@�����I�yI��u�B�ZRƻ�s�E1�����f'��9�QV:	�UO'I�
Xz���DΉ��Ǥ��|`外A�����19!Ft�QCQ�?��5��2\U���t�-N_��a�.w�HE�����AD���ܪ�!�!UW4���?�����ჳ��j�'�ZÖ��>:��y��PnCU�7�{n���4���z�b@hUN|9��5���ԛ��<܇b��z\��l����M�m4(���BnhgܼN�?�ϋB��A�d����i��L0�ihr4�dH�S^B@&U%.j�Q��B2k��Z�x�L�J5El���U�RQ�w�g-��5��5b!��
�ĉ��"�g�@)V4��<ƈ��p5��E��Z�*-h�5����e��4�T�ل����"sE}���0�\�=�9�"G�/Yߠ�t�'�MB��|3!#��
�H���V��,g#���&��a�{WCe�K�Q;��M�j���nuQCL�M�j��b@F�[dU�n8���@@H�f�$�a"w�%�J�����U�Ȅ6����{o]�誒�����L+�v���P�YE��Iw�Aa]3m��U�S|r�7Pj���Qӣ�u
T2�:�e޺�aB�C�u���JgX8��W��Wܶ����#h*�#��@[�	�BDF�CM��zh/! �V���t*�L�܁����2�J����J���������LLݡ��{���&⼾��� �G6J?%(LP����#p�i�����zA)�qlڠ�{�ر�v�U&�5
C���kcq��
�w�( X?��f��C��*��Kս����܍��8=�ֽ�;��i>�Q��R!F�]޽x��c����ZP~��x�}��9�:h;wo����y�~�D��~�F�<%�y�B���{��<�8�N�RX9A�1�|��X4��m���Q�a�69S�o�*k>�☲iC���r�D+��pd:�,�A�8�G�����_��N��ƶ\Ђ�w����Vpn�P_�D3�Ŷ��}�ض(�#*�Ə����@^%[�\��JyX�M�}>� �E
��gg�+�~�*�5X�C��`�9�}`۫A����6Ϫ���z�[n]tC�)���R�0���B�U�k+%�ˤ�#+R����V��`�[}�A��^�'�x7��qk]��n7����!����ѡc�`ג�K��G(�CTȭ�}{LzlE�jD�~���i�b>n+�gj�4|�7�΅����H�n��S��j��(W����j������d[��4���i�Uw��B�SCL�m��CP��[f��.���3�i)�n[QCL�-�{�I��sbZmH�z�}7���Co��]����C%��-�)]�����.��'mt'w��PqC�{��g�"Rl�Rk񼁖ǵ�WY�^��<�CN��]M%n�;��&<�T2�f�]<�U3D�^9ށ�d�+����2�0���}��¿����>b]��#XȤm-����8���RB��x�.�6����M��`���ެ�V������uȃ'��Nȓ_r��ό � ��`�0'��`�DEI]��xګQ�G�"~o`��Q�RjM�g�Bfo\A�e�j4�J����e:����m�R������?�m�`u{߶�_VDÓ�抢�/��Y1앻H�
ao<$Ƭ&�U	�,�=4H��܁c	_�q���A5����	�`�y3Z�A���M\y3*�������ē���DAJI$�� O �VvHM:�컊�ưD��=�����2,��L����iAui9������X?J��ЪÖ�q�Bۼ^0�g��N��8��R�n!F�����t��L�oرf�8��̑���9w}[v�<eڿc�8��%��9tw6?�����}������դ~��ܤS�����&\�ڟ����u{9�O��^&e�����̿ط�/��(U�߆��څ�"�9�;�X��Ύ��x��.���C����Ϡ]n��_����>G��a���Ө��C�A�C����C���0D���|���д���iFD� ����>G��zr�c��Uτ���yI<d��{�;Dl:h x�X�F��1c�������w�2S�]^�:��� P�b�u�>���֦_���qG���	(!&���o��DG�?ۊ�H��}��<UH��r�@n;6s�t�y'J�F�����hm�v�sq��g��6L]���5ʐĞ�[J�LZD���DZ5�(��c��� 
�I"���ߎVh{�'���g�oG7���эX��W�	#��i�I��rg��������/w���5��=���f�bq��{?�׫�/f�PE�o�<@��i{5��.B���,�ſ8�ٌ���s1��*�՝�@�>o�gfpȁ��MCE��R�A��N�|�'a�-�o_��ڮ��YU����W�Da�g{_$�m^�����q-?)�^<�6�R�k��r)�l�c~�uְEF�K4�˸�^��w/���=��)d��:����I��7�|8gk:��B���}�����[�1o�s�HQR\1��k`r��k�~�ҵค"���J��9�5(K�{("rJ\g( ���!͝���2C<�>�}��8��dVӟSWyDFN��^~��髭�j�$�9r'��쌺���1#�}�d��Γ������4���/�lw�^~��Uh(
���IZJ����I��{V�D�k�ٸB�H�M��
�N	�X�ेHZ�����N���z3�p��7!godZ�D�.�K/Ǝ|��J�U)фRB��j��:��|����쇯}�ں�jB�%Զ�V�-�7/��Pd	���:' �b���?��/�Z1�(��PHI�j��c��)��P2}3Yj���C��_����[�s~6�p�-0����^�e��{��td����`���ߌz�*?ꡫD��q�������$�ܔv^�6��;a�$6���$�NJ�_�N1����
h1"��#<���y��߿���Eh��0�o���2�tVxL�w�QCD�͆H�ª�Z�w%V��f�IaUL�F5��N���F}ס������D�F��u� �   �p9ߥ�>˟����Un�Bn��ɛ��.�gݷ٩��I~?_u!_=iorCrÓ�*[t![<���G�G�3�n�C���{�/�8r3l�R4�8�ܮ�����I:w�o�!�����d9�lf}RB�4��I�d9��;Z�&f�i$�|��0������`�1��� ���%���))�z)��Z��7XÃ���������fb      �	      x��}ٖ�8����+�t��Z�.[��G�RX�����u��;.6@P���8��*X�8�  �P�{�g��E��~ߚt���<��;x��G#4��d
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
7���P/�ņ�#P�by���i������'��H��=<�S�5� O�ߪ�G2�Tnb�p��d@J�?GL���|B��]L|r��>��rEdG��,ACKN^@�#�+P������������&�6��Je��b�u�Z��i�S=�co����fY\���:���;T3=�9�p.Ϫ��x�ΫǦR���XAs��q���_��)ir��A��D<n�ϫ�}�l�3"� ^��d���� ������q�[6�Uێm�8�˖�wk��C�XlXq����H�Q|�-ؼ�H�M��V���޺�x��|L��o|���q�m�^&Iy��������|���� Q��LaZFC����u>���1P�u=��d���qu�:=�(�MZ���������oz�T���+8�Մ�m����C2V�������ı���u���D�_
�.�A��W�G�G��{՞׸3ZTP�MN����+/�#��?�XW�V�auȍ
��3?i�w=�Sv�g�Qs�ބ-C�'�}b���6�%�`��q\�cCC|��ڻG��� ��e8���
:���9uO�wG�x�0����ϋ�j�؞�»�қ%/����:��ھ��վ-ۻ���ޘp�-S�g
�"�y;����+���ډ����o�c�
?�~��ҭֳU�Laѓ�^nN8�/*�������]߫l������7n%���4���v ��~Sf���#-� O��[�X�iz_R�!O!`��R�n,c4� ;+heN���L79�/;I��p{���Z�bH|Fm���f���U�!�Ȍ�@�����|ߚ�,�	ێ�:i�P{�x�۠#S�<�$/�y���a��[8ngv�qR?4���3��j�]���!��XEu�|�x�q��1�& |�'�o��dL�0�˱	�k�ʯIĒ_SP�ȭ	D4#��W?ğsj2`�?���1ܼ�Ϲ4[�̷�h���͡	Ԃ���3�枧����t���3�+�x�? h  $f����ܙ:"Ϲ3�b���ܙ��?��q��ʟ�f]2��7y3AtX��7y3A�̹͙9<��-�7�F5��%�X��=�F���p�������i� ��6Luć����s<26�`��d��
4�%@����"�~���'ՍO}'�_��{?Z�c(�ʪJ���M��	B�`��ǌ�6�ţ�]0с��~��c�ጡ��x����y�+�TQ�!`�n��bd��٧癩lyhZ�Xp�-�}0�u�;�~;�ﳔ��~���~���O���O-WSkok}���j���bz�Ab�^�Z�{Ll�����п�����><o�O+u�~���`����2*U��q�ň-�
8��]�����'����va.�� �� �.�WA��,w�?����R	2]b����\,���]֦t_���Cc?�N=$��Ƹ,���cb�t�D�J�)�u�	t˭�1ߍN��LT���=x������n��]z=���6�W�#H�p�i���+,�j3a�0�0���A��	��\��[��ʠȵg̲!g���k'1�
���y�[�fUrR9���u6���7�j#G���g�VP,~Y�~��-�#����3��5���<ed��ʍH��v��})�j�� U�5�+ǭ8��-)T팟����^�`�<��hOÐNd��D����'Q�tT�[�b�7���7��'�I�+�����W�� a8͊-�C���j�P�OÂ�u,��p<�,X�\�ʑ�-�\[Z)Mq�th�@~�8�m�~D�7#�e^���;�
��a��=�\��w���O/�_!���%�����B�4�#[I�[^ -�@�-G�Ȥ���z�
pk�p@t�qf��i���a�c϶?��6\���P�\��A4_N��ѭ������/��w-�N/���'� f�oO��ۻ�ᨔs�db�m9͌���.�R��irh�~\����?�.�����ث�8C��%��%���)��*����NWs;������i���d���*@g7��Ô��t�Ɏ�+(�7��n$3Dn��|	���>{לU^�?Z���v�uVgZ�Y�uy�d~��57�C>m���N�dz�X��̐c�D34YBT�u<������Q�3w��4�.�QŚ�g��u2x�X|a(EJ�
���iz9�q\!uo0�TFL�,�Ɇ|v�Ɂ@�g%�&��7�]'\�	��j������������(�[\�I�ء%�9�5/�<9�c��.��������简��=f�輠X��$����|������8�r��!�@��R&鷠����W���uX�c`�]��w%`y_V��32*�8Ĩ�4�X��vt/��_�$\7 �'tR9M0شy�)��f�������a���2D��f���uN�ЁYM�	�6-}ޡi���������¡��TY�?���p�7�88 <��SroKwt�J����2.��ƫ�]�	��'�R��_л����:E.���P��<�K�%��Z�] +� �4��e��\=�lwm;:��qe�5/jum]$2;� V���}"��W���hoI\Z>�>�c��ZD���
Lǜ;;��T�-�%8+�-���?~�����      �	   \   x�3�42�T�p����������
��2	�����9�=}|\�L �&
�`	7N7�G.S�r,rfP9,r�09Tk�ơK��qqq i�%R      �	   ^  x�ePKn$!]�S��+�I���t�1Pr�jE����Tw�����M0gpާ@E14B�8��!�3f�$ɱ=�6���`���>�rnN�iO��*��eSi^S-�	\铲c�5���.IQ�o�<CT���zQ�Ȯ�ى�����e$��`�%y&�y�H��f�u�o���7��V{�^*V����ҽ¬p34;��] ��r_�1��wX��\;��N ?+qid��?�N�ü�&P���lfz�!�_z��]c��!�B�M��MOP�6)���I�:^/��u=Z�\��v�m�]"��ԫ8Xѻv^c���
�ޑ�j�4fz�~�\=v���7�p���|0�|/���      �	   _  x��Xˎ�*]_���M�g��Ċ�M�i���wL����HӝQ5�CQ-�D�R�KՔr	�E�WھM�������>�b!���B^,)J]A�k�w��]vg��(�ieE�MYi�+hJ���?�������68����Þ��v-f�A]��N �[��W����b-kȔc��<��@��8(!�qG#��s~Ifl�3Z��x,��e��ɾ�w��num�kV�7����:�V��>�Ҕ��H���xN�%�]�b�s�[���;H���Gz�z���s�:�~~`E=�Z�Z5uk��1�nmƯ����[<�m�M�U�*y.���=wu�u���H)��[\�(_�d*��3��z�Wo�Pp�:Q�d]�0�s�Ɨ��F��dQ�܀�)�.~���f��  gU;"wԵ�9�?�a����l�2Y
���w+�������f�������D^�s� ����{[|� VYcM*�����o������X��!VirW�uyS)����.�s,�,���'T�����+0��Ĵ?E\5�x��E�\-N��ӯ<$�|p��f����3�Q{�0�q��)0aBk nH��K�=��`˄L".�.�Ү͞�������gZl����d��kj#C�:��*��б��Q{ދ�kq�k�&R��UwX^��_�ܩ~<���O����j/�������|����ʼ���rpB�k��Jۚ��d��O�����P��JeVY���*?N�r��/�E~A�&�/��I�,o(O��urp����7B��4��+2B7׶�~�fM�;f�ή�Uv-�w0��>9��2���j���۝���i"��e�=�^��ڮ���'�E~�R�Kіߠ�G<ӥ]
�ѹ�y�����6�C�u�]{��P�n6��&Y!6�ڐ��j#Oe���@�\ά>��?��9/��솇������#o.!��*��;�5$�H�]����N�����&o�dnz��x���pr��D˜v<Aw��E��, ��f�~H��{)M-�r�o;S��c�ǲLo�JH]N���Sx���x V��qXc��T���DZQrQX�;,|��)��T�,ɭJ=��>�k���c��D�      �	     x��Xɒ�8=�_��)[^9��M��"���c^J2c��tOQ����Sf*������IU����
���E�#ێi:�
��f(M��&fŻ��"ܨۜ�p�N2Tu+�뵞������쐏6��8f	����W�p��:�?��dn���4J
�����*@>)@V��PT��l�r������?+��݀�����^j�ӌ�q�?��.��Gl�tӘ�aAy��h�x��'ؗXW,\��X��C3�^�ˣ �d(��l
13�0�YR�"Mp�����t��v.�$��w뒑J������J<�,�~�9��&3�VW�i�[&t�u����ٜ��\�K_,��O�P��u�NI<X
���;�z�yP� ���~�]�XQ�L�봄�  [�g �[uf[��ԟ�j�@��{S��{l{��k�5�� jQB��Q�"���!y���]W�JK��6omM˲nÜ����6��0��0zx젫�Ё��i�d��,�
�[��U��~��Bg,ɜ�����~o��c�u����&d ����ZD�C�7�N5ѯ�$)G)˹?h�uf��r�[N�;�A�,ଠ7[��A	sy�MeJ����+�s���+���g>3ƍs�M��lF����>�\bɓ��$<��K��jjp�6Y*�_�L����O濤�ϟ�/w{]���-ao*#�8�=���)S����������68V=C�e�C�E�v���aM�7Cv.^��7Rp�[�"{�W8+t�kY�9� ��#,X#
J���Bp������� ���-�+A-Z����w��]u��p��T�^��ƾ	���[Ȝ0"W鍔M�;��u���;"�y�j��vUb=X���%���]6P��;0͑�;_#r��_*K�5S>u�(����]�!��p��vOS���Gvfި�ِ^�R{n�v�L��-���W��Կ@}�� q���o��]������*�td~O~Me�x-�ѕ0�������r�gAG�����1�"�A��T^O�U@��/<�z�d,�����Ɓ�tS�s�_1V>�]~�Y~��۹��\X/��H�Ѭ\������vm����1���*x|�ޙ���?��U������$�)ֶ?�>��<�O[c]ѩ�"����+jS/�y���<���)���f3�
�	.J�K5TNW}*����G
ܻP'x"m�g���};�	N�9ܲ�M}�,ڬ�y7�G�0S�?{����aM@�t��.��B�Y��n\8�h��ת��kᙴ�L���?� ��Ym     