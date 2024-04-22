PGDMP                      |           postgres    16.1    16.0 X                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     j   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3843                       1259    32788 	   buildings    TABLE     �   CREATE TABLE final_project.buildings (
    id integer NOT NULL,
    type character varying(50),
    address character varying(255)
);
 $   DROP TABLE final_project.buildings;
       final_project         heap    postgres    false                       1259    32787    buildings_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.buildings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE final_project.buildings_id_seq;
       final_project          postgres    false    280                       0    0    buildings_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE final_project.buildings_id_seq OWNED BY final_project.buildings.id;
          final_project          postgres    false    279            &           1259    32876    campuses    TABLE     �   CREATE TABLE final_project.campuses (
    id integer NOT NULL,
    campus_name character varying(50),
    address character varying(255),
    total_enrollment integer
);
 #   DROP TABLE final_project.campuses;
       final_project         heap    postgres    false            %           1259    32875    campuses_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.campuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE final_project.campuses_id_seq;
       final_project          postgres    false    294                       0    0    campuses_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE final_project.campuses_id_seq OWNED BY final_project.campuses.id;
          final_project          postgres    false    293                       1259    32813    classes    TABLE     �   CREATE TABLE final_project.classes (
    id integer NOT NULL,
    name character varying(100),
    reference character varying(20),
    professor_id integer,
    professor_name character varying(20),
    credits integer,
    prerequisites text
);
 "   DROP TABLE final_project.classes;
       final_project         heap    postgres    false                       1259    32812    classes_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE final_project.classes_id_seq;
       final_project          postgres    false    284                       0    0    classes_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE final_project.classes_id_seq OWNED BY final_project.classes.id;
          final_project          postgres    false    283                        1259    32851    clubs    TABLE     �   CREATE TABLE final_project.clubs (
    id integer NOT NULL,
    name character varying(100),
    number_of_members integer,
    president character varying(20),
    location character varying(255)
);
     DROP TABLE final_project.clubs;
       final_project         heap    postgres    false                       1259    32850    clubs_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.clubs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE final_project.clubs_id_seq;
       final_project          postgres    false    288                       0    0    clubs_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE final_project.clubs_id_seq OWNED BY final_project.clubs.id;
          final_project          postgres    false    287                       1259    32827    departments    TABLE     �   CREATE TABLE final_project.departments (
    id integer NOT NULL,
    name character varying(100),
    faculty_id integer,
    building_id integer
);
 &   DROP TABLE final_project.departments;
       final_project         heap    postgres    false                       1259    32826    departments_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE final_project.departments_id_seq;
       final_project          postgres    false    286            	           0    0    departments_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE final_project.departments_id_seq OWNED BY final_project.departments.id;
          final_project          postgres    false    285            $           1259    32867    dormatorybuildings    TABLE       CREATE TABLE final_project.dormatorybuildings (
    id integer NOT NULL,
    name character varying(100),
    cost_of_living_per_semester numeric,
    address character varying(255),
    residence_directors character varying(100),
    residence_advisors character varying(100)
);
 -   DROP TABLE final_project.dormatorybuildings;
       final_project         heap    postgres    false            #           1259    32866    dormatorybuildings_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.dormatorybuildings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE final_project.dormatorybuildings_id_seq;
       final_project          postgres    false    292            
           0    0    dormatorybuildings_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE final_project.dormatorybuildings_id_seq OWNED BY final_project.dormatorybuildings.id;
          final_project          postgres    false    291            (           1259    32883    emphases    TABLE     �   CREATE TABLE final_project.emphases (
    id integer NOT NULL,
    title character varying(100),
    classes text,
    total_credits integer
);
 #   DROP TABLE final_project.emphases;
       final_project         heap    postgres    false            '           1259    32882    emphases_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.emphases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE final_project.emphases_id_seq;
       final_project          postgres    false    296                       0    0    emphases_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE final_project.emphases_id_seq OWNED BY final_project.emphases.id;
          final_project          postgres    false    295                       1259    32779    faculty    TABLE     �   CREATE TABLE final_project.faculty (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    job_title character varying(50),
    salary numeric,
    department_id integer
);
 "   DROP TABLE final_project.faculty;
       final_project         heap    postgres    false                       1259    32778    faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE final_project.faculty_id_seq;
       final_project          postgres    false    278                       0    0    faculty_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE final_project.faculty_id_seq OWNED BY final_project.faculty.id;
          final_project          postgres    false    277            "           1259    32858    jobs    TABLE     �   CREATE TABLE final_project.jobs (
    id integer NOT NULL,
    title character varying(100),
    min_salary numeric,
    max_salary numeric
);
    DROP TABLE final_project.jobs;
       final_project         heap    postgres    false            !           1259    32857    jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE final_project.jobs_id_seq;
       final_project          postgres    false    290                       0    0    jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE final_project.jobs_id_seq OWNED BY final_project.jobs.id;
          final_project          postgres    false    289                       1259    32804    majors    TABLE     �   CREATE TABLE final_project.majors (
    id integer NOT NULL,
    title character varying(100),
    required_classes text,
    total_credits integer,
    emphases_id integer
);
 !   DROP TABLE final_project.majors;
       final_project         heap    postgres    false                       1259    32803    majors_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.majors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE final_project.majors_id_seq;
       final_project          postgres    false    282                       0    0    majors_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE final_project.majors_id_seq OWNED BY final_project.majors.id;
          final_project          postgres    false    281            *           1259    32892    minors    TABLE     �   CREATE TABLE final_project.minors (
    id integer NOT NULL,
    title character varying(100),
    classes text,
    total_credits integer
);
 !   DROP TABLE final_project.minors;
       final_project         heap    postgres    false            )           1259    32891    minors_id_seq    SEQUENCE     �   CREATE SEQUENCE final_project.minors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE final_project.minors_id_seq;
       final_project          postgres    false    298                       0    0    minors_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE final_project.minors_id_seq OWNED BY final_project.minors.id;
          final_project          postgres    false    297            -           2604    32791    buildings id    DEFAULT     z   ALTER TABLE ONLY final_project.buildings ALTER COLUMN id SET DEFAULT nextval('final_project.buildings_id_seq'::regclass);
 B   ALTER TABLE final_project.buildings ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    280    279    280            4           2604    32879    campuses id    DEFAULT     x   ALTER TABLE ONLY final_project.campuses ALTER COLUMN id SET DEFAULT nextval('final_project.campuses_id_seq'::regclass);
 A   ALTER TABLE final_project.campuses ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    293    294    294            /           2604    32816 
   classes id    DEFAULT     v   ALTER TABLE ONLY final_project.classes ALTER COLUMN id SET DEFAULT nextval('final_project.classes_id_seq'::regclass);
 @   ALTER TABLE final_project.classes ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    284    283    284            1           2604    32854    clubs id    DEFAULT     r   ALTER TABLE ONLY final_project.clubs ALTER COLUMN id SET DEFAULT nextval('final_project.clubs_id_seq'::regclass);
 >   ALTER TABLE final_project.clubs ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    288    287    288            0           2604    32830    departments id    DEFAULT     ~   ALTER TABLE ONLY final_project.departments ALTER COLUMN id SET DEFAULT nextval('final_project.departments_id_seq'::regclass);
 D   ALTER TABLE final_project.departments ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    286    285    286            3           2604    32870    dormatorybuildings id    DEFAULT     �   ALTER TABLE ONLY final_project.dormatorybuildings ALTER COLUMN id SET DEFAULT nextval('final_project.dormatorybuildings_id_seq'::regclass);
 K   ALTER TABLE final_project.dormatorybuildings ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    292    291    292            5           2604    32886    emphases id    DEFAULT     x   ALTER TABLE ONLY final_project.emphases ALTER COLUMN id SET DEFAULT nextval('final_project.emphases_id_seq'::regclass);
 A   ALTER TABLE final_project.emphases ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    295    296    296            ,           2604    32782 
   faculty id    DEFAULT     v   ALTER TABLE ONLY final_project.faculty ALTER COLUMN id SET DEFAULT nextval('final_project.faculty_id_seq'::regclass);
 @   ALTER TABLE final_project.faculty ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    277    278    278            2           2604    32861    jobs id    DEFAULT     p   ALTER TABLE ONLY final_project.jobs ALTER COLUMN id SET DEFAULT nextval('final_project.jobs_id_seq'::regclass);
 =   ALTER TABLE final_project.jobs ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    289    290    290            .           2604    32807 	   majors id    DEFAULT     t   ALTER TABLE ONLY final_project.majors ALTER COLUMN id SET DEFAULT nextval('final_project.majors_id_seq'::regclass);
 ?   ALTER TABLE final_project.majors ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    282    281    282            6           2604    32895 	   minors id    DEFAULT     t   ALTER TABLE ONLY final_project.minors ALTER COLUMN id SET DEFAULT nextval('final_project.minors_id_seq'::regclass);
 ?   ALTER TABLE final_project.minors ALTER COLUMN id DROP DEFAULT;
       final_project          postgres    false    297    298    298            �          0    32788 	   buildings 
   TABLE DATA           =   COPY final_project.buildings (id, type, address) FROM stdin;
    final_project          postgres    false    280   g       �          0    32876    campuses 
   TABLE DATA           U   COPY final_project.campuses (id, campus_name, address, total_enrollment) FROM stdin;
    final_project          postgres    false    294   4g       �          0    32813    classes 
   TABLE DATA           s   COPY final_project.classes (id, name, reference, professor_id, professor_name, credits, prerequisites) FROM stdin;
    final_project          postgres    false    284   Qg       �          0    32851    clubs 
   TABLE DATA           X   COPY final_project.clubs (id, name, number_of_members, president, location) FROM stdin;
    final_project          postgres    false    288   ng       �          0    32827    departments 
   TABLE DATA           O   COPY final_project.departments (id, name, faculty_id, building_id) FROM stdin;
    final_project          postgres    false    286   �g       �          0    32867    dormatorybuildings 
   TABLE DATA           �   COPY final_project.dormatorybuildings (id, name, cost_of_living_per_semester, address, residence_directors, residence_advisors) FROM stdin;
    final_project          postgres    false    292   �g       �          0    32883    emphases 
   TABLE DATA           L   COPY final_project.emphases (id, title, classes, total_credits) FROM stdin;
    final_project          postgres    false    296   �g       �          0    32779    faculty 
   TABLE DATA           e   COPY final_project.faculty (id, first_name, last_name, job_title, salary, department_id) FROM stdin;
    final_project          postgres    false    278   �g       �          0    32858    jobs 
   TABLE DATA           H   COPY final_project.jobs (id, title, min_salary, max_salary) FROM stdin;
    final_project          postgres    false    290   �g       �          0    32804    majors 
   TABLE DATA           `   COPY final_project.majors (id, title, required_classes, total_credits, emphases_id) FROM stdin;
    final_project          postgres    false    282   h       �          0    32892    minors 
   TABLE DATA           J   COPY final_project.minors (id, title, classes, total_credits) FROM stdin;
    final_project          postgres    false    298   9h                  0    0    buildings_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('final_project.buildings_id_seq', 1, false);
          final_project          postgres    false    279                       0    0    campuses_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('final_project.campuses_id_seq', 1, false);
          final_project          postgres    false    293                       0    0    classes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('final_project.classes_id_seq', 1, false);
          final_project          postgres    false    283                       0    0    clubs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('final_project.clubs_id_seq', 1, false);
          final_project          postgres    false    287                       0    0    departments_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('final_project.departments_id_seq', 1, false);
          final_project          postgres    false    285                       0    0    dormatorybuildings_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('final_project.dormatorybuildings_id_seq', 1, false);
          final_project          postgres    false    291                       0    0    emphases_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('final_project.emphases_id_seq', 1, false);
          final_project          postgres    false    295                       0    0    faculty_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('final_project.faculty_id_seq', 1, false);
          final_project          postgres    false    277                       0    0    jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('final_project.jobs_id_seq', 1, false);
          final_project          postgres    false    289                       0    0    majors_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('final_project.majors_id_seq', 1, false);
          final_project          postgres    false    281                       0    0    minors_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('final_project.minors_id_seq', 1, false);
          final_project          postgres    false    297            :           2606    32793    buildings buildings_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY final_project.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY final_project.buildings DROP CONSTRAINT buildings_pkey;
       final_project            postgres    false    280            H           2606    32881    campuses campuses_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY final_project.campuses
    ADD CONSTRAINT campuses_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY final_project.campuses DROP CONSTRAINT campuses_pkey;
       final_project            postgres    false    294            >           2606    32820    classes classes_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY final_project.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY final_project.classes DROP CONSTRAINT classes_pkey;
       final_project            postgres    false    284            B           2606    32856    clubs clubs_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY final_project.clubs
    ADD CONSTRAINT clubs_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY final_project.clubs DROP CONSTRAINT clubs_pkey;
       final_project            postgres    false    288            @           2606    32832    departments departments_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY final_project.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY final_project.departments DROP CONSTRAINT departments_pkey;
       final_project            postgres    false    286            F           2606    32874 *   dormatorybuildings dormatorybuildings_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY final_project.dormatorybuildings
    ADD CONSTRAINT dormatorybuildings_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY final_project.dormatorybuildings DROP CONSTRAINT dormatorybuildings_pkey;
       final_project            postgres    false    292            J           2606    32890    emphases emphases_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY final_project.emphases
    ADD CONSTRAINT emphases_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY final_project.emphases DROP CONSTRAINT emphases_pkey;
       final_project            postgres    false    296            8           2606    32786    faculty faculty_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY final_project.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY final_project.faculty DROP CONSTRAINT faculty_pkey;
       final_project            postgres    false    278            D           2606    32865    jobs jobs_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY final_project.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY final_project.jobs DROP CONSTRAINT jobs_pkey;
       final_project            postgres    false    290            <           2606    32811    majors majors_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY final_project.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY final_project.majors DROP CONSTRAINT majors_pkey;
       final_project            postgres    false    282            L           2606    32899    minors minors_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY final_project.minors
    ADD CONSTRAINT minors_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY final_project.minors DROP CONSTRAINT minors_pkey;
       final_project            postgres    false    298            O           2606    32821 !   classes classes_professor_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY final_project.classes
    ADD CONSTRAINT classes_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES final_project.faculty(id);
 R   ALTER TABLE ONLY final_project.classes DROP CONSTRAINT classes_professor_id_fkey;
       final_project          postgres    false    284    278    3640            Q           2606    32838 (   departments departments_building_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY final_project.departments
    ADD CONSTRAINT departments_building_id_fkey FOREIGN KEY (building_id) REFERENCES final_project.buildings(id);
 Y   ALTER TABLE ONLY final_project.departments DROP CONSTRAINT departments_building_id_fkey;
       final_project          postgres    false    280    286    3642            R           2606    32833 '   departments departments_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY final_project.departments
    ADD CONSTRAINT departments_faculty_id_fkey FOREIGN KEY (faculty_id) REFERENCES final_project.faculty(id);
 X   ALTER TABLE ONLY final_project.departments DROP CONSTRAINT departments_faculty_id_fkey;
       final_project          postgres    false    278    3640    286            P           2606    32910    classes fk_classes_faculty    FK CONSTRAINT     �   ALTER TABLE ONLY final_project.classes
    ADD CONSTRAINT fk_classes_faculty FOREIGN KEY (professor_id) REFERENCES final_project.faculty(id);
 K   ALTER TABLE ONLY final_project.classes DROP CONSTRAINT fk_classes_faculty;
       final_project          postgres    false    3640    284    278            M           2606    32900    faculty fk_faculty_department    FK CONSTRAINT     �   ALTER TABLE ONLY final_project.faculty
    ADD CONSTRAINT fk_faculty_department FOREIGN KEY (department_id) REFERENCES final_project.departments(id);
 N   ALTER TABLE ONLY final_project.faculty DROP CONSTRAINT fk_faculty_department;
       final_project          postgres    false    3648    278    286            N           2606    32905    majors fk_majors_emphases    FK CONSTRAINT     �   ALTER TABLE ONLY final_project.majors
    ADD CONSTRAINT fk_majors_emphases FOREIGN KEY (emphases_id) REFERENCES final_project.emphases(id);
 J   ALTER TABLE ONLY final_project.majors DROP CONSTRAINT fk_majors_emphases;
       final_project          postgres    false    3658    282    296            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     