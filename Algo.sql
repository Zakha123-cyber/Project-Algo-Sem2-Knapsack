PGDMP  -                    |            rbaikekspres    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24849    rbaikekspres    DATABASE     �   CREATE DATABASE rbaikekspres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE rbaikekspres;
                postgres    false            �            1259    24850    data_barang    TABLE     �   CREATE TABLE public.data_barang (
    id integer NOT NULL,
    user_id integer,
    berat numeric(10,2) NOT NULL,
    barang character varying(100) NOT NULL,
    harga numeric(10,2) NOT NULL
);
    DROP TABLE public.data_barang;
       public         heap    postgres    false            �            1259    24853    data_barang_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_barang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.data_barang_id_seq;
       public          postgres    false    215            �           0    0    data_barang_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.data_barang_id_seq OWNED BY public.data_barang.id;
          public          postgres    false    216            �            1259    24854    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    role character varying(20) DEFAULT 'user'::character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24858    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            U           2604    24859    data_barang id    DEFAULT     p   ALTER TABLE ONLY public.data_barang ALTER COLUMN id SET DEFAULT nextval('public.data_barang_id_seq'::regclass);
 =   ALTER TABLE public.data_barang ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            V           2604    24860    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �          0    24850    data_barang 
   TABLE DATA           H   COPY public.data_barang (id, user_id, berat, barang, harga) FROM stdin;
    public          postgres    false    215   C       �          0    24854    users 
   TABLE DATA           =   COPY public.users (id, username, password, role) FROM stdin;
    public          postgres    false    217   �       �           0    0    data_barang_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.data_barang_id_seq', 5, true);
          public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    218            Y           2606    24862    data_barang data_barang_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.data_barang
    ADD CONSTRAINT data_barang_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.data_barang DROP CONSTRAINT data_barang_pkey;
       public            postgres    false    215            [           2606    24864    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            ]           2606    24866    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    217            ^           2606    24867 $   data_barang data_barang_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_barang
    ADD CONSTRAINT data_barang_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.data_barang DROP CONSTRAINT data_barang_user_id_fkey;
       public          postgres    false    4699    215    217            �   U   x�3�4�42�30�LJ-J,�46  ��(awwr��4���s�r���}J�8�`ZL�RF �wiN6�0C�T� �ZJ      �   M   x�3�tLI�4426153��,-N-�2�tI-�L-愉&��f�q�p%�e��B�L9��39--��L!�c���� �e�     