
--
-- Name: admin; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.admin (
    systemid bigint NOT NULL
);


--ALTER TABLE public.admin ;

--
-- Name: cartdetail; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.cartdetail (
    cust bigint NOT NULL,
    item integer NOT NULL,
    qty numeric NOT NULL,
    reqnote text
);


--ALTER TABLE public.cartdetail ;

--
-- Name: clientdetails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientdetails (
    appid character varying(255) NOT NULL,
    resourceids character varying(255),
    appsecret character varying(255),
    scope character varying(255),
    granttypes character varying(255),
    redirecturl character varying(255),
    authorities character varying(255),
    access_token_validity integer,
    refresh_token_validity integer,
    additionalinformation character varying(4096),
    autoapprovescopes character varying(255)
);


--ALTER TABLE public.clientdetails OWNER TO postgres;

--
-- Name: construction; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.construction (
    systemid integer default construction_systemid_seq.nextval NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    memo text DEFAULT ''::text NOT NULL
);


--ALTER TABLE public.construction OWNER TO dbexerphi_dba;

--
-- Name: construction_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.construction_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.construction_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: construction_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.construction_systemid_seq OWNED BY public.construction.systemid;


--
-- Name: contact; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.contact (
    systemid bigint NOT NULL,
    usercred_id bigint,
    firstname character varying(255) NOT NULL,
    lastname character varying(255),
    email character varying(255) NOT NULL,
    phone character varying(128),
    birthdate date,
    citizenid character varying(255),
    taxid character varying(255),
    notes text,
    citizenid_type integer,
    type character varying(128)
);


--ALTER TABLE public.contact OWNER TO dbexerphi_dba;

--
-- Name: contact_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.contact_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.contact_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: contact_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.contact_systemid_seq OWNED BY public.contact.systemid;


--
-- Name: contactaddress; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.contactaddress (
    systemid bigint NOT NULL,
    owner bigint NOT NULL,
    regency_id bigint,
    street character varying(255) NOT NULL
);


--ALTER TABLE public.contactaddress OWNER TO dbexerphi_dba;

--
-- Name: contactaddress_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.contactaddress_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contactaddress_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: contactaddress_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

--ALTER SEQUENCE public.contactaddress_systemid_seq OWNED BY public.contactaddress.systemid;


--
-- Name: counterinfo_system_id_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.counterinfo_system_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.counterinfo_system_id_seq OWNER TO dbexerphi_dba;

--
-- Name: counterinfo_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.counterinfo_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.counterinfo_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: country; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.country (
    iso_code_s2 character(2) NOT NULL,
    name text NOT NULL
);


--ALTER TABLE public.country OWNER TO dbexerphi_dba;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.customer (
    systemid bigint NOT NULL,
    timezone real NOT NULL
);


--ALTER TABLE public.customer OWNER TO dbexerphi_dba;

--
-- Name: driver; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.driver (
    systemid bigint NOT NULL
);


--ALTER TABLE public.driver OWNER TO dbexerphi_dba;

--
-- Name: facebooklogin; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.facebooklogin (
    facebookid character varying(255) NOT NULL,
    avatar text NOT NULL,
    usercred bigint NOT NULL
);


--ALTER TABLE public.facebooklogin OWNER TO dbexerphi_dba;

--
-- Name: googlelogin; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.googlelogin (
    googleid character varying(255) NOT NULL,
    avatar text NOT NULL,
    usercred bigint NOT NULL
);


--ALTER TABLE public.googlelogin OWNER TO dbexerphi_dba;

--
-- Name: gudang_id_gudang_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.gudang_id_gudang_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.gudang_id_gudang_seq OWNER TO dbexerphi_dba;

--
-- Name: gudang; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.gudang (
    id_gudang integer DEFAULT nextval('public.gudang_id_gudang_seq'::regclass) NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    addr text DEFAULT ''::text NOT NULL,
    memo text DEFAULT ''::text NOT NULL,
    "default" boolean DEFAULT false NOT NULL,
    isactive boolean DEFAULT true NOT NULL
);


--ALTER TABLE public.gudang OWNER TO dbexerphi_dba;

--
-- Name: item; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.item (
    systemid integer NOT NULL,
    name_s50_inv character varying(50) NOT NULL,
    id_merk integer NOT NULL,
    code_item_s50 character varying(50) DEFAULT ''::character varying NOT NULL,
    min_stock real,
    sku text DEFAULT ''::text,
    memo text DEFAULT ''::text,
    imagebytes bytea
);


--ALTER TABLE public.item OWNER TO dbexerphi_dba;

--
-- Name: itemcategory; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.itemcategory (
    systemid integer NOT NULL,
    code_category text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    memo text DEFAULT ''::text NOT NULL
);


--ALTER TABLE public.itemcategory OWNER TO dbexerphi_dba;

--
-- Name: itemcategory_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.itemcategory_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.itemcategory_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: itemcategory_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.itemcategory_systemid_seq OWNED BY public.itemcategory.systemid;


--
-- Name: itemcategorytag; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.itemcategorytag (
    id_ctgr integer NOT NULL,
    id_item integer NOT NULL
);


--ALTER TABLE public.itemcategorytag OWNER TO dbexerphi_dba;

--
-- Name: log; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.log (
    obj_type integer NOT NULL,
    obj_id character varying(255) NOT NULL,
    happened_time timestamp without time zone NOT NULL,
    obj_value character varying(255) NOT NULL,
    conducted_by bigint NOT NULL,
    ip_source character varying(255) NOT NULL,
    front_end character varying(255) NOT NULL,
    memo text NOT NULL
);


--ALTER TABLE public.log OWNER TO dbexerphi_dba;

--
-- Name: merk; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.merk (
    systemid integer NOT NULL,
    name text DEFAULT ''::text,
    manufacturer text DEFAULT ''::text,
    memo text DEFAULT ''::text,
    image bytea
);


--ALTER TABLE public.merk OWNER TO dbexerphi_dba;

--
-- Name: merk_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.merk_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merk_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: merk_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

--ALTER SEQUENCE public.merk_systemid_seq OWNED BY public.merk.systemid;


--
-- Name: metrics; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.metrics (
    name_s50 character varying(50) DEFAULT ''::character varying NOT NULL,
    units real DEFAULT '1'::real NOT NULL,
    memo text DEFAULT ''::text NOT NULL,
    metric_rinci character varying(50) DEFAULT NULL::character varying
);


--ALTER TABLE public.metrics OWNER TO dbexerphi_dba;

--
-- Name: model; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.model (
    systemid integer NOT NULL,
    id_merk integer NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    memo text DEFAULT ''::text NOT NULL
);


--ALTER TABLE public.model OWNER TO dbexerphi_dba;

--
-- Name: model_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.model_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.model_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: model_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.model_systemid_seq OWNED BY public.model.systemid;


--
-- Name: oauth_access_token; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_access_token (
    token_id character varying(255),
    token bytea,
    authentication_id character varying(255) NOT NULL,
    user_name character varying(255),
    client_id character varying(255),
    authentication bytea,
    refresh_token character varying(255)
);


--ALTER TABLE public.oauth_access_token OWNER TO dbexerphi_dba;

--
-- Name: oauth_approvals; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_approvals (
    userid character varying(255),
    clientid character varying(255),
    scope character varying(255),
    status character varying(10),
    expiresat timestamp without time zone,
    lastmodifiedat timestamp without time zone
);


--ALTER TABLE public.oauth_approvals OWNER TO dbexerphi_dba;

--
-- Name: oauth_client_details; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_client_details (
    client_id character varying(255) NOT NULL,
    resource_ids character varying(255),
    client_secret character varying(255),
    scope character varying(255),
    authorized_grant_types character varying(255),
    web_server_redirect_uri character varying(255),
    authorities character varying(255),
    access_token_validity integer,
    refresh_token_validity integer,
    additional_information character varying(4096),
    autoapprove character varying(255)
);


--ALTER TABLE public.oauth_client_details OWNER TO dbexerphi_dba;

--
-- Name: oauth_client_token; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_client_token (
    token_id character varying(255),
    token bytea,
    authentication_id character varying(255) NOT NULL,
    user_name character varying(255),
    client_id character varying(255)
);


--ALTER TABLE public.oauth_client_token OWNER TO dbexerphi_dba;

--
-- Name: oauth_code; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_code (
    code character varying(255),
    authentication bytea
);


--ALTER TABLE public.oauth_code OWNER TO dbexerphi_dba;

--
-- Name: oauth_refresh_token; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_refresh_token (
    token_id character varying(255),
    token bytea,
    authentication bytea
);


--ALTER TABLE public.oauth_refresh_token OWNER TO dbexerphi_dba;

--
-- Name: onhandstock; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.onhandstock (
    id_product integer NOT NULL,
    id_gudang integer NOT NULL,
    qty numeric DEFAULT '-999'::integer NOT NULL,
    str_expiry_date character varying(10) DEFAULT ''::character varying,
    serialno text DEFAULT ''::text,
    batch_no text DEFAULT ''::text,
    expirydate timestamp without time zone
);


--ALTER TABLE public.onhandstock OWNER TO dbexerphi_dba;

--
-- Name: product; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.product (
    systemid integer NOT NULL,
    name character varying(255) NOT NULL,
    memo text,
    active boolean NOT NULL,
    last_sync timestamp without time zone NOT NULL
);


--ALTER TABLE public.product OWNER TO dbexerphi_dba;

--
-- Name: product_id_product_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.product_id_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.product_id_product_seq OWNER TO dbexerphi_dba;

--
-- Name: productsellprice; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.productsellprice (
    id_pricelevel integer NOT NULL,
    id_product integer NOT NULL,
    price numeric DEFAULT ('-1'::integer)::numeric NOT NULL,
    profitfactor real DEFAULT 0 NOT NULL
);


--ALTER TABLE public.productsellprice OWNER TO dbexerphi_dba;

--
-- Name: productsellpricehistory_id_itempricehistory_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.productsellpricehistory_id_itempricehistory_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.productsellpricehistory_id_itempricehistory_seq OWNER TO dbexerphi_dba;

--
-- Name: province; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.province (
    systemid bigint NOT NULL,
    name character varying(255) NOT NULL,
    country_code character(3) NOT NULL
);


--ALTER TABLE public.province OWNER TO dbexerphi_dba;

--
-- Name: province_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.province_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.province_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: province_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.province_systemid_seq OWNED BY public.province.systemid;


--
-- Name: regency; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.regency (
    systemid bigint NOT NULL,
    name character varying(255) NOT NULL,
    prov_id bigint NOT NULL
);


--ALTER TABLE public.regency OWNER TO dbexerphi_dba;

--
-- Name: regency_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.regency_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.regency_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: regency_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.regency_systemid_seq OWNED BY public.regency.systemid;


--
-- Name: salesinvoice; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.salesinvoice (
    systemid bigint NOT NULL,
    issuedate timestamp without time zone NOT NULL,
    cust bigint NOT NULL,
    status_payment integer NOT NULL,
    status_canceled integer NOT NULL,
    status_delivery integer NOT NULL,
    shipping_line integer,
    misc_charge numeric,
    misc_charge_memo text,
    vat real,
    vat_inclusive boolean,
    promocode_used integer,
    memo text,
    disc numeric,
    disc_memo text,
    payment_type integer,
    payment_details character varying(255),
    payment_amount numeric NOT NULL,
    invoice_no character varying(255) NOT NULL,
    no_fak_pajak character varying(255)
);


--ALTER TABLE public.salesinvoice OWNER TO dbexerphi_dba;

--
-- Name: salesinvoice_id_si_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesinvoice_id_si_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.salesinvoice_id_si_seq OWNER TO dbexerphi_dba;

--
-- Name: salesinvoice_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesinvoice_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.salesinvoice_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: salesinvoice_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.salesinvoice_systemid_seq OWNED BY public.salesinvoice.systemid;


--
-- Name: salesinvoiceitem; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.salesinvoiceitem (
    parent bigint NOT NULL,
    item integer NOT NULL,
    qty numeric NOT NULL,
    reqnote text,
    harga_jual numeric NOT NULL,
    disc numeric
);


--ALTER TABLE public.salesinvoiceitem OWNER TO dbexerphi_dba;

--
-- Name: salesofficer; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.salesofficer (
    systemid bigint NOT NULL
);


--ALTER TABLE public.salesofficer OWNER TO dbexerphi_dba;

--
-- Name: salesorder; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.salesorder (
    systemid bigint NOT NULL,
    issuedate timestamp without time zone NOT NULL,
    cust bigint NOT NULL,
    status_payment integer NOT NULL,
    status_canceled integer NOT NULL,
    status_delivery integer NOT NULL,
    shipping_line integer,
    misc_charge numeric,
    misc_charge_memo text,
    vat real,
    vat_inclusive boolean,
    promocode_used integer,
    memo text,
    disc numeric,
    disc_memo text
);


--ALTER TABLE public.salesorder OWNER TO dbexerphi_dba;

--
-- Name: salesorder_id_so_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesorder_id_so_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.salesorder_id_so_seq OWNER TO dbexerphi_dba;

--
-- Name: salesorder_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesorder_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.salesorder_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: salesorder_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.salesorder_systemid_seq OWNED BY public.salesorder.systemid;


--
-- Name: salesorderitem; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.salesorderitem (
    parent bigint NOT NULL,
    item integer NOT NULL,
    qty numeric NOT NULL,
    reqnote text,
    harga_jual numeric,
    disc numeric
);


--ALTER TABLE public.salesorderitem OWNER TO dbexerphi_dba;

--
-- Name: salesquotation_id_sq_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesquotation_id_sq_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.salesquotation_id_sq_seq OWNER TO dbexerphi_dba;

--
-- Name: sellpricelevel_id_pricelevel_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.sellpricelevel_id_pricelevel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.sellpricelevel_id_pricelevel_seq OWNER TO dbexerphi_dba;

--
-- Name: sellpricelevel; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.sellpricelevel (
    id_pricelevel integer DEFAULT nextval('public.sellpricelevel_id_pricelevel_seq'::regclass) NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    passworded boolean DEFAULT false,
    usebydefault boolean DEFAULT false NOT NULL,
    memo text DEFAULT ''::text NOT NULL
);


--ALTER TABLE public.sellpricelevel OWNER TO dbexerphi_dba;

--
-- Name: seq_gen_sequence; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.seq_gen_sequence
    START WITH 50
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.seq_gen_sequence OWNER TO dbexerphi_dba;

--
-- Name: series; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.series (
    id_model integer NOT NULL,
    series text DEFAULT ''::text NOT NULL
);


--ALTER TABLE public.series OWNER TO dbexerphi_dba;

--
-- Name: tire; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.tire (
    systemid integer NOT NULL,
    id_model integer NOT NULL,
    series text NOT NULL,
    id_construction integer NOT NULL,
    size text DEFAULT ''::text NOT NULL,
    speed_idx text DEFAULT ''::text NOT NULL,
    rims_std text DEFAULT ''::text NOT NULL,
    rims_ext text DEFAULT ''::text NOT NULL,
    ply_rating integer DEFAULT '-1'::integer NOT NULL,
    tire_diameter integer DEFAULT '-1'::integer NOT NULL,
    rim_diameter integer DEFAULT '-1'::integer NOT NULL,
    tire_surface_width integer DEFAULT '-1'::integer NOT NULL,
    max_load_kgf integer DEFAULT '-1'::integer NOT NULL,
    max_load_lbs integer DEFAULT '-1'::integer NOT NULL,
    aspect_ratio integer DEFAULT '-1'::integer NOT NULL,
    max_pressure_kpa integer DEFAULT '-1'::integer NOT NULL,
    max_pressure_psi integer DEFAULT '-1'::integer NOT NULL,
    feat_highlight1 text DEFAULT ''::text NOT NULL,
    feat_highlight2 text DEFAULT ''::text NOT NULL,
    feat_highlight3 text DEFAULT ''::text NOT NULL,
    tire_type text DEFAULT ''::text NOT NULL,
    load_idx text DEFAULT ''::text NOT NULL,
    load_capacity real DEFAULT '0'::real NOT NULL,
    load_range text DEFAULT ''::text NOT NULL,
    rim_size_meas text DEFAULT ''::text NOT NULL,
    valve_type text DEFAULT ''::text NOT NULL,
    max_speed real DEFAULT '0'::real NOT NULL,
    inflated_size_dia real DEFAULT '0'::real NOT NULL,
    total_width real DEFAULT '0'::real NOT NULL,
    tread_width real DEFAULT '0'::real NOT NULL,
    inflated_pressure real DEFAULT '0'::real NOT NULL,
    cold_air_pressure real DEFAULT '0'::real NOT NULL,
    groove_depth real DEFAULT '0'::real NOT NULL,
    section_width real DEFAULT '0'::real NOT NULL,
    car_type1 text DEFAULT ''::text NOT NULL,
    car_type2 text DEFAULT ''::text NOT NULL,
    car_type3 text DEFAULT ''::text NOT NULL
);


--ALTER TABLE public.tire OWNER TO dbexerphi_dba;

--
-- Name: usercredential; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.usercredential (
    systemid bigint NOT NULL,
    group_id integer,
    username character varying(128) NOT NULL,
    pwd character varying(256) NOT NULL,
    isenable boolean NOT NULL,
    expiredate date,
    notes text,
    sys_created timestamp without time zone,
    sys_create_ip character varying(256),
    sys_last_login timestamp without time zone,
    socialmedia_type character varying(128),
    registration_token character varying(255)
);


--ALTER TABLE public.usercredential OWNER TO dbexerphi_dba;

--
-- Name: usercredential_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.usercredential_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.usercredential_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: usercredential_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.usercredential_systemid_seq OWNED BY public.usercredential.systemid;


--
-- Name: usergroup; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.usergroup (
);


--ALTER TABLE public.usergroup OWNER TO dbexerphi_dba;

--
-- Name: usergroupaccessright; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.usergroupaccessright (
);


--ALTER TABLE public.usergroupaccessright OWNER TO dbexerphi_dba;

--
-- Name: vendorpayment_id_pr_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.vendorpayment_id_pr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.vendorpayment_id_pr_seq OWNER TO dbexerphi_dba;

--
-- Name: construction systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.construction ALTER COLUMN systemid SET DEFAULT nextval('public.construction_systemid_seq'::regclass);


--
-- Name: contact systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.contact ALTER COLUMN systemid SET DEFAULT nextval('public.contact_systemid_seq'::regclass);


--
-- Name: contactaddress systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.contactaddress ALTER COLUMN systemid SET DEFAULT nextval('public.contactaddress_systemid_seq'::regclass);


--
-- Name: itemcategory systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.itemcategory ALTER COLUMN systemid SET DEFAULT nextval('public.itemcategory_systemid_seq'::regclass);


--
-- Name: merk systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.merk ALTER COLUMN systemid SET DEFAULT nextval('public.merk_systemid_seq'::regclass);


--
-- Name: model systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.model ALTER COLUMN systemid SET DEFAULT nextval('public.model_systemid_seq'::regclass);


--
-- Name: province systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.province ALTER COLUMN systemid SET DEFAULT nextval('public.province_systemid_seq'::regclass);


--
-- Name: regency systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.regency ALTER COLUMN systemid SET DEFAULT nextval('public.regency_systemid_seq'::regclass);


--
-- Name: salesinvoice systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesinvoice ALTER COLUMN systemid SET DEFAULT nextval('public.salesinvoice_systemid_seq'::regclass);


--
-- Name: salesorder systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesorder ALTER COLUMN systemid SET DEFAULT nextval('public.salesorder_systemid_seq'::regclass);


--
-- Name: usercredential systemid; Type: DEFAULT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.usercredential ALTER COLUMN systemid SET DEFAULT nextval('public.usercredential_systemid_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.admin VALUES (1);


--
-- Data for Name: cartdetail; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.cartdetail VALUES (11, 6, 200, 'None');
INSERT INTO public.cartdetail VALUES (11, 7, 44, 'None');
INSERT INTO public.cartdetail VALUES (14, 7, 444, 'Iyah');


--
-- Data for Name: clientdetails; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: construction; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: contact; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.contact VALUES (7, 7, 'Johny', 'Fonny', 'wacksack@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (9, 9, 'Dhios', 'Chandra', 'dhas@fff.com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact VALUES (11, 11, 'Jenny', 'Fahra', 'wacksack@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (14, 14, 'Bret', 'Hart', 'hitman@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (12, 12, 'Suppa', 'Duppa', 'supadupa@fff.com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact VALUES (16, 16, 'Boss', 'Man', 'bossman@fff.com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact VALUES (17, 17, 'Jean', 'Reno', 'jeanreno@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (18, 18, 'Jay', 'Son', 'jayson@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (20, 20, 'Nong', 'Jing', 'nojing@fff.com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact VALUES (22, 22, 'Yam', 'Ko', 'yamko@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (23, 23, 'Kal', 'Be', 'kalbe@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (25, 25, 'Reku', 'Seku', 'rikusiku@fff.com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE SALES OFFICER');
INSERT INTO public.contact VALUES (27, 27, 'Ki', 'Ho', 'taiho@com', NULL, NULL, NULL, NULL, NULL, 0, 'TYPE CUSTOMER');
INSERT INTO public.contact VALUES (1, 1, 'Admin', NULL, 'admin@yahoo.com', '087878787878', NULL, NULL, NULL, NULL, 0, 'TYPE ADMIN');


--
-- Data for Name: contactaddress; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.contactaddress VALUES (4, 7, NULL, 'Jalan ws 123');
INSERT INTO public.contactaddress VALUES (7, 9, NULL, 'CCC 9');
INSERT INTO public.contactaddress VALUES (9, 11, NULL, 'Jalan JF 123');
INSERT INTO public.contactaddress VALUES (13, 14, NULL, 'Jalan BH 123');
INSERT INTO public.contactaddress VALUES (14, 12, NULL, 'SSS 9');
INSERT INTO public.contactaddress VALUES (16, 16, NULL, 'Bos Man 9');
INSERT INTO public.contactaddress VALUES (17, 17, NULL, 'Jalan BH 123');
INSERT INTO public.contactaddress VALUES (19, 18, NULL, 'Jalan json 123');
INSERT INTO public.contactaddress VALUES (22, 20, NULL, 'anjing 9');
INSERT INTO public.contactaddress VALUES (24, 22, NULL, 'Jalan Yam 123');
INSERT INTO public.contactaddress VALUES (26, 23, NULL, 'Jalan KKK 123');
INSERT INTO public.contactaddress VALUES (29, 25, NULL, 'Jalan Rek 100');
INSERT INTO public.contactaddress VALUES (31, 27, NULL, 'Jalan TTT 123');


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.country VALUES ('AD', 'Andorra');
INSERT INTO public.country VALUES ('AE', 'United Arab Emirates');
INSERT INTO public.country VALUES ('AF', 'Afghanistan');
INSERT INTO public.country VALUES ('AG', 'Antigua And Barbuda');
INSERT INTO public.country VALUES ('AI', 'Anguilla');
INSERT INTO public.country VALUES ('AL', 'Albania');
INSERT INTO public.country VALUES ('AM', 'Armenia');
INSERT INTO public.country VALUES ('AN', 'Netherlands Antilles');
INSERT INTO public.country VALUES ('AO', 'Angola');
INSERT INTO public.country VALUES ('AQ', 'Antarctica');
INSERT INTO public.country VALUES ('AR', 'Argentina');
INSERT INTO public.country VALUES ('AS', 'American Samoa');
INSERT INTO public.country VALUES ('AT', 'Austria');
INSERT INTO public.country VALUES ('AU', 'Australia');
INSERT INTO public.country VALUES ('AW', 'Aruba');
INSERT INTO public.country VALUES ('AZ', 'Azerbaijan');
INSERT INTO public.country VALUES ('BA', 'Bosnia Hercegovenia');
INSERT INTO public.country VALUES ('BB', 'Barbados');
INSERT INTO public.country VALUES ('BD', 'Bangladesh');
INSERT INTO public.country VALUES ('BE', 'Belgium');
INSERT INTO public.country VALUES ('BF', 'Burkina Faso');
INSERT INTO public.country VALUES ('BG', 'Bulgaria');
INSERT INTO public.country VALUES ('BH', 'Bahrain');
INSERT INTO public.country VALUES ('BI', 'Burundi');
INSERT INTO public.country VALUES ('BJ', 'Benin');
INSERT INTO public.country VALUES ('BM', 'Bermuda');
INSERT INTO public.country VALUES ('BN', 'Brunei Darussalam');
INSERT INTO public.country VALUES ('BO', 'Bolivia');
INSERT INTO public.country VALUES ('BR', 'Brazil');
INSERT INTO public.country VALUES ('BS', 'Bahamas');
INSERT INTO public.country VALUES ('BT', 'Bhutan');
INSERT INTO public.country VALUES ('BV', 'Bouvet Island');
INSERT INTO public.country VALUES ('BW', 'Botswana');
INSERT INTO public.country VALUES ('BY', 'Belarus');
INSERT INTO public.country VALUES ('BZ', 'Belize');
INSERT INTO public.country VALUES ('CA', 'Canada');
INSERT INTO public.country VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO public.country VALUES ('CD', 'Congo');
INSERT INTO public.country VALUES ('CF', 'Central African Republic');
INSERT INTO public.country VALUES ('CG', 'Congo');
INSERT INTO public.country VALUES ('CH', 'Switzerland');
INSERT INTO public.country VALUES ('CI', 'Cote D''Ivoire');
INSERT INTO public.country VALUES ('CK', 'Cook Islands');
INSERT INTO public.country VALUES ('CL', 'Chile');
INSERT INTO public.country VALUES ('CM', 'Cameroon');
INSERT INTO public.country VALUES ('CN', 'PEOPLES REPUBLIC OF CHINA');
INSERT INTO public.country VALUES ('CO', 'Colombia');
INSERT INTO public.country VALUES ('CR', 'Costa Rica');
INSERT INTO public.country VALUES ('CU', 'Cuba');
INSERT INTO public.country VALUES ('CV', 'Cape Verde');
INSERT INTO public.country VALUES ('CX', 'Christmas Island');
INSERT INTO public.country VALUES ('CY', 'Cyprus');
INSERT INTO public.country VALUES ('CZ', 'Czech Republic');
INSERT INTO public.country VALUES ('DE', 'Germany');
INSERT INTO public.country VALUES ('DJ', 'Djibouti');
INSERT INTO public.country VALUES ('DK', 'Denmark');
INSERT INTO public.country VALUES ('DM', 'Dominica');
INSERT INTO public.country VALUES ('DO', 'Dominican Republic');
INSERT INTO public.country VALUES ('DZ', 'Algeria');
INSERT INTO public.country VALUES ('EC', 'Ecuador');
INSERT INTO public.country VALUES ('EE', 'Estonia');
INSERT INTO public.country VALUES ('EG', 'Egypt');
INSERT INTO public.country VALUES ('EH', 'Western Sahara');
INSERT INTO public.country VALUES ('ER', 'Eritrea');
INSERT INTO public.country VALUES ('ES', 'Spain');
INSERT INTO public.country VALUES ('ET', 'Ethiopia');
INSERT INTO public.country VALUES ('EU', 'Europe Comunity');
INSERT INTO public.country VALUES ('FI', 'Finland');
INSERT INTO public.country VALUES ('FJ', 'Fiji');
INSERT INTO public.country VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO public.country VALUES ('FM', 'Micronesia');
INSERT INTO public.country VALUES ('FO', 'Faeroe Islands');
INSERT INTO public.country VALUES ('FR', 'France');
INSERT INTO public.country VALUES ('GA', 'Gabon');
INSERT INTO public.country VALUES ('GB', 'United Kingdom');
INSERT INTO public.country VALUES ('GD', 'Grenada');
INSERT INTO public.country VALUES ('GE', 'Georgia');
INSERT INTO public.country VALUES ('GF', 'French Guiana');
INSERT INTO public.country VALUES ('GH', 'Ghana');
INSERT INTO public.country VALUES ('GI', 'Gibraltar');
INSERT INTO public.country VALUES ('GL', 'Greenland');
INSERT INTO public.country VALUES ('GM', 'Gambia');
INSERT INTO public.country VALUES ('GN', 'Guinea');
INSERT INTO public.country VALUES ('GP', 'Guadeloupe');
INSERT INTO public.country VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO public.country VALUES ('GR', 'Greece');
INSERT INTO public.country VALUES ('GS', 'S.georgia & S.sandwich Islands');
INSERT INTO public.country VALUES ('GT', 'Guatemala');
INSERT INTO public.country VALUES ('GU', 'Guam');
INSERT INTO public.country VALUES ('GW', 'Guinea-Bissau');
INSERT INTO public.country VALUES ('GY', 'Guyana');
INSERT INTO public.country VALUES ('HK', 'Hong Kong');
INSERT INTO public.country VALUES ('HM', 'Heard And Mcdonald Islands');
INSERT INTO public.country VALUES ('HN', 'Honduras');
INSERT INTO public.country VALUES ('HR', 'Croatia');
INSERT INTO public.country VALUES ('HT', 'Haiti');
INSERT INTO public.country VALUES ('HU', 'Hungary');
INSERT INTO public.country VALUES ('ID', 'Indonesia');
INSERT INTO public.country VALUES ('IE', 'Ireland');
INSERT INTO public.country VALUES ('IL', 'Israel');
INSERT INTO public.country VALUES ('IN', 'India');
INSERT INTO public.country VALUES ('IO', 'British Indian Ocean Teritory');
INSERT INTO public.country VALUES ('IQ', 'Iraq');
INSERT INTO public.country VALUES ('IR', 'Iran (Islamic Republic Of)');
INSERT INTO public.country VALUES ('IS', 'Iceland');
INSERT INTO public.country VALUES ('IT', 'Italy');
INSERT INTO public.country VALUES ('IW', 'India Water Feedering');
INSERT INTO public.country VALUES ('JM', 'Jamaica');
INSERT INTO public.country VALUES ('JO', 'Jordan');
INSERT INTO public.country VALUES ('JP', 'Japan');
INSERT INTO public.country VALUES ('KE', 'Kenya');
INSERT INTO public.country VALUES ('KG', 'Kyrgyzstan');
INSERT INTO public.country VALUES ('KH', 'Cambodia');
INSERT INTO public.country VALUES ('KI', 'Kiribati');
INSERT INTO public.country VALUES ('KM', 'Comoros');
INSERT INTO public.country VALUES ('KN', 'Saint Kitts And Nevis');
INSERT INTO public.country VALUES ('KP', 'Korea');
INSERT INTO public.country VALUES ('KR', 'Korea');
INSERT INTO public.country VALUES ('KW', 'Kuwait');
INSERT INTO public.country VALUES ('KY', 'Cayman Islands');
INSERT INTO public.country VALUES ('KZ', 'Kazakhstan');
INSERT INTO public.country VALUES ('LA', 'Lao People''s Democratic Republic');
INSERT INTO public.country VALUES ('LB', 'Lebanon');
INSERT INTO public.country VALUES ('LC', 'Saint Lucia');
INSERT INTO public.country VALUES ('LI', 'Liechtenstein');
INSERT INTO public.country VALUES ('LK', 'Sri Lanka');
INSERT INTO public.country VALUES ('LR', 'Liberia');
INSERT INTO public.country VALUES ('LS', 'Lesotho');
INSERT INTO public.country VALUES ('LT', 'Lithuania');
INSERT INTO public.country VALUES ('LU', 'Luxembourg');
INSERT INTO public.country VALUES ('LV', 'Latvia');
INSERT INTO public.country VALUES ('LY', 'Libyan Arab Jamahiriya');
INSERT INTO public.country VALUES ('MA', 'Morocco');
INSERT INTO public.country VALUES ('MC', 'Monaco');
INSERT INTO public.country VALUES ('MD', 'Moldova');
INSERT INTO public.country VALUES ('MG', 'Madagascar');
INSERT INTO public.country VALUES ('MH', 'Marshall Islands');
INSERT INTO public.country VALUES ('MK', 'Macedonia');
INSERT INTO public.country VALUES ('ML', 'Mali');
INSERT INTO public.country VALUES ('MN', 'Mongolia');
INSERT INTO public.country VALUES ('MO', 'Macau');
INSERT INTO public.country VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO public.country VALUES ('MQ', 'Martinique');
INSERT INTO public.country VALUES ('MR', 'Mauritania');
INSERT INTO public.country VALUES ('MS', 'Montserrat');
INSERT INTO public.country VALUES ('MT', 'Malta');
INSERT INTO public.country VALUES ('MU', 'Mauritius');
INSERT INTO public.country VALUES ('MV', 'Maldives');
INSERT INTO public.country VALUES ('MW', 'Malawi');
INSERT INTO public.country VALUES ('MX', 'Mexico');
INSERT INTO public.country VALUES ('MY', 'Malaysia');
INSERT INTO public.country VALUES ('MZ', 'Mozambique');
INSERT INTO public.country VALUES ('NA', 'Namibia');
INSERT INTO public.country VALUES ('NC', 'New Caledonia');
INSERT INTO public.country VALUES ('NE', 'Niger');
INSERT INTO public.country VALUES ('NF', 'Norfolk Island');
INSERT INTO public.country VALUES ('NG', 'Nigeria');
INSERT INTO public.country VALUES ('NI', 'Nicaragua');
INSERT INTO public.country VALUES ('NL', 'Netherlands');
INSERT INTO public.country VALUES ('NO', 'Norway');
INSERT INTO public.country VALUES ('NP', 'Nepal');
INSERT INTO public.country VALUES ('NR', 'Nauru');
INSERT INTO public.country VALUES ('NT', 'Neutral Zone');
INSERT INTO public.country VALUES ('NU', 'Niue');
INSERT INTO public.country VALUES ('NZ', 'New Zealand');
INSERT INTO public.country VALUES ('OM', 'Oman');
INSERT INTO public.country VALUES ('PA', 'Panama');
INSERT INTO public.country VALUES ('PE', 'Peru');
INSERT INTO public.country VALUES ('PF', 'French Polynesia');
INSERT INTO public.country VALUES ('PG', 'Papua New Guinea');
INSERT INTO public.country VALUES ('PH', 'Philippines');
INSERT INTO public.country VALUES ('PK', 'Pakistan');
INSERT INTO public.country VALUES ('PL', 'Poland');
INSERT INTO public.country VALUES ('PM', 'Saint Pierre And Miquelon');
INSERT INTO public.country VALUES ('PN', 'Pitcairn');
INSERT INTO public.country VALUES ('PR', 'Puerto Rico');
INSERT INTO public.country VALUES ('PT', 'Portugal');
INSERT INTO public.country VALUES ('PW', 'Palau');
INSERT INTO public.country VALUES ('PY', 'Paraguay');
INSERT INTO public.country VALUES ('QA', 'Qatar');
INSERT INTO public.country VALUES ('RE', 'Reunion');
INSERT INTO public.country VALUES ('RO', 'Romania');
INSERT INTO public.country VALUES ('RU', 'Russian Federation');
INSERT INTO public.country VALUES ('RW', 'Rwanda');
INSERT INTO public.country VALUES ('SA', 'Saudi Arabia');
INSERT INTO public.country VALUES ('SB', 'Solomon Islands');
INSERT INTO public.country VALUES ('SC', 'Seychelles');
INSERT INTO public.country VALUES ('SD', 'Sudan');
INSERT INTO public.country VALUES ('SE', 'Sweden');
INSERT INTO public.country VALUES ('SG', 'Singapore');
INSERT INTO public.country VALUES ('SH', 'Saint Helena');
INSERT INTO public.country VALUES ('SI', 'Slovenia');
INSERT INTO public.country VALUES ('SJ', 'Svalbard And Jan Mayen Islands');
INSERT INTO public.country VALUES ('SK', 'Slovakia Republic');
INSERT INTO public.country VALUES ('SL', 'Sierra Leone');
INSERT INTO public.country VALUES ('SM', 'San Marino');
INSERT INTO public.country VALUES ('SN', 'Senegal');
INSERT INTO public.country VALUES ('SO', 'Somalia');
INSERT INTO public.country VALUES ('SR', 'Suriname');
INSERT INTO public.country VALUES ('ST', 'Sao Tome And Principe');
INSERT INTO public.country VALUES ('SV', 'El Salvador');
INSERT INTO public.country VALUES ('SY', 'Syrian Arab Republic');
INSERT INTO public.country VALUES ('SZ', 'Swaziland');
INSERT INTO public.country VALUES ('TC', 'Turks And Caicos Islands');
INSERT INTO public.country VALUES ('TD', 'Chad');
INSERT INTO public.country VALUES ('TF', 'French Southern Territories');
INSERT INTO public.country VALUES ('TG', 'Togo');
INSERT INTO public.country VALUES ('TH', 'Thailand');
INSERT INTO public.country VALUES ('TJ', 'Tajikistan');
INSERT INTO public.country VALUES ('TK', 'Tokelau');
INSERT INTO public.country VALUES ('TM', 'Turkmenistan');
INSERT INTO public.country VALUES ('TN', 'Tunisia');
INSERT INTO public.country VALUES ('TO', 'Tonga');
INSERT INTO public.country VALUES ('TP', 'East Timor');
INSERT INTO public.country VALUES ('TR', 'Turkey');
INSERT INTO public.country VALUES ('TT', 'Trinidad And Tobago');
INSERT INTO public.country VALUES ('TV', 'Tuvalu');
INSERT INTO public.country VALUES ('TW', 'Taiwan');
INSERT INTO public.country VALUES ('TZ', 'Tanzania');
INSERT INTO public.country VALUES ('UA', 'Ukraine');
INSERT INTO public.country VALUES ('UG', 'Uganda');
INSERT INTO public.country VALUES ('UM', 'United States Minor Outlying Isl.');
INSERT INTO public.country VALUES ('US', 'United States');
INSERT INTO public.country VALUES ('UY', 'Uruguay');
INSERT INTO public.country VALUES ('UZ', 'Uzbekistan');
INSERT INTO public.country VALUES ('VA', 'Vatican City State (Holy See)');
INSERT INTO public.country VALUES ('VC', 'Saint Vincent And The Grenadines');
INSERT INTO public.country VALUES ('VE', 'Venezuela');
INSERT INTO public.country VALUES ('VG', 'Virgin Islands (British)');
INSERT INTO public.country VALUES ('VI', 'Virgin Islands (U.S.)');
INSERT INTO public.country VALUES ('VN', 'Vietnam');
INSERT INTO public.country VALUES ('VU', 'Vanuatu (New Hebrides)');
INSERT INTO public.country VALUES ('WF', 'Wallis And Futuna Islands');
INSERT INTO public.country VALUES ('WS', 'Samoa');
INSERT INTO public.country VALUES ('YE', 'Yemen');
INSERT INTO public.country VALUES ('YT', 'Mayotte');
INSERT INTO public.country VALUES ('YU', 'Yugoslavia');
INSERT INTO public.country VALUES ('ZA', 'South Africa');
INSERT INTO public.country VALUES ('ZM', 'Zambia');
INSERT INTO public.country VALUES ('ZR', 'Zaire (Please Use Cd)');
INSERT INTO public.country VALUES ('ZW', 'Zimbabwe');
INSERT INTO public.country VALUES ('MM', 'Myanmar');


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.customer VALUES (7, 0);
INSERT INTO public.customer VALUES (11, 0);
INSERT INTO public.customer VALUES (14, 0);
INSERT INTO public.customer VALUES (17, 0);
INSERT INTO public.customer VALUES (18, 0);
INSERT INTO public.customer VALUES (22, 0);
INSERT INTO public.customer VALUES (23, 0);
INSERT INTO public.customer VALUES (27, 0);


--
-- Data for Name: driver; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: facebooklogin; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: googlelogin; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: gudang; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.gudang VALUES (1, 'Utama', '', '', false, true);


--
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.item VALUES (2, 'Pcs', 1, 'KDA', NULL, '', '', NULL);
INSERT INTO public.item VALUES (6, 'Pcs', 1, 'TAD', NULL, '', '', NULL);
INSERT INTO public.item VALUES (7, 'Pcs', 1, 'MRH', NULL, '', '', NULL);
INSERT INTO public.item VALUES (18, 'Pcs', 1, 'TON', NULL, '', '', NULL);
INSERT INTO public.item VALUES (20, 'Pcs', 1, 'sss', NULL, '', '', NULL);
INSERT INTO public.item VALUES (23, 'Pcs', 1, 'tph', NULL, '', '', NULL);
INSERT INTO public.item VALUES (24, 'Pcs', 1, 'ccc', NULL, '', '', NULL);


--
-- Data for Name: itemcategory; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.itemcategory VALUES (1, 'BRU', 'Biru Langit', 'KKK');
INSERT INTO public.itemcategory VALUES (4, 'BBB', 'Baru', 'KKK');
INSERT INTO public.itemcategory VALUES (5, 'BSR', 'Besar', 'KKK');
INSERT INTO public.itemcategory VALUES (6, 'PNS', 'Puanas', 'PPP');
INSERT INTO public.itemcategory VALUES (9, 'CTE', 'Cuttey', 'MAMI');
INSERT INTO public.itemcategory VALUES (11, 'MMM', 'Milk', 'susu');


--
-- Data for Name: itemcategorytag; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.itemcategorytag VALUES (1, 2);
INSERT INTO public.itemcategorytag VALUES (4, 2);
INSERT INTO public.itemcategorytag VALUES (5, 6);
INSERT INTO public.itemcategorytag VALUES (4, 6);
INSERT INTO public.itemcategorytag VALUES (5, 7);
INSERT INTO public.itemcategorytag VALUES (4, 7);
INSERT INTO public.itemcategorytag VALUES (6, 20);
INSERT INTO public.itemcategorytag VALUES (9, 20);
INSERT INTO public.itemcategorytag VALUES (5, 23);
INSERT INTO public.itemcategorytag VALUES (4, 23);
INSERT INTO public.itemcategorytag VALUES (5, 24);
INSERT INTO public.itemcategorytag VALUES (4, 24);
INSERT INTO public.itemcategorytag VALUES (11, 24);


--
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: merk; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.merk VALUES (1, 'Merk', '', '', NULL);
INSERT INTO public.merk VALUES (3, 'Radja', 'RAM', NULL, NULL);


--
-- Data for Name: metrics; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.metrics VALUES ('Pcs', 1, '', NULL);


--
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_access_token; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.oauth_access_token VALUES ('7d57ca0c278ef647b72187b4c38fcc50', '\xaced0005737200436f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f4175746832416363657373546f6b656e0cb29e361b24face0200064c00156164646974696f6e616c496e666f726d6174696f6e74000f4c6a6176612f7574696c2f4d61703b4c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b4c000c72656672657368546f6b656e74003f4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f636f6d6d6f6e2f4f417574683252656672657368546f6b656e3b4c000573636f706574000f4c6a6176612f7574696c2f5365743b4c0009746f6b656e547970657400124c6a6176612f6c616e672f537472696e673b4c000576616c756571007e000578707372001e6a6176612e7574696c2e436f6c6c656374696f6e7324456d7074794d6170593614855adce7d002000078707372000e6a6176612e7574696c2e44617465686a81014b5974190300007870770800000164dad3daf7787372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e71007e0002787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c756571007e0005787074002439333033363930322d663133302d343333662d613165382d3138333338613865333462327371007e000977080000016502f215a178737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c0001637400164c6a6176612f7574696c2f436f6c6c656374696f6e3b7870737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000043f40000000000003740003666f6f7400047265616474000577726974657874000662656172657274002465643637353562362d663938652d343862652d623139342d623137313236366562356631', 'dce9f31aa06d749fe553e087f3f8a13f', 'admin', 'fooClientIdPassword', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000037708000000040000000274000a6772616e745f7479706574000870617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0023770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0023770c000000103f40000000000000787371007e0023770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e002f737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000271007e001c71007e001d71007e001e71007e001f780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0020737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e', '3dd713cc237457156834ec080d9a28e3');


--
-- Data for Name: oauth_approvals; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_client_details; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.oauth_client_details VALUES ('clientIdPassword', '', 'secret', 'read', 'password,authorization_code,refresh_token', '', '', NULL, NULL, '{}', '');
INSERT INTO public.oauth_client_details VALUES ('sampleClientId', '', NULL, 'read', 'implicit', '', '', NULL, NULL, '{}', 'read');


--
-- Data for Name: oauth_client_token; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_code; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: oauth_refresh_token; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.oauth_refresh_token VALUES ('87da25dfb9e69ea8d6e80aefa55b8ea2', '\xaced00057372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c75657400124c6a6176612f6c616e672f537472696e673b787074002433663933363365312d346135622d343961342d383338322d6130616262396566656165627372000e6a6176612e7574696c2e44617465686a81014b59741903000078707708000001645607c55878', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000067708000000080000000374000a6772616e745f7479706574000870617373776f7264740009636c69656e745f6964740013666f6f436c69656e74496450617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0025770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0025770c000000103f40000000000000787371007e0025770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e0031737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000371007e001c71007e001d71007e001e71007e001f71007e002071007e0021780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0022737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e');
INSERT INTO public.oauth_refresh_token VALUES ('3cc4e878a2b399129c16c321bb540e31', '\xaced00057372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c75657400124c6a6176612f6c616e672f537472696e673b787074002433646166303861622d636534312d346137642d386230652d3538636135663332666130627372000e6a6176612e7574696c2e44617465686a81014b59741903000078707708000001645658f99d78', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000067708000000080000000374000a6772616e745f7479706574000870617373776f7264740009636c69656e745f6964740013666f6f436c69656e74496450617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0025770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0025770c000000103f40000000000000787371007e0025770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e0031737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000371007e001c71007e001d71007e001e71007e001f71007e002071007e0021780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0022737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e');
INSERT INTO public.oauth_refresh_token VALUES ('3dd713cc237457156834ec080d9a28e3', '\xaced00057372004c6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744578706972696e674f417574683252656672657368546f6b656e2fdf47639dd0c9b70200014c000a65787069726174696f6e7400104c6a6176612f7574696c2f446174653b787200446f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e636f6d6d6f6e2e44656661756c744f417574683252656672657368546f6b656e73e10e0a6354d45e0200014c000576616c75657400124c6a6176612f6c616e672f537472696e673b787074002439333033363930322d663133302d343333662d613165382d3138333338613865333462327372000e6a6176612e7574696c2e44617465686a81014b597419030000787077080000016502f215a178', '\xaced0005737200416f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f417574683241757468656e7469636174696f6ebd400b02166252130200024c000d73746f7265645265717565737474003c4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f4f4175746832526571756573743b4c00127573657241757468656e7469636174696f6e7400324c6f72672f737072696e676672616d65776f726b2f73656375726974792f636f72652f41757468656e7469636174696f6e3b787200476f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e416273747261637441757468656e7469636174696f6e546f6b656ed3aa287e6e47640e0200035a000d61757468656e746963617465644c000b617574686f7269746965737400164c6a6176612f7574696c2f436f6c6c656374696f6e3b4c000764657461696c737400124c6a6176612f6c616e672f4f626a6563743b787000737200266a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654c697374fc0f2531b5ec8e100200014c00046c6973747400104c6a6176612f7574696c2f4c6973743b7872002c6a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65436f6c6c656374696f6e19420080cb5ef71e0200014c00016371007e00047870737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a65787000000001770400000001737200426f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e617574686f726974792e53696d706c654772616e746564417574686f7269747900000000000001f40200014c0004726f6c657400124c6a6176612f6c616e672f537472696e673b787074000a545950452041444d494e7871007e000c707372003a6f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e4f41757468325265717565737400000000000000010200075a0008617070726f7665644c000b617574686f72697469657371007e00044c000a657874656e73696f6e7374000f4c6a6176612f7574696c2f4d61703b4c000b726564697265637455726971007e000e4c00077265667265736874003b4c6f72672f737072696e676672616d65776f726b2f73656375726974792f6f61757468322f70726f76696465722f546f6b656e526571756573743b4c000b7265736f7572636549647374000f4c6a6176612f7574696c2f5365743b4c000d726573706f6e7365547970657371007e0014787200386f72672e737072696e676672616d65776f726b2e73656375726974792e6f61757468322e70726f76696465722e426173655265717565737436287a3ea37169bd0200034c0008636c69656e74496471007e000e4c001172657175657374506172616d657465727371007e00124c000573636f706571007e00147870740013666f6f436c69656e74496450617373776f7264737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c654d6170f1a5a8fe74f507420200014c00016d71007e00127870737200116a6176612e7574696c2e486173684d61700507dac1c31660d103000246000a6c6f6164466163746f724900097468726573686f6c6478703f400000000000037708000000040000000274000a6772616e745f7479706574000870617373776f7264740008757365726e616d6574000561646d696e78737200256a6176612e7574696c2e436f6c6c656374696f6e7324556e6d6f6469666961626c65536574801d92d18f9b80550200007871007e0009737200176a6176612e7574696c2e4c696e6b656448617368536574d86cd75a95dd2a1e020000787200116a6176612e7574696c2e48617368536574ba44859596b8b7340300007870770c000000103f40000000000003740003666f6f74000472656164740005777269746578017371007e0023770c000000103f40000000000000787371007e001a3f40000000000000770800000010000000007870707371007e0023770c000000103f40000000000000787371007e0023770c000000103f40000000000000787372004f6f72672e737072696e676672616d65776f726b2e73656375726974792e61757468656e7469636174696f6e2e557365726e616d6550617373776f726441757468656e7469636174696f6e546f6b656e00000000000001f40200024c000b63726564656e7469616c7371007e00054c00097072696e636970616c71007e00057871007e0003017371007e00077371007e000b0000000177040000000171007e000f7871007e002f737200176a6176612e7574696c2e4c696e6b6564486173684d617034c04e5c106cc0fb0200015a000b6163636573734f726465727871007e001a3f400000000000067708000000080000000271007e001c71007e001d71007e001e71007e001f780070737200326f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657200000000000001f40200075a00116163636f756e744e6f6e457870697265645a00106163636f756e744e6f6e4c6f636b65645a001563726564656e7469616c734e6f6e457870697265645a0007656e61626c65644c000b617574686f72697469657371007e00144c000870617373776f726471007e000e4c0008757365726e616d6571007e000e7870010101017371007e0020737200116a6176612e7574696c2e54726565536574dd98509395ed875b0300007870737200466f72672e737072696e676672616d65776f726b2e73656375726974792e636f72652e7573657264657461696c732e5573657224417574686f72697479436f6d70617261746f7200000000000001f4020000787077040000000171007e000f787074000561646d696e');


--
-- Data for Name: onhandstock; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.onhandstock VALUES (6, 1, 8436, '', '', '', NULL);
INSERT INTO public.onhandstock VALUES (18, 1, 2778, '', '', '', NULL);
INSERT INTO public.onhandstock VALUES (7, 1, 6969, '', '', '', NULL);
INSERT INTO public.onhandstock VALUES (2, 1, 4800, '', '', '', NULL);


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.product VALUES (2, 'Koda', '', true, '2018-04-27 15:35:09.148');
INSERT INTO public.product VALUES (6, 'TDA', '', true, '2018-04-27 15:46:23.967');
INSERT INTO public.product VALUES (7, 'Merah', '', true, '2018-04-27 15:47:36.22');
INSERT INTO public.product VALUES (18, 'Tong', '', true, '2018-05-02 12:14:10.97');
INSERT INTO public.product VALUES (20, 'Mon', '', true, '2018-05-11 10:48:15.7');
INSERT INTO public.product VALUES (23, 'Topeng', '', true, '2018-05-14 10:09:03.461');
INSERT INTO public.product VALUES (24, 'Koka Kola', '', true, '2018-05-14 10:09:34.322');


--
-- Data for Name: productsellprice; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.productsellprice VALUES (2, 18, 10000, 0.200000003);
INSERT INTO public.productsellprice VALUES (1, 18, 5000, 0.100000001);
INSERT INTO public.productsellprice VALUES (2, 20, 10000, 0.200000003);
INSERT INTO public.productsellprice VALUES (1, 20, 5000, 0.100000001);
INSERT INTO public.productsellprice VALUES (1, 23, 0, 0);
INSERT INTO public.productsellprice VALUES (2, 23, 0, 0);
INSERT INTO public.productsellprice VALUES (1, 24, 0, 0);


--
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.province VALUES (1, 'Nanggroe Aceh Darusalam', 'ID ');
INSERT INTO public.province VALUES (2, 'Sumatera Utara', 'ID ');
INSERT INTO public.province VALUES (3, 'Sumatera Barat', 'ID ');
INSERT INTO public.province VALUES (4, 'Riau', 'ID ');
INSERT INTO public.province VALUES (5, 'Jambi', 'ID ');
INSERT INTO public.province VALUES (6, 'Sumatera Selatan', 'ID ');
INSERT INTO public.province VALUES (7, 'Bengkulu', 'ID ');
INSERT INTO public.province VALUES (8, 'Lampung', 'ID ');
INSERT INTO public.province VALUES (9, 'Kepulauan Bangka Belitung', 'ID ');
INSERT INTO public.province VALUES (10, 'Kepulauan Riau', 'ID ');
INSERT INTO public.province VALUES (11, 'DKI Jakarta', 'ID ');
INSERT INTO public.province VALUES (12, 'Jawa Barat', 'ID ');
INSERT INTO public.province VALUES (13, 'Jawa Tengah', 'ID ');
INSERT INTO public.province VALUES (14, 'Banten', 'ID ');
INSERT INTO public.province VALUES (15, 'Jawa Timur', 'ID ');
INSERT INTO public.province VALUES (16, 'Dl Yogyakarta', 'ID ');
INSERT INTO public.province VALUES (17, 'Bali', 'ID ');
INSERT INTO public.province VALUES (18, 'Nusa Tenggara Barat', 'ID ');
INSERT INTO public.province VALUES (19, 'Nusa Tenggara Timur', 'ID ');
INSERT INTO public.province VALUES (20, 'Kalimantan Barat', 'ID ');
INSERT INTO public.province VALUES (21, 'Kalimantan Tengah', 'ID ');
INSERT INTO public.province VALUES (22, 'Kalimantan Selatan', 'ID ');
INSERT INTO public.province VALUES (23, 'Kalimantan Timur', 'ID ');
INSERT INTO public.province VALUES (24, 'Kalimantan Utara', 'ID ');
INSERT INTO public.province VALUES (25, 'Sulawesi Utara', 'ID ');
INSERT INTO public.province VALUES (26, 'Sulawesi Tengah', 'ID ');
INSERT INTO public.province VALUES (27, 'Sulawesi Selatan', 'ID ');
INSERT INTO public.province VALUES (28, 'Sulawesi Tenggara', 'ID ');
INSERT INTO public.province VALUES (29, 'Gorontalo', 'ID ');
INSERT INTO public.province VALUES (30, 'Sulawesi Barat', 'ID ');
INSERT INTO public.province VALUES (31, 'Maluku', 'ID ');
INSERT INTO public.province VALUES (32, 'Maluku Utara', 'ID ');
INSERT INTO public.province VALUES (33, 'Papua', 'ID ');
INSERT INTO public.province VALUES (34, 'Papua Barat', 'ID ');


--
-- Data for Name: regency; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.regency VALUES (2, 'Kab. Aceh Barat', 1);
INSERT INTO public.regency VALUES (3, 'Kab. Aceh Barat Daya', 1);
INSERT INTO public.regency VALUES (4, 'Kab. Aceh Besar', 1);
INSERT INTO public.regency VALUES (5, 'Kab. Aceh Jaya', 1);
INSERT INTO public.regency VALUES (6, 'Kab. Aceh Selatan', 1);
INSERT INTO public.regency VALUES (7, 'Kab. Aceh Singkil', 1);
INSERT INTO public.regency VALUES (8, 'Kab Aceh Tamiang', 1);
INSERT INTO public.regency VALUES (9, 'Kab. Aceh Tengah', 1);
INSERT INTO public.regency VALUES (10, 'Kab. Aceh Tenggara', 1);
INSERT INTO public.regency VALUES (11, 'Kab. Aceh Timur', 1);
INSERT INTO public.regency VALUES (12, 'Kab. Aceh Utara', 1);
INSERT INTO public.regency VALUES (13, 'Kab. Bener Meriah', 1);
INSERT INTO public.regency VALUES (14, 'Kab. Bireun', 1);
INSERT INTO public.regency VALUES (15, 'Kab. Gayo Lues', 1);
INSERT INTO public.regency VALUES (16, 'Kab. Nagan Raya', 1);
INSERT INTO public.regency VALUES (17, 'Kab. Pidie', 1);
INSERT INTO public.regency VALUES (18, 'Kab. Pidie Jaya', 1);
INSERT INTO public.regency VALUES (19, 'Kab. Simeulue', 1);
INSERT INTO public.regency VALUES (20, 'Kab. Asahan', 2);
INSERT INTO public.regency VALUES (21, 'Kab. Batubara', 2);
INSERT INTO public.regency VALUES (22, 'Kab. Dairi', 2);
INSERT INTO public.regency VALUES (23, 'Kab. Deliserdang', 2);
INSERT INTO public.regency VALUES (24, 'Kab. Humban Hasundutan', 2);
INSERT INTO public.regency VALUES (25, 'Kab. Karo', 2);
INSERT INTO public.regency VALUES (26, 'Kab. Labuhanbatu', 2);
INSERT INTO public.regency VALUES (27, 'Kab. Langkat', 2);
INSERT INTO public.regency VALUES (28, 'Kab. Mandating Natal', 2);
INSERT INTO public.regency VALUES (29, 'Kab. Nias', 2);
INSERT INTO public.regency VALUES (30, 'Kab. Nias Selatan', 2);
INSERT INTO public.regency VALUES (31, 'Kab. PakakBharat', 2);
INSERT INTO public.regency VALUES (32, 'Kab. Samosir', 2);
INSERT INTO public.regency VALUES (33, 'Kab. Serdan Bedagai', 2);
INSERT INTO public.regency VALUES (34, 'Kab. Simalungun', 2);
INSERT INTO public.regency VALUES (35, 'Kab. Tapanuli Selatan', 2);
INSERT INTO public.regency VALUES (36, 'Kab. Tapanuli Tengah', 2);
INSERT INTO public.regency VALUES (37, 'Kab. Tapanuli Utara', 2);
INSERT INTO public.regency VALUES (38, 'Kab. Toba Samosir', 2);
INSERT INTO public.regency VALUES (39, 'Kab. Padang Lawas Utara', 2);
INSERT INTO public.regency VALUES (40, 'Kab. Padan Lawas', 2);
INSERT INTO public.regency VALUES (41, 'Kab. Labuhanbatu Utara', 2);
INSERT INTO public.regency VALUES (42, 'Kab. Labuhanbatu Selatan', 2);
INSERT INTO public.regency VALUES (43, 'Kab. Nias Barat', 2);
INSERT INTO public.regency VALUES (44, 'Kab. Nias Utara', 2);
INSERT INTO public.regency VALUES (45, 'Kab. Agam', 3);
INSERT INTO public.regency VALUES (46, 'Kab. Dharmasraya', 3);
INSERT INTO public.regency VALUES (47, 'Kab. Limapuluhkota', 3);
INSERT INTO public.regency VALUES (48, 'Kab. Kep. Mentawai', 3);
INSERT INTO public.regency VALUES (49, 'Kab. Padang Pariaman', 3);
INSERT INTO public.regency VALUES (50, 'Kab. Pasaman', 3);
INSERT INTO public.regency VALUES (51, 'Kab. Pasaman Barat', 3);
INSERT INTO public.regency VALUES (52, 'Kab. Pesisir Selatan', 3);
INSERT INTO public.regency VALUES (53, 'Kab. Sawahlunto Sijunjung', 3);
INSERT INTO public.regency VALUES (54, 'Kab. Solok', 3);
INSERT INTO public.regency VALUES (55, 'Kab. Solok Selatan', 3);
INSERT INTO public.regency VALUES (56, 'Kab. Tanah Datar', 3);
INSERT INTO public.regency VALUES (57, 'Kab. Bengkalis', 4);
INSERT INTO public.regency VALUES (58, 'Kab. Indragiri Hilir', 4);
INSERT INTO public.regency VALUES (59, 'Kab. Indragiri Hulu', 4);
INSERT INTO public.regency VALUES (60, 'Kab. Kampar', 4);
INSERT INTO public.regency VALUES (61, 'Kab. Kuantan Singingi', 4);
INSERT INTO public.regency VALUES (62, 'Kab. Pelalawan', 4);
INSERT INTO public.regency VALUES (63, 'Kab. Rokan Hulu', 4);
INSERT INTO public.regency VALUES (64, 'Kab. Rokan Hilir', 4);
INSERT INTO public.regency VALUES (65, 'Kab. Siak', 4);
INSERT INTO public.regency VALUES (66, 'Kab. Kep. Meranti', 4);
INSERT INTO public.regency VALUES (67, 'Kab. Batanghari', 5);
INSERT INTO public.regency VALUES (68, 'Kab. Bungo', 5);
INSERT INTO public.regency VALUES (69, 'Kab. Kerinci', 5);
INSERT INTO public.regency VALUES (70, 'Kab. Merangin', 5);
INSERT INTO public.regency VALUES (71, 'Kab. Muaro Jambi', 5);
INSERT INTO public.regency VALUES (72, 'Kab. Sarolangun', 5);
INSERT INTO public.regency VALUES (73, 'Kab. Tanjung Jabung Barat', 5);
INSERT INTO public.regency VALUES (74, 'Kab. Tanjung Jabung Timur', 5);
INSERT INTO public.regency VALUES (75, 'Kab. Tebo', 5);
INSERT INTO public.regency VALUES (76, 'Kab. Banyuasin', 6);
INSERT INTO public.regency VALUES (77, 'Kab. Lahat', 6);
INSERT INTO public.regency VALUES (78, 'Kab. Empat Lawang', 6);
INSERT INTO public.regency VALUES (79, 'Kab. Muara Enim', 6);
INSERT INTO public.regency VALUES (80, 'Kab. Musi Banyuasin', 6);
INSERT INTO public.regency VALUES (81, 'Kab. Musi Rawas', 6);
INSERT INTO public.regency VALUES (82, 'Kab. Ogan Ilir', 6);
INSERT INTO public.regency VALUES (83, 'Kab. Ogan Komering Ilir', 6);
INSERT INTO public.regency VALUES (84, 'Kab. Ogan Komering Ulu', 6);
INSERT INTO public.regency VALUES (85, 'Kab. OKU Selatan', 6);
INSERT INTO public.regency VALUES (86, 'Kab. OKU Timur', 6);
INSERT INTO public.regency VALUES (87, 'Kab. Penukal Abab Lematang Ilir', 6);
INSERT INTO public.regency VALUES (88, 'Kab. Bengkulu Selatan', 7);
INSERT INTO public.regency VALUES (89, 'Kab. Bengkulu Utara', 7);
INSERT INTO public.regency VALUES (90, 'Kab. Kaur', 7);
INSERT INTO public.regency VALUES (91, 'Kab. Kepahiang', 7);
INSERT INTO public.regency VALUES (92, 'Kab. Lebong', 7);
INSERT INTO public.regency VALUES (93, 'Kab. Muko-Muko', 7);
INSERT INTO public.regency VALUES (94, 'Kab. Rejang Lebong', 7);
INSERT INTO public.regency VALUES (95, 'Kab. Seluma', 7);
INSERT INTO public.regency VALUES (96, 'Kab. Bengkulu Tengah', 7);
INSERT INTO public.regency VALUES (97, 'Kab. Lampung Barat', 8);
INSERT INTO public.regency VALUES (98, 'Kab. Lampung Selatan', 8);
INSERT INTO public.regency VALUES (99, 'Kab. Lampung Tengah', 8);
INSERT INTO public.regency VALUES (100, 'Kab. Lampung Timur', 8);
INSERT INTO public.regency VALUES (101, 'Kab. Lampung Utara', 8);
INSERT INTO public.regency VALUES (102, 'Kab. Tanggamus', 8);
INSERT INTO public.regency VALUES (103, 'Kab. Tulang Bawang', 8);
INSERT INTO public.regency VALUES (104, 'Kab. Way Kanan', 8);
INSERT INTO public.regency VALUES (105, 'Kab. Pesawaran', 8);
INSERT INTO public.regency VALUES (106, 'Kab. Pringsewu', 8);
INSERT INTO public.regency VALUES (107, 'Kab. Mesuji', 8);
INSERT INTO public.regency VALUES (108, 'Kab. Tulang Bawang Barat', 8);
INSERT INTO public.regency VALUES (109, 'Kab. Pesisir Barat', 8);
INSERT INTO public.regency VALUES (110, 'Kab. Bangka', 9);
INSERT INTO public.regency VALUES (111, 'Kab. Bangka Barat', 9);
INSERT INTO public.regency VALUES (112, 'Kab. Bangka Selatan', 9);
INSERT INTO public.regency VALUES (113, 'Kab. Bangka Tengah', 9);
INSERT INTO public.regency VALUES (114, 'Kab. Belitung', 9);
INSERT INTO public.regency VALUES (115, 'Kab. Belitung Timur', 9);
INSERT INTO public.regency VALUES (116, 'Kab. Karimun', 10);
INSERT INTO public.regency VALUES (117, 'Kab. Bintan (Kep. Riau)', 10);
INSERT INTO public.regency VALUES (118, 'Kab. Lingga', 10);
INSERT INTO public.regency VALUES (119, 'Kab. Natuna', 10);
INSERT INTO public.regency VALUES (120, 'Kab. Kep. Anambas', 10);
INSERT INTO public.regency VALUES (121, 'Kab. Kepulauan Seribu', 11);
INSERT INTO public.regency VALUES (122, 'Kab. Bandung', 12);
INSERT INTO public.regency VALUES (123, 'Kab. Bandung Barat', 12);
INSERT INTO public.regency VALUES (124, 'Kab. Bekasi', 12);
INSERT INTO public.regency VALUES (125, 'Kab. Bogor', 12);
INSERT INTO public.regency VALUES (126, 'Kab. Ciamis', 12);
INSERT INTO public.regency VALUES (127, 'Kab. Cianjur', 12);
INSERT INTO public.regency VALUES (128, 'Kab. Cirebon', 12);
INSERT INTO public.regency VALUES (129, 'Kab. Garut', 12);
INSERT INTO public.regency VALUES (130, 'Kab. Indramayu', 12);
INSERT INTO public.regency VALUES (131, 'Kab. Karawang', 12);
INSERT INTO public.regency VALUES (132, 'Kab. Kuningan', 12);
INSERT INTO public.regency VALUES (133, 'Kab. Majalengka', 12);
INSERT INTO public.regency VALUES (134, 'Kab. Purwakarta', 12);
INSERT INTO public.regency VALUES (135, 'Kab. Subang', 12);
INSERT INTO public.regency VALUES (136, 'Kab. Sukabumi', 12);
INSERT INTO public.regency VALUES (137, 'Kab. Sumedang', 12);
INSERT INTO public.regency VALUES (138, 'Kab. Tasikmalaya', 12);
INSERT INTO public.regency VALUES (139, 'Kab. Pangandaran', 12);
INSERT INTO public.regency VALUES (140, 'Kab. Banjarnegara', 13);
INSERT INTO public.regency VALUES (141, 'Kab. Banyumas', 13);
INSERT INTO public.regency VALUES (142, 'Kab. Batang', 13);
INSERT INTO public.regency VALUES (143, 'Kab. Blora', 13);
INSERT INTO public.regency VALUES (144, 'Kab. Boyolali', 13);
INSERT INTO public.regency VALUES (145, 'Kab. Brebes', 13);
INSERT INTO public.regency VALUES (146, 'Kab. Cilacap', 13);
INSERT INTO public.regency VALUES (147, 'Kab. Demak', 13);
INSERT INTO public.regency VALUES (148, 'Kab. Grobogan', 13);
INSERT INTO public.regency VALUES (149, 'Kab. Jepara', 13);
INSERT INTO public.regency VALUES (150, 'Kab. Karanganyar', 13);
INSERT INTO public.regency VALUES (151, 'Kab. Kebumen', 13);
INSERT INTO public.regency VALUES (152, 'Kab. Kendal', 13);
INSERT INTO public.regency VALUES (153, 'Kab. Klaten', 13);
INSERT INTO public.regency VALUES (154, 'Kab. Kudus', 13);
INSERT INTO public.regency VALUES (155, 'Kab. Magelang', 13);
INSERT INTO public.regency VALUES (156, 'Kab. Pati', 13);
INSERT INTO public.regency VALUES (157, 'Kab. Pekalongan', 13);
INSERT INTO public.regency VALUES (158, 'Kab. Pemalang', 13);
INSERT INTO public.regency VALUES (159, 'Kab. Purbalingga', 13);
INSERT INTO public.regency VALUES (160, 'Kab. Purworejo', 13);
INSERT INTO public.regency VALUES (161, 'Kab. Rembang', 13);
INSERT INTO public.regency VALUES (162, 'Kab. Semarang', 13);
INSERT INTO public.regency VALUES (163, 'Kab. Sragen', 13);
INSERT INTO public.regency VALUES (164, 'Kab. Sukoharjo', 13);
INSERT INTO public.regency VALUES (165, 'Kab. Tegal', 13);
INSERT INTO public.regency VALUES (166, 'Kab. Temanggung', 13);
INSERT INTO public.regency VALUES (167, 'Kab. Wonogiri', 13);
INSERT INTO public.regency VALUES (168, 'Kab. Wonosobo', 13);
INSERT INTO public.regency VALUES (169, 'Kab. Lebak', 14);
INSERT INTO public.regency VALUES (170, 'Kab. Pandeglang', 14);
INSERT INTO public.regency VALUES (171, 'Kab. Serang', 14);
INSERT INTO public.regency VALUES (172, 'Kab. Tangerang', 14);
INSERT INTO public.regency VALUES (173, 'Kab. Bangkalan', 15);
INSERT INTO public.regency VALUES (174, 'Kab. Banyuwangi', 15);
INSERT INTO public.regency VALUES (175, 'Kab. Blitar', 15);
INSERT INTO public.regency VALUES (176, 'Kab. Bojonegoro', 15);
INSERT INTO public.regency VALUES (177, 'Kab. Bondowoso', 15);
INSERT INTO public.regency VALUES (178, 'Kab. Gresik', 15);
INSERT INTO public.regency VALUES (179, 'Kab. Jember', 15);
INSERT INTO public.regency VALUES (180, 'Kab. Jombang', 15);
INSERT INTO public.regency VALUES (181, 'Kab. Kediri', 15);
INSERT INTO public.regency VALUES (182, 'Kab. Lamongan', 15);
INSERT INTO public.regency VALUES (183, 'Kab. Lumajang', 15);
INSERT INTO public.regency VALUES (184, 'Kab. Madiun', 15);
INSERT INTO public.regency VALUES (185, 'Kab. Magetan', 15);
INSERT INTO public.regency VALUES (186, 'Kab. Malang', 15);
INSERT INTO public.regency VALUES (187, 'Kab. Mojokerto', 15);
INSERT INTO public.regency VALUES (188, 'Kab. Nganjuk', 15);
INSERT INTO public.regency VALUES (189, 'Kab. Ngawi', 15);
INSERT INTO public.regency VALUES (190, 'Kab. Pacitan', 15);
INSERT INTO public.regency VALUES (191, 'Kab. Pamekasan', 15);
INSERT INTO public.regency VALUES (193, 'Kab. Ponorogo', 15);
INSERT INTO public.regency VALUES (194, 'Kab. Probolinggo', 15);
INSERT INTO public.regency VALUES (195, 'Kab. Sampang', 15);
INSERT INTO public.regency VALUES (196, 'Kab. Sidoarjo', 15);
INSERT INTO public.regency VALUES (197, 'Kab. Situbondo', 15);
INSERT INTO public.regency VALUES (198, 'Kab. Sumenep', 15);
INSERT INTO public.regency VALUES (199, 'Kab. Trenggalek', 15);
INSERT INTO public.regency VALUES (200, 'Kab. Tulungagung', 15);
INSERT INTO public.regency VALUES (201, 'Kab. Tuban', 15);
INSERT INTO public.regency VALUES (202, 'Kab. Bantul', 16);
INSERT INTO public.regency VALUES (203, 'Kab. Gunung Kidul', 16);
INSERT INTO public.regency VALUES (204, 'Kab. Kulon Progo', 16);
INSERT INTO public.regency VALUES (205, 'Kab. Sleman', 16);
INSERT INTO public.regency VALUES (206, 'Kab. Badung', 17);
INSERT INTO public.regency VALUES (207, 'Kab. Bangli', 17);
INSERT INTO public.regency VALUES (208, 'Kab. Buleleng', 17);
INSERT INTO public.regency VALUES (209, 'Kab. Gianyar', 17);
INSERT INTO public.regency VALUES (210, 'Kab. Jembrana', 17);
INSERT INTO public.regency VALUES (211, 'Kab. Karang Asem', 17);
INSERT INTO public.regency VALUES (212, 'Kab. Klungkung', 17);
INSERT INTO public.regency VALUES (213, 'Kab. Tabanan', 17);
INSERT INTO public.regency VALUES (214, 'Kab. Bima', 18);
INSERT INTO public.regency VALUES (215, 'Kab. Dompu', 18);
INSERT INTO public.regency VALUES (216, 'Kab. Lombok Barat', 18);
INSERT INTO public.regency VALUES (217, 'Kab. Lombok Tengah', 18);
INSERT INTO public.regency VALUES (218, 'Kab. Lombok Timur', 18);
INSERT INTO public.regency VALUES (219, 'Kab. Sumbawa', 18);
INSERT INTO public.regency VALUES (220, 'Kab. Sumbawa Barat', 18);
INSERT INTO public.regency VALUES (221, 'Kab. Lombok Utara', 18);
INSERT INTO public.regency VALUES (222, 'Kab. Alor', 19);
INSERT INTO public.regency VALUES (223, 'Kab. Belu', 19);
INSERT INTO public.regency VALUES (224, 'Kab. Ende', 19);
INSERT INTO public.regency VALUES (225, 'Kab. Flores Timur', 19);
INSERT INTO public.regency VALUES (226, 'Kab. Kupang', 19);
INSERT INTO public.regency VALUES (227, 'Kab. Lembata', 19);
INSERT INTO public.regency VALUES (228, 'Kab. Manggarai', 19);
INSERT INTO public.regency VALUES (229, 'Kab. Manggarai Barat', 19);
INSERT INTO public.regency VALUES (230, 'Kab. Ngada', 19);
INSERT INTO public.regency VALUES (231, 'Kab. Nagekeo', 19);
INSERT INTO public.regency VALUES (232, 'Kab. Rote Ndao', 19);
INSERT INTO public.regency VALUES (233, 'Kab. Slkka', 19);
INSERT INTO public.regency VALUES (234, 'Kab. Sumba Barat', 19);
INSERT INTO public.regency VALUES (235, 'Kab. Sumba Barat Daya', 19);
INSERT INTO public.regency VALUES (236, 'Kab. Sumba Tengah', 19);
INSERT INTO public.regency VALUES (237, 'Kab. Manggarai Timur', 19);
INSERT INTO public.regency VALUES (238, 'Kab. Sumba Timur', 19);
INSERT INTO public.regency VALUES (239, 'Kab. Timor Tengah Selatan', 19);
INSERT INTO public.regency VALUES (240, 'Kab. Timor Tengah Utara', 19);
INSERT INTO public.regency VALUES (241, 'Kab. Sabu Raijua', 19);
INSERT INTO public.regency VALUES (242, 'Kab. Malaka', 19);
INSERT INTO public.regency VALUES (243, 'Kab. Bengkayang', 20);
INSERT INTO public.regency VALUES (244, 'Kab. Kapuas Hulu', 20);
INSERT INTO public.regency VALUES (245, 'Kab. Ketapang', 20);
INSERT INTO public.regency VALUES (246, 'Kab. Kayong Utara', 20);
INSERT INTO public.regency VALUES (247, 'Kab. Kubu Raya', 20);
INSERT INTO public.regency VALUES (248, 'Kab. Landak', 20);
INSERT INTO public.regency VALUES (249, 'Kab. Melawi', 20);
INSERT INTO public.regency VALUES (250, 'Kab. Pontianak', 20);
INSERT INTO public.regency VALUES (251, 'Kab. Sambas', 20);
INSERT INTO public.regency VALUES (252, 'Kab. Sanggau', 20);
INSERT INTO public.regency VALUES (253, 'Kab. Sintang', 20);
INSERT INTO public.regency VALUES (254, 'Kab. Sekadau', 20);
INSERT INTO public.regency VALUES (255, 'Kab. Barito Selatan', 21);
INSERT INTO public.regency VALUES (256, 'Kab. Barito Timur', 21);
INSERT INTO public.regency VALUES (257, 'Kab. Barito Utara', 21);
INSERT INTO public.regency VALUES (258, 'Kab. Gunung Mas', 21);
INSERT INTO public.regency VALUES (259, 'Kab. Kapuas', 21);
INSERT INTO public.regency VALUES (260, 'Kab. Katingan', 21);
INSERT INTO public.regency VALUES (261, 'Kab. Kotawaringin Barat', 21);
INSERT INTO public.regency VALUES (262, 'Kab. Kotawaringin Timur', 21);
INSERT INTO public.regency VALUES (263, 'Kab. Lamandau', 21);
INSERT INTO public.regency VALUES (264, 'Kab. Murung Raya', 21);
INSERT INTO public.regency VALUES (265, 'Kab. Pulang Pisau', 21);
INSERT INTO public.regency VALUES (266, 'Kab. Seruyan', 21);
INSERT INTO public.regency VALUES (267, 'Kab. Sukamara', 21);
INSERT INTO public.regency VALUES (268, 'Kab. Balangan', 22);
INSERT INTO public.regency VALUES (269, 'Kab. Banjar', 22);
INSERT INTO public.regency VALUES (270, 'Kab. Barito Kuala', 22);
INSERT INTO public.regency VALUES (271, 'Kab. Hulu Sungai Selatan', 22);
INSERT INTO public.regency VALUES (272, 'Kab. Hulu Sungai Tengah', 22);
INSERT INTO public.regency VALUES (273, 'Kab. Hulu Sungai Utara', 22);
INSERT INTO public.regency VALUES (274, 'Kab. Kotabaru', 22);
INSERT INTO public.regency VALUES (275, 'Kab. Tabalong', 22);
INSERT INTO public.regency VALUES (276, 'Kab. Tanah Bumbu', 22);
INSERT INTO public.regency VALUES (277, 'Kab. Tanah Laut', 22);
INSERT INTO public.regency VALUES (278, 'Kab. Tapin', 22);
INSERT INTO public.regency VALUES (279, 'Kab. Berau', 23);
INSERT INTO public.regency VALUES (280, 'Kab. Bulungan', 23);
INSERT INTO public.regency VALUES (281, 'Kab. Kutai Barat', 23);
INSERT INTO public.regency VALUES (282, 'Kab. Kutai Kertanegara', 23);
INSERT INTO public.regency VALUES (283, 'Kab. Kutai Timur', 23);
INSERT INTO public.regency VALUES (284, 'Kab. Penajam Paser Utara', 23);
INSERT INTO public.regency VALUES (285, 'Kab. Pasir', 23);
INSERT INTO public.regency VALUES (286, 'Kab. Mahakam Ulu', 23);
INSERT INTO public.regency VALUES (287, 'Kab Malinau', 24);
INSERT INTO public.regency VALUES (288, 'Kab. Nunukan', 24);
INSERT INTO public.regency VALUES (289, 'Kab. Tana Tidung', 24);
INSERT INTO public.regency VALUES (290, 'Kab. Bolaang Mongondow', 25);
INSERT INTO public.regency VALUES (291, 'Kab. Bolaang Mongondow Utara', 25);
INSERT INTO public.regency VALUES (292, 'Kab. Minahasa', 25);
INSERT INTO public.regency VALUES (293, 'Kab. Minahasa Tenggara', 25);
INSERT INTO public.regency VALUES (294, 'Kab. Minahasa Selatan', 25);
INSERT INTO public.regency VALUES (295, 'Kab. Minahasa Utara', 25);
INSERT INTO public.regency VALUES (296, 'Kab. Sangihe Talaud', 25);
INSERT INTO public.regency VALUES (297, 'Kab. Kep. Talaud', 25);
INSERT INTO public.regency VALUES (298, 'Kab. Kep. Siau Tagulandang Biaro', 25);
INSERT INTO public.regency VALUES (299, 'Kab. Bolaang Mongondow Timur', 25);
INSERT INTO public.regency VALUES (300, 'Kab. Bolaang Mongondow Selatan', 25);
INSERT INTO public.regency VALUES (301, 'Kab. Banggai', 26);
INSERT INTO public.regency VALUES (302, 'Kab. Banggai Kepulauan', 26);
INSERT INTO public.regency VALUES (303, 'Kab. Buol', 26);
INSERT INTO public.regency VALUES (304, 'Kab. Donggala', 26);
INSERT INTO public.regency VALUES (305, 'Kab. Morowali', 26);
INSERT INTO public.regency VALUES (306, 'Kab. Parigi Mountong', 26);
INSERT INTO public.regency VALUES (307, 'Kab. Poso', 26);
INSERT INTO public.regency VALUES (308, 'Kab. Tojo Una-Una', 26);
INSERT INTO public.regency VALUES (309, 'Kab. Toli-Toli', 26);
INSERT INTO public.regency VALUES (310, 'Kab. Sigi', 26);
INSERT INTO public.regency VALUES (311, 'Kab. Banggai Laut', 26);
INSERT INTO public.regency VALUES (312, 'Kab. Selayar', 27);
INSERT INTO public.regency VALUES (313, 'Kab. Bantaeng', 27);
INSERT INTO public.regency VALUES (314, 'Kab. Barru', 27);
INSERT INTO public.regency VALUES (315, 'Kab. Bone', 27);
INSERT INTO public.regency VALUES (316, 'Kab. Bulukumba', 27);
INSERT INTO public.regency VALUES (317, 'Kab. Enrekang', 27);
INSERT INTO public.regency VALUES (318, 'Kab. Gowa', 27);
INSERT INTO public.regency VALUES (319, 'Kab. Jeneponto', 27);
INSERT INTO public.regency VALUES (320, 'Kab. Luwu', 27);
INSERT INTO public.regency VALUES (321, 'Kab. Luwu Timur', 27);
INSERT INTO public.regency VALUES (322, 'Kab. Luwu Utara', 27);
INSERT INTO public.regency VALUES (323, 'Kab. Maros', 27);
INSERT INTO public.regency VALUES (324, 'Kab. Pangkep', 27);
INSERT INTO public.regency VALUES (325, 'Kab. Pinrang', 27);
INSERT INTO public.regency VALUES (326, 'Kab. Sidenreng Rappang', 27);
INSERT INTO public.regency VALUES (327, 'Kab. Sinjai', 27);
INSERT INTO public.regency VALUES (328, 'Kab. Soppeng', 27);
INSERT INTO public.regency VALUES (329, 'Kab. Takalar', 27);
INSERT INTO public.regency VALUES (330, 'Kab. Tanatoraja', 27);
INSERT INTO public.regency VALUES (332, 'Kab. Toraja Utara', 27);
INSERT INTO public.regency VALUES (333, 'Kab. Bombana', 28);
INSERT INTO public.regency VALUES (334, 'Kab. Buton', 28);
INSERT INTO public.regency VALUES (335, 'Kab. Konawe (dulu: Kab. Kendari)', 28);
INSERT INTO public.regency VALUES (336, 'Kab. Kolaka', 28);
INSERT INTO public.regency VALUES (337, 'Kab. Kolaka Utara', 28);
INSERT INTO public.regency VALUES (338, 'Kab. Konawe Selatan', 28);
INSERT INTO public.regency VALUES (339, 'Kab. Muna', 28);
INSERT INTO public.regency VALUES (340, 'Kab. Wakatobi', 28);
INSERT INTO public.regency VALUES (341, 'Kab. Konawe Utara', 28);
INSERT INTO public.regency VALUES (342, 'Kab. Buton Utara', 28);
INSERT INTO public.regency VALUES (343, 'Kab. Kolaka Timur', 28);
INSERT INTO public.regency VALUES (344, 'Kab. Boalemo', 29);
INSERT INTO public.regency VALUES (345, 'Kab. Bone Bolango', 29);
INSERT INTO public.regency VALUES (346, 'Kab. Gorontalo', 29);
INSERT INTO public.regency VALUES (347, 'Kab. Gorontalo Utara', 29);
INSERT INTO public.regency VALUES (348, 'Kab. Pohuwato', 29);
INSERT INTO public.regency VALUES (349, 'Kab. Mamuju', 30);
INSERT INTO public.regency VALUES (350, 'Kab. Majene', 30);
INSERT INTO public.regency VALUES (351, 'Kab. Mamuju Utara', 30);
INSERT INTO public.regency VALUES (352, 'Kab. Mamasa', 30);
INSERT INTO public.regency VALUES (353, 'Kab. Polewali Mamasa', 30);
INSERT INTO public.regency VALUES (354, 'Kab. Mamuju Tengah', 30);
INSERT INTO public.regency VALUES (355, 'Kab. Buru', 31);
INSERT INTO public.regency VALUES (356, 'Kab. Kepulauan Aru', 31);
INSERT INTO public.regency VALUES (357, 'Kab. Seram Bagian Barat', 31);
INSERT INTO public.regency VALUES (358, 'Kab. Seram Bagian Timur', 31);
INSERT INTO public.regency VALUES (359, 'Kab. Maluku Tengah', 31);
INSERT INTO public.regency VALUES (360, 'Kab. Maluku Tenggara', 31);
INSERT INTO public.regency VALUES (361, 'Kab. Maluku Tenggara Barat', 31);
INSERT INTO public.regency VALUES (362, 'Kab. Maluku Barat Daya', 31);
INSERT INTO public.regency VALUES (363, 'Kab. Buru Selatan', 31);
INSERT INTO public.regency VALUES (364, 'Kab. Halmahera Barat', 32);
INSERT INTO public.regency VALUES (365, 'Kab. Halmahera Selatan', 32);
INSERT INTO public.regency VALUES (366, 'Kab. Halmahera Tengah', 32);
INSERT INTO public.regency VALUES (367, 'Kab. Halmahera Tirnur', 32);
INSERT INTO public.regency VALUES (368, 'Kab Halmahera Utara', 32);
INSERT INTO public.regency VALUES (369, 'Kab. Kepulauan Sula', 32);
INSERT INTO public.regency VALUES (370, 'Kab. Morotai', 32);
INSERT INTO public.regency VALUES (371, 'Kab. Pulau Taliabu', 32);
INSERT INTO public.regency VALUES (372, 'Kab. Asmat', 33);
INSERT INTO public.regency VALUES (373, 'Kab. Biak Numfor', 33);
INSERT INTO public.regency VALUES (374, 'Kab. Boven Digoel', 33);
INSERT INTO public.regency VALUES (375, 'Kab. Jayapura', 33);
INSERT INTO public.regency VALUES (376, 'Kab. Jayawijaya', 33);
INSERT INTO public.regency VALUES (377, 'Kab. Keerom', 33);
INSERT INTO public.regency VALUES (378, 'Kab. Mappi', 33);
INSERT INTO public.regency VALUES (379, 'Kab. Merauke', 33);
INSERT INTO public.regency VALUES (380, 'Kab. Mimika', 33);
INSERT INTO public.regency VALUES (381, 'Kab. Paniai', 33);
INSERT INTO public.regency VALUES (382, 'Kab. Pegunungan Bintang', 33);
INSERT INTO public.regency VALUES (383, 'Kab. Puncak Jaya', 33);
INSERT INTO public.regency VALUES (384, 'Kab. Sarmi', 33);
INSERT INTO public.regency VALUES (385, 'Kab. Mamberamo Raya', 33);
INSERT INTO public.regency VALUES (386, 'Kab. Supiori', 33);
INSERT INTO public.regency VALUES (387, 'Kab. Tolikara', 33);
INSERT INTO public.regency VALUES (388, 'Kab. Yahukimo', 33);
INSERT INTO public.regency VALUES (389, 'Kab. Yapen Waropen', 33);
INSERT INTO public.regency VALUES (390, 'Kab. Waropen', 33);
INSERT INTO public.regency VALUES (391, 'Kab. Nabire', 33);
INSERT INTO public.regency VALUES (392, 'Kab. Mamberamo Tengah', 33);
INSERT INTO public.regency VALUES (393, 'Kab. Yalimo', 33);
INSERT INTO public.regency VALUES (394, 'Kab. Lanny Jaya', 33);
INSERT INTO public.regency VALUES (395, 'Kab. Nduga', 33);
INSERT INTO public.regency VALUES (396, 'Kab. Puncak', 33);
INSERT INTO public.regency VALUES (397, 'Kab. Dogiyai', 33);
INSERT INTO public.regency VALUES (398, 'Kab. Deiyai', 33);
INSERT INTO public.regency VALUES (399, 'Kab. Intan Jaya', 33);
INSERT INTO public.regency VALUES (400, 'Kab. Fak-Fak', 34);
INSERT INTO public.regency VALUES (401, 'Kab. Kaimana', 34);
INSERT INTO public.regency VALUES (402, 'Kab. Kepulauan Raja Ampat', 34);
INSERT INTO public.regency VALUES (403, 'Kab. Manokwari', 34);
INSERT INTO public.regency VALUES (404, 'Kab. Sorong Selatan', 34);
INSERT INTO public.regency VALUES (405, 'Kab. Teluk Bintuni', 34);
INSERT INTO public.regency VALUES (406, 'Kab. Sorong', 34);
INSERT INTO public.regency VALUES (407, 'Kab. Teluk Wondama', 34);
INSERT INTO public.regency VALUES (408, 'Kab. Tambrauw', 34);
INSERT INTO public.regency VALUES (409, 'Kab. Maybrat', 34);
INSERT INTO public.regency VALUES (410, 'Kab. Manokwari Selatan', 34);
INSERT INTO public.regency VALUES (411, 'Kab. Pegunungan Arfak', 34);
INSERT INTO public.regency VALUES (412, 'Kota Banda Aceh', 1);
INSERT INTO public.regency VALUES (413, 'Kota Subulussalam', 1);
INSERT INTO public.regency VALUES (414, 'Kota Langsa', 1);
INSERT INTO public.regency VALUES (415, 'Kota Lhokseumawe', 1);
INSERT INTO public.regency VALUES (416, 'Kota Saban', 1);
INSERT INTO public.regency VALUES (417, 'Kota Medan', 2);
INSERT INTO public.regency VALUES (418, 'Kota Binjai', 2);
INSERT INTO public.regency VALUES (419, 'Kota Padang Sidempuan', 2);
INSERT INTO public.regency VALUES (420, 'Kota Pematan Siantar', 2);
INSERT INTO public.regency VALUES (421, 'Kota Sibolga', 2);
INSERT INTO public.regency VALUES (422, 'Kota Tanjung Balai', 2);
INSERT INTO public.regency VALUES (423, 'Kota TebingTinggi', 2);
INSERT INTO public.regency VALUES (424, 'Kota Gunung Sitoli', 2);
INSERT INTO public.regency VALUES (425, 'Kota Padang', 3);
INSERT INTO public.regency VALUES (426, 'Kota BukitTinggi', 3);
INSERT INTO public.regency VALUES (427, 'Kota Pandang Panjang', 3);
INSERT INTO public.regency VALUES (428, 'Kota Pariaman', 3);
INSERT INTO public.regency VALUES (429, 'Kota Payakumbuh', 3);
INSERT INTO public.regency VALUES (430, 'Kota Sawahlunto', 3);
INSERT INTO public.regency VALUES (431, 'Kota Solok', 3);
INSERT INTO public.regency VALUES (432, 'Kota Pekanbaru', 4);
INSERT INTO public.regency VALUES (433, 'Kota Dumai', 4);
INSERT INTO public.regency VALUES (434, 'Kota Jambi', 5);
INSERT INTO public.regency VALUES (435, 'Kota Sungai Penuh', 5);
INSERT INTO public.regency VALUES (436, 'Kota Palembang', 6);
INSERT INTO public.regency VALUES (437, 'Kota Lubuk Linggau', 6);
INSERT INTO public.regency VALUES (438, 'Kota Pagar Alam', 6);
INSERT INTO public.regency VALUES (439, 'Kota Prabumulih', 6);
INSERT INTO public.regency VALUES (440, 'Kota Bengkulu', 7);
INSERT INTO public.regency VALUES (441, 'Kota Bandarlampung', 8);
INSERT INTO public.regency VALUES (442, 'Kota Metro', 8);
INSERT INTO public.regency VALUES (443, 'Kota Pangkalpinang', 9);
INSERT INTO public.regency VALUES (444, 'Kota Tanjungpinang', 10);
INSERT INTO public.regency VALUES (445, 'Kota Batam', 10);
INSERT INTO public.regency VALUES (446, 'Jakarta Barat', 11);
INSERT INTO public.regency VALUES (447, 'Jakarta Pusat', 11);
INSERT INTO public.regency VALUES (448, 'Jakarta Selatan', 11);
INSERT INTO public.regency VALUES (449, 'Jakarta Timur', 11);
INSERT INTO public.regency VALUES (450, 'Jakarta Utara', 11);
INSERT INTO public.regency VALUES (451, 'Kota Bandung', 12);
INSERT INTO public.regency VALUES (452, 'Kota Banjar', 12);
INSERT INTO public.regency VALUES (453, 'Kota Bekasi', 12);
INSERT INTO public.regency VALUES (454, 'Kota Bogor', 12);
INSERT INTO public.regency VALUES (455, 'Kota Cimahi', 12);
INSERT INTO public.regency VALUES (456, 'Kota Cirebon', 12);
INSERT INTO public.regency VALUES (457, 'Kota Depok', 12);
INSERT INTO public.regency VALUES (458, 'Kota Sukabumi', 12);
INSERT INTO public.regency VALUES (459, 'Kota Tasikmalaya', 12);
INSERT INTO public.regency VALUES (460, 'Kota Semarang', 13);
INSERT INTO public.regency VALUES (461, 'Kota Magelang', 13);
INSERT INTO public.regency VALUES (462, 'Kota Pekalongan', 13);
INSERT INTO public.regency VALUES (463, 'Kota Salatiga', 13);
INSERT INTO public.regency VALUES (464, 'Kota Surakarta', 13);
INSERT INTO public.regency VALUES (465, 'Kota Tegal', 13);
INSERT INTO public.regency VALUES (466, 'Kota Cilegon', 14);
INSERT INTO public.regency VALUES (467, 'Kota Serang', 14);
INSERT INTO public.regency VALUES (468, 'Kota Tangerang', 14);
INSERT INTO public.regency VALUES (469, 'Kota Tangerang Selatan', 14);
INSERT INTO public.regency VALUES (470, 'Kota Surabaya', 15);
INSERT INTO public.regency VALUES (471, 'Kota Batu', 15);
INSERT INTO public.regency VALUES (472, 'Kota Blitar', 15);
INSERT INTO public.regency VALUES (473, 'Kota Kediri', 15);
INSERT INTO public.regency VALUES (474, 'Kota Madiun', 15);
INSERT INTO public.regency VALUES (475, 'Kota Malang', 15);
INSERT INTO public.regency VALUES (476, 'Kota Mojokerto', 15);
INSERT INTO public.regency VALUES (477, 'Kota Pasuruan', 15);
INSERT INTO public.regency VALUES (478, 'Kota Probolinggo', 15);
INSERT INTO public.regency VALUES (479, 'Kota Yogyakarta', 16);
INSERT INTO public.regency VALUES (480, 'Kota Denpasar', 17);
INSERT INTO public.regency VALUES (481, 'Kota Mataram', 18);
INSERT INTO public.regency VALUES (482, 'Kota Bima', 18);
INSERT INTO public.regency VALUES (483, 'Kota Kupang', 19);
INSERT INTO public.regency VALUES (484, 'Kota Pontianak', 20);
INSERT INTO public.regency VALUES (485, 'Kota Singkawang', 20);
INSERT INTO public.regency VALUES (486, 'Kota Palangkaraya', 21);
INSERT INTO public.regency VALUES (487, 'Kota Banjarmasin', 22);
INSERT INTO public.regency VALUES (488, 'Kota Banjar Baru', 22);
INSERT INTO public.regency VALUES (489, 'Kota Samarinda', 23);
INSERT INTO public.regency VALUES (490, 'Kota Balikpapan', 23);
INSERT INTO public.regency VALUES (491, 'Kota Bontang', 23);
INSERT INTO public.regency VALUES (492, 'Kota Tarakan', 23);
INSERT INTO public.regency VALUES (493, 'Kota Manado', 25);
INSERT INTO public.regency VALUES (494, 'Kota Kotamobagu', 25);
INSERT INTO public.regency VALUES (495, 'Kota Bitung', 25);
INSERT INTO public.regency VALUES (496, 'Kota Tomohon', 25);
INSERT INTO public.regency VALUES (497, 'Kota Palu', 26);
INSERT INTO public.regency VALUES (498, 'Kota Makasar', 27);
INSERT INTO public.regency VALUES (499, 'Kota Pare-Pare', 27);
INSERT INTO public.regency VALUES (500, 'Kota Palopo', 27);
INSERT INTO public.regency VALUES (501, 'Kota Kendari', 28);
INSERT INTO public.regency VALUES (502, 'Kota Bau-Bau', 28);
INSERT INTO public.regency VALUES (503, 'Kota Gorontalo', 29);
INSERT INTO public.regency VALUES (504, 'Kota Ambon', 31);
INSERT INTO public.regency VALUES (505, 'Kota Tual', 31);
INSERT INTO public.regency VALUES (506, 'Kota Ternate', 32);
INSERT INTO public.regency VALUES (507, 'Kota Tidore Kepulauan', 32);
INSERT INTO public.regency VALUES (508, 'Kota Jayapura', 33);
INSERT INTO public.regency VALUES (509, 'Kota Sorong', 34);
INSERT INTO public.regency VALUES (192, 'Kab. Pasuruan', 15);
INSERT INTO public.regency VALUES (331, 'Kab. Wajo', 27);


--
-- Data for Name: salesinvoice; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesinvoice VALUES (5, '2018-04-30 16:50:37.779', 7, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 0, 'RRR', 300000, '2018-04-30', '9191');
INSERT INTO public.salesinvoice VALUES (6, '2018-05-02 13:18:50.163', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 0, 'RRR', 240000, '2018-05-02', '112233');
INSERT INTO public.salesinvoice VALUES (7, '2018-05-11 11:38:27.869', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 0, 'RRR', 44446666, '2018-05-11', '112233');
INSERT INTO public.salesinvoice VALUES (8, '2018-05-14 10:38:15.338', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL, 2, 'LLL', 100000, '2018-05-14', '11223344');


--
-- Data for Name: salesinvoiceitem; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesinvoiceitem VALUES (5, 2, 200, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (5, 6, 200, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (5, 7, 40, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (6, 2, 44, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (6, 6, 100, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (6, 18, 400, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (7, 6, 120, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (7, 7, 20, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (8, 2, 132, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (8, 6, 32, NULL, 0, 0);
INSERT INTO public.salesinvoiceitem VALUES (8, 7, 43, NULL, 0, 0);


--
-- Data for Name: salesofficer; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesofficer VALUES (9);
INSERT INTO public.salesofficer VALUES (12);
INSERT INTO public.salesofficer VALUES (16);
INSERT INTO public.salesofficer VALUES (20);
INSERT INTO public.salesofficer VALUES (25);


--
-- Data for Name: salesorder; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesorder VALUES (15, '2018-05-08 23:59:59', 7, 0, 0, 0, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder VALUES (16, '2018-05-09 23:59:59', 7, 0, 0, 0, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder VALUES (17, '2018-05-09 23:59:59', 7, 1, 0, 0, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder VALUES (18, '2018-05-09 23:59:59', 7, 2, 2, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'No No');
INSERT INTO public.salesorder VALUES (22, '2018-05-14 15:56:10.326', 14, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL);
INSERT INTO public.salesorder VALUES (23, '2018-05-09 23:59:59', 7, 1, 0, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'NoNo');
INSERT INTO public.salesorder VALUES (24, '2018-05-09 23:59:59', 11, 1, 0, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'NoNo');
INSERT INTO public.salesorder VALUES (25, '2018-05-17 10:17:21.96', 22, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL);
INSERT INTO public.salesorder VALUES (26, '2018-05-09 23:59:59', 27, 1, 0, 1, NULL, 100000, 'OOO', 0, true, NULL, '', 2000, 'NoNo');
INSERT INTO public.salesorder VALUES (27, '2018-05-17 12:50:32.175', 22, 0, 0, 0, NULL, 0, '', 0, false, NULL, '', 0, NULL);


--
-- Data for Name: salesorderitem; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.salesorderitem VALUES (15, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (15, 6, 200, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (16, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (16, 6, 200, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (17, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (17, 6, 200, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (18, 6, 200, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (18, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (22, 7, 444, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (22, 18, 2222, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (23, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (23, 6, 200, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (24, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (24, 6, 200, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (25, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (25, 7, 444, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (26, 2, 100, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (26, 6, 200, NULL, 0, 0);
INSERT INTO public.salesorderitem VALUES (27, 2, 100, NULL, 0, 0);


--
-- Data for Name: sellpricelevel; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.sellpricelevel VALUES (1, 'Normal', false, false, '');
INSERT INTO public.sellpricelevel VALUES (2, 'Special', false, false, '');


--
-- Data for Name: series; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: tire; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: usercredential; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--

INSERT INTO public.usercredential VALUES (7, NULL, 'JohnFon', '$2a$10$uPGOFHC4SZa5wZMwp7kHZ.LQhR1x9v6dqTH6Lo9OEdjp10/jJlYmC', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (9, NULL, 'Dhios', '$2a$10$YLQx9aWduBQK/LIdTXy69.BslYlD5r2PhRBHj5KyCHF05aeTOBlEK', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (11, NULL, 'Jenny', '$2a$10$me7fq9ediIvgdD/bNwXApux2fa12TKZv2ZX5jZ5fZy/62.QYESi9a', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (14, NULL, 'hitman', '$2a$10$2ENRbgVqthlBweoZAD//bunKXAABcw/asKsqkVk89zM.iRj7hn6Py', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (12, NULL, 'super', '$2a$10$zo.wzl4VZO2Ab7d87c0b5eCz6Dj7J81sH8jHbJtFl2ET2BCeRwMZe', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (16, NULL, 'bossman', '$2a$10$vLWsVHssQpQXHR.neA6FkuqQn3DiYeXqs3E5HCW/xv4C2Yn4Ob/uu', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (17, NULL, 'reno', '$2a$10$T7TEORabObFtbf3jz1hpyu0iaTEkkiIHXM.RSFk32zmcbUEugC1jO', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (18, NULL, 'json', '$2a$10$e0Z6dV2WxBzaovGCfQjprO0tixZR.65rxIoNfJq0dv7QWuTzhVa.G', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (20, NULL, 'norak', '$2a$10$4E7pwzhsuKMzK7icauWG1.AqnM.V.hAdThFmUIJabBbko1AP6mBAG', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (22, NULL, 'yamko', '$2a$10$m6WuyxDa9DS/EW0R0K4w..sWFtVC9CD4W4S.C5huD1ioA7vbKmuxe', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (23, NULL, 'kaiho', '$2a$10$L0.gHAlrd06YzPUAQze7Pe9ZfN./K4DPq2Bt2PhJRf8hMxbTBXqrq', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (25, NULL, 'Rikku', '$2a$10$pvGYbDdBSC/rOqfwBXQG2eFdNg.9TA1EoZCMwE5LxBtQipwC8gzVe', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (27, NULL, 'kiho', '$2a$10$9w6TMBIKNzpIMIP0ANKZUO1r0inoEd53vXKuVwoNKTDbOtgsmkrN2', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.usercredential VALUES (1, NULL, 'admin', '$2a$10$m6WuyxDa9DS/EW0R0K4w..sWFtVC9CD4W4S.C5huD1ioA7vbKmuxe', true, NULL, 'Default', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: usergroup; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Data for Name: usergroupaccessright; Type: TABLE DATA; Schema: public; Owner: dbexerphi_dba
--



--
-- Name: construction_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.construction_systemid_seq', 1, false);


--
-- Name: contact_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.contact_systemid_seq', 27, true);


--
-- Name: contactaddress_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.contactaddress_systemid_seq', 31, true);


--
-- Name: counterinfo_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.counterinfo_system_id_seq', 1, false);


--
-- Name: counterinfo_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.counterinfo_systemid_seq', 1, false);


--
-- Name: gudang_id_gudang_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.gudang_id_gudang_seq', 1, true);


--
-- Name: itemcategory_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.itemcategory_systemid_seq', 12, true);


--
-- Name: merk_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.merk_systemid_seq', 5, true);


--
-- Name: model_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.model_systemid_seq', 1, false);


--
-- Name: product_id_product_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.product_id_product_seq', 25, true);


--
-- Name: productsellpricehistory_id_itempricehistory_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.productsellpricehistory_id_itempricehistory_seq', 1, false);


--
-- Name: province_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.province_systemid_seq', 1, false);


--
-- Name: regency_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.regency_systemid_seq', 1, false);


--
-- Name: salesinvoice_id_si_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.salesinvoice_id_si_seq', 8, true);


--
-- Name: salesinvoice_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.salesinvoice_systemid_seq', 1, false);


--
-- Name: salesorder_id_so_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.salesorder_id_so_seq', 27, true);


--
-- Name: salesorder_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.salesorder_systemid_seq', 1, false);


--
-- Name: salesquotation_id_sq_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.salesquotation_id_sq_seq', 1, false);


--
-- Name: sellpricelevel_id_pricelevel_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.sellpricelevel_id_pricelevel_seq', 2, true);


--
-- Name: seq_gen_sequence; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.seq_gen_sequence', 50, false);


--
-- Name: usercredential_systemid_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.usercredential_systemid_seq', 27, true);


--
-- Name: vendorpayment_id_pr_seq; Type: SEQUENCE SET; Schema: public; Owner: dbexerphi_dba
--

SELECT pg_catalog.setval('public.vendorpayment_id_pr_seq', 1, false);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (systemid);


--
-- Name: cartdetail cartdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.cartdetail
    ADD CONSTRAINT cartdetail_pkey PRIMARY KEY (cust, item);


--
-- Name: clientdetails clientdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientdetails
    ADD CONSTRAINT clientdetails_pkey PRIMARY KEY (appid);


--
-- Name: construction construction_name_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.construction
    ADD CONSTRAINT construction_name_key UNIQUE (name);


--
-- Name: construction construction_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.construction
    ADD CONSTRAINT construction_pkey PRIMARY KEY (systemid);


--
-- Name: contact contact_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_pkey PRIMARY KEY (systemid);


--
-- Name: contactaddress contactaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.contactaddress
    ADD CONSTRAINT contactaddress_pkey PRIMARY KEY (systemid);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (iso_code_s2);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (systemid);


--
-- Name: driver driver_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_pkey PRIMARY KEY (systemid);


--
-- Name: facebooklogin facebooklogin_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.facebooklogin
    ADD CONSTRAINT facebooklogin_pkey PRIMARY KEY (facebookid);


--
-- Name: googlelogin googlelogin_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.googlelogin
    ADD CONSTRAINT googlelogin_pkey PRIMARY KEY (googleid);


--
-- Name: gudang gudang_name_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.gudang
    ADD CONSTRAINT gudang_name_key UNIQUE (name);


--
-- Name: gudang gudang_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.gudang
    ADD CONSTRAINT gudang_pkey PRIMARY KEY (id_gudang);


--
-- Name: item item_code_item_s50_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_code_item_s50_key UNIQUE (code_item_s50);


--
-- Name: item item_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (systemid);


--
-- Name: itemcategory itemcategory_code_category_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.itemcategory
    ADD CONSTRAINT itemcategory_code_category_key UNIQUE (code_category);


--
-- Name: itemcategory itemcategory_name_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.itemcategory
    ADD CONSTRAINT itemcategory_name_key UNIQUE (name);


--
-- Name: itemcategory itemcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.itemcategory
    ADD CONSTRAINT itemcategory_pkey PRIMARY KEY (systemid);


--
-- Name: itemcategorytag itemcategorytag_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.itemcategorytag
    ADD CONSTRAINT itemcategorytag_pkey PRIMARY KEY (id_ctgr, id_item);


--
-- Name: log log_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (obj_type, obj_id, happened_time);


--
-- Name: merk merk_name_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.merk
    ADD CONSTRAINT merk_name_key UNIQUE (name);


--
-- Name: merk merk_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.merk
    ADD CONSTRAINT merk_pkey PRIMARY KEY (systemid);


--
-- Name: metrics metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.metrics
    ADD CONSTRAINT metrics_pkey PRIMARY KEY (name_s50);


--
-- Name: model model_name_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_name_key UNIQUE (name);


--
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (systemid);


--
-- Name: oauth_access_token oauth_access_token_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.oauth_access_token
    ADD CONSTRAINT oauth_access_token_pkey PRIMARY KEY (authentication_id);


--
-- Name: oauth_client_details oauth_client_details_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.oauth_client_details
    ADD CONSTRAINT oauth_client_details_pkey PRIMARY KEY (client_id);


--
-- Name: oauth_client_token oauth_client_token_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.oauth_client_token
    ADD CONSTRAINT oauth_client_token_pkey PRIMARY KEY (authentication_id);


--
-- Name: product product_name_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_name_key UNIQUE (name);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (systemid);


--
-- Name: productsellprice productsellprice_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.productsellprice
    ADD CONSTRAINT productsellprice_pkey PRIMARY KEY (id_pricelevel, id_product);


--
-- Name: province province_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_pkey PRIMARY KEY (systemid);


--
-- Name: regency regency_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.regency
    ADD CONSTRAINT regency_pkey PRIMARY KEY (systemid);


--
-- Name: salesinvoice salesinvoice_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesinvoice
    ADD CONSTRAINT salesinvoice_pkey PRIMARY KEY (systemid);


--
-- Name: salesinvoiceitem salesinvoiceitem_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesinvoiceitem
    ADD CONSTRAINT salesinvoiceitem_pkey PRIMARY KEY (parent, item);


--
-- Name: salesofficer salesofficer_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesofficer
    ADD CONSTRAINT salesofficer_pkey PRIMARY KEY (systemid);


--
-- Name: salesorder salesorder_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesorder
    ADD CONSTRAINT salesorder_pkey PRIMARY KEY (systemid);


--
-- Name: salesorderitem salesorderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesorderitem
    ADD CONSTRAINT salesorderitem_pkey PRIMARY KEY (parent, item);


--
-- Name: sellpricelevel sellpricelevel_name_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.sellpricelevel
    ADD CONSTRAINT sellpricelevel_name_key UNIQUE (name);


--
-- Name: sellpricelevel sellpricelevel_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.sellpricelevel
    ADD CONSTRAINT sellpricelevel_pkey PRIMARY KEY (id_pricelevel);


--
-- Name: series series_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_pkey PRIMARY KEY (id_model, series);


--
-- Name: tire tire_id_model_series_size_ply_rating_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.tire
    ADD CONSTRAINT tire_id_model_series_size_ply_rating_key UNIQUE (id_model, series, size, ply_rating);


--
-- Name: tire tire_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.tire
    ADD CONSTRAINT tire_pkey PRIMARY KEY (systemid);


--
-- Name: usercredential usercredential_pkey; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.usercredential
    ADD CONSTRAINT usercredential_pkey PRIMARY KEY (systemid);


--
-- Name: usercredential usercredential_username_key; Type: CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.usercredential
    ADD CONSTRAINT usercredential_username_key UNIQUE (username);


--
-- Name: admin admin_systemid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_systemid_fkey FOREIGN KEY (systemid) REFERENCES public.contact(systemid) ON UPDATE CASCADE;


--
-- Name: cartdetail cartdetail_cust_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.cartdetail
    ADD CONSTRAINT cartdetail_cust_fkey FOREIGN KEY (cust) REFERENCES public.customer(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cartdetail cartdetail_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.cartdetail
    ADD CONSTRAINT cartdetail_item_fkey FOREIGN KEY (item) REFERENCES public.item(systemid) ON UPDATE CASCADE;


--
-- Name: contact contact_usercred_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.contact
    ADD CONSTRAINT contact_usercred_id_fkey FOREIGN KEY (usercred_id) REFERENCES public.usercredential(systemid) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: contactaddress contactaddress_owner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.contactaddress
    ADD CONSTRAINT contactaddress_owner_fkey FOREIGN KEY (owner) REFERENCES public.contact(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: contactaddress contactaddress_regency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.contactaddress
    ADD CONSTRAINT contactaddress_regency_id_fkey FOREIGN KEY (regency_id) REFERENCES public.regency(systemid) ON UPDATE CASCADE;


--
-- Name: customer customer_systemid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_systemid_fkey FOREIGN KEY (systemid) REFERENCES public.contact(systemid) ON UPDATE CASCADE;


--
-- Name: driver driver_systemid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.driver
    ADD CONSTRAINT driver_systemid_fkey FOREIGN KEY (systemid) REFERENCES public.contact(systemid) ON UPDATE CASCADE;


--
-- Name: item item_id_merk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_id_merk_fkey FOREIGN KEY (id_merk) REFERENCES public.merk(systemid) ON UPDATE CASCADE;


--
-- Name: item item_name_s50_inv_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_name_s50_inv_fkey FOREIGN KEY (name_s50_inv) REFERENCES public.metrics(name_s50) ON UPDATE CASCADE;


--
-- Name: item item_systemid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_systemid_fkey FOREIGN KEY (systemid) REFERENCES public.product(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: itemcategorytag itemcategorytag_id_ctgr_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.itemcategorytag
    ADD CONSTRAINT itemcategorytag_id_ctgr_fkey FOREIGN KEY (id_ctgr) REFERENCES public.itemcategory(systemid) ON UPDATE CASCADE;


--
-- Name: itemcategorytag itemcategorytag_id_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.itemcategorytag
    ADD CONSTRAINT itemcategorytag_id_item_fkey FOREIGN KEY (id_item) REFERENCES public.item(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: metrics metrics_metric_rinci_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.metrics
    ADD CONSTRAINT metrics_metric_rinci_fkey FOREIGN KEY (metric_rinci) REFERENCES public.metrics(name_s50) ON UPDATE CASCADE;


--
-- Name: model model_id_merk_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_id_merk_fkey FOREIGN KEY (id_merk) REFERENCES public.merk(systemid) ON UPDATE CASCADE;


--
-- Name: onhandstock onhandstock_id_gudang_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.onhandstock
    ADD CONSTRAINT onhandstock_id_gudang_fkey FOREIGN KEY (id_gudang) REFERENCES public.gudang(id_gudang) ON UPDATE CASCADE;


--
-- Name: onhandstock onhandstock_id_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.onhandstock
    ADD CONSTRAINT onhandstock_id_product_fkey FOREIGN KEY (id_product) REFERENCES public.product(systemid) ON UPDATE CASCADE;


--
-- Name: productsellprice productsellprice_id_pricelevel_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.productsellprice
    ADD CONSTRAINT productsellprice_id_pricelevel_fkey FOREIGN KEY (id_pricelevel) REFERENCES public.sellpricelevel(id_pricelevel) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: productsellprice productsellprice_id_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.productsellprice
    ADD CONSTRAINT productsellprice_id_product_fkey FOREIGN KEY (id_product) REFERENCES public.product(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: province province_country_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.province
    ADD CONSTRAINT province_country_code_fkey FOREIGN KEY (country_code) REFERENCES public.country(iso_code_s2) ON UPDATE CASCADE;


--
-- Name: regency regency_prov_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.regency
    ADD CONSTRAINT regency_prov_id_fkey FOREIGN KEY (prov_id) REFERENCES public.province(systemid) ON UPDATE CASCADE;


--
-- Name: salesinvoice salesinvoice_cust_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesinvoice
    ADD CONSTRAINT salesinvoice_cust_fkey FOREIGN KEY (cust) REFERENCES public.customer(systemid) ON UPDATE CASCADE;


--
-- Name: salesinvoiceitem salesinvoiceitem_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesinvoiceitem
    ADD CONSTRAINT salesinvoiceitem_item_fkey FOREIGN KEY (item) REFERENCES public.item(systemid) ON UPDATE CASCADE;


--
-- Name: salesinvoiceitem salesinvoiceitem_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesinvoiceitem
    ADD CONSTRAINT salesinvoiceitem_parent_fkey FOREIGN KEY (parent) REFERENCES public.salesinvoice(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: salesofficer salesofficer_systemid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesofficer
    ADD CONSTRAINT salesofficer_systemid_fkey FOREIGN KEY (systemid) REFERENCES public.contact(systemid) ON UPDATE CASCADE;


--
-- Name: salesorder salesorder_cust_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesorder
    ADD CONSTRAINT salesorder_cust_fkey FOREIGN KEY (cust) REFERENCES public.customer(systemid) ON UPDATE CASCADE;


--
-- Name: salesorderitem salesorderitem_item_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesorderitem
    ADD CONSTRAINT salesorderitem_item_fkey FOREIGN KEY (item) REFERENCES public.item(systemid) ON UPDATE CASCADE;


--
-- Name: salesorderitem salesorderitem_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.salesorderitem
    ADD CONSTRAINT salesorderitem_parent_fkey FOREIGN KEY (parent) REFERENCES public.salesorder(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: series series_id_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.series
    ADD CONSTRAINT series_id_model_fkey FOREIGN KEY (id_model) REFERENCES public.model(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tire tire_id_construction_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.tire
    ADD CONSTRAINT tire_id_construction_fkey FOREIGN KEY (id_construction) REFERENCES public.construction(systemid) ON UPDATE CASCADE;


--
-- Name: tire tire_id_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.tire
    ADD CONSTRAINT tire_id_model_fkey FOREIGN KEY (id_model, series) REFERENCES public.series(id_model, series) ON UPDATE CASCADE;


--
-- Name: tire tire_systemid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbexerphi_dba
--

ALTER TABLE ONLY public.tire
    ADD CONSTRAINT tire_systemid_fkey FOREIGN KEY (systemid) REFERENCES public.item(systemid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO dbexerphi_dba;


--
-- PostgreSQL database dump complete
--

