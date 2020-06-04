

--
-- Name: admin; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.admin (
    systemid bigint NOT NULL
);


ALTER TABLE public.admin OWNER TO dbexerphi_dba;

--
-- Name: cartdetail; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.cartdetail (
    cust bigint NOT NULL,
    item integer NOT NULL,
    qty numeric NOT NULL,
    reqnote text
);


ALTER TABLE public.cartdetail OWNER TO dbexerphi_dba;

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


ALTER TABLE public.clientdetails OWNER TO postgres;

--
-- Name: construction; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.construction (
    systemid integer NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    memo text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.construction OWNER TO dbexerphi_dba;

--
-- Name: construction_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.construction_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.construction_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.contact OWNER TO dbexerphi_dba;

--
-- Name: contact_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.contact_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.contactaddress OWNER TO dbexerphi_dba;

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

ALTER SEQUENCE public.contactaddress_systemid_seq OWNED BY public.contactaddress.systemid;


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


ALTER TABLE public.counterinfo_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: country; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.country (
    iso_code_s2 character(2) NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.country OWNER TO dbexerphi_dba;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.customer (
    systemid bigint NOT NULL,
    timezone real NOT NULL
);


ALTER TABLE public.customer OWNER TO dbexerphi_dba;

--
-- Name: driver; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.driver (
    systemid bigint NOT NULL
);


ALTER TABLE public.driver OWNER TO dbexerphi_dba;

--
-- Name: facebooklogin; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.facebooklogin (
    facebookid character varying(255) NOT NULL,
    avatar text NOT NULL,
    usercred bigint NOT NULL
);


ALTER TABLE public.facebooklogin OWNER TO dbexerphi_dba;

--
-- Name: googlelogin; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.googlelogin (
    googleid character varying(255) NOT NULL,
    avatar text NOT NULL,
    usercred bigint NOT NULL
);


ALTER TABLE public.googlelogin OWNER TO dbexerphi_dba;

--
-- Name: gudang_id_gudang_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.gudang_id_gudang_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gudang_id_gudang_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.gudang OWNER TO dbexerphi_dba;

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


ALTER TABLE public.item OWNER TO dbexerphi_dba;

--
-- Name: itemcategory; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.itemcategory (
    systemid integer NOT NULL,
    code_category text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    memo text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.itemcategory OWNER TO dbexerphi_dba;

--
-- Name: itemcategory_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.itemcategory_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.itemcategory_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.itemcategorytag OWNER TO dbexerphi_dba;

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


ALTER TABLE public.log OWNER TO dbexerphi_dba;

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


ALTER TABLE public.merk OWNER TO dbexerphi_dba;

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

ALTER SEQUENCE public.merk_systemid_seq OWNED BY public.merk.systemid;


--
-- Name: metrics; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.metrics (
    name_s50 character varying(50) DEFAULT ''::character varying NOT NULL,
    units real DEFAULT '1'::real NOT NULL,
    memo text DEFAULT ''::text NOT NULL,
    metric_rinci character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE public.metrics OWNER TO dbexerphi_dba;

--
-- Name: model; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.model (
    systemid integer NOT NULL,
    id_merk integer NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    memo text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.model OWNER TO dbexerphi_dba;

--
-- Name: model_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.model_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.model_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.oauth_access_token OWNER TO dbexerphi_dba;

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


ALTER TABLE public.oauth_approvals OWNER TO dbexerphi_dba;

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


ALTER TABLE public.oauth_client_details OWNER TO dbexerphi_dba;

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


ALTER TABLE public.oauth_client_token OWNER TO dbexerphi_dba;

--
-- Name: oauth_code; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_code (
    code character varying(255),
    authentication bytea
);


ALTER TABLE public.oauth_code OWNER TO dbexerphi_dba;

--
-- Name: oauth_refresh_token; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.oauth_refresh_token (
    token_id character varying(255),
    token bytea,
    authentication bytea
);


ALTER TABLE public.oauth_refresh_token OWNER TO dbexerphi_dba;

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


ALTER TABLE public.onhandstock OWNER TO dbexerphi_dba;

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


ALTER TABLE public.product OWNER TO dbexerphi_dba;

--
-- Name: product_id_product_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.product_id_product_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_product_seq OWNER TO dbexerphi_dba;

--
-- Name: productsellprice; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.productsellprice (
    id_pricelevel integer NOT NULL,
    id_product integer NOT NULL,
    price numeric DEFAULT ('-1'::integer)::numeric NOT NULL,
    profitfactor real DEFAULT 0 NOT NULL
);


ALTER TABLE public.productsellprice OWNER TO dbexerphi_dba;

--
-- Name: productsellpricehistory_id_itempricehistory_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.productsellpricehistory_id_itempricehistory_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productsellpricehistory_id_itempricehistory_seq OWNER TO dbexerphi_dba;

--
-- Name: province; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.province (
    systemid bigint NOT NULL,
    name character varying(255) NOT NULL,
    country_code character(3) NOT NULL
);


ALTER TABLE public.province OWNER TO dbexerphi_dba;

--
-- Name: province_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.province_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.province_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.regency OWNER TO dbexerphi_dba;

--
-- Name: regency_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.regency_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regency_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.salesinvoice OWNER TO dbexerphi_dba;

--
-- Name: salesinvoice_id_si_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesinvoice_id_si_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salesinvoice_id_si_seq OWNER TO dbexerphi_dba;

--
-- Name: salesinvoice_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesinvoice_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salesinvoice_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.salesinvoiceitem OWNER TO dbexerphi_dba;

--
-- Name: salesofficer; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.salesofficer (
    systemid bigint NOT NULL
);


ALTER TABLE public.salesofficer OWNER TO dbexerphi_dba;

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


ALTER TABLE public.salesorder OWNER TO dbexerphi_dba;

--
-- Name: salesorder_id_so_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesorder_id_so_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salesorder_id_so_seq OWNER TO dbexerphi_dba;

--
-- Name: salesorder_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesorder_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salesorder_systemid_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.salesorderitem OWNER TO dbexerphi_dba;

--
-- Name: salesquotation_id_sq_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.salesquotation_id_sq_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salesquotation_id_sq_seq OWNER TO dbexerphi_dba;

--
-- Name: sellpricelevel_id_pricelevel_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.sellpricelevel_id_pricelevel_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sellpricelevel_id_pricelevel_seq OWNER TO dbexerphi_dba;

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


ALTER TABLE public.sellpricelevel OWNER TO dbexerphi_dba;

--
-- Name: seq_gen_sequence; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.seq_gen_sequence
    START WITH 50
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_gen_sequence OWNER TO dbexerphi_dba;

--
-- Name: series; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.series (
    id_model integer NOT NULL,
    series text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.series OWNER TO dbexerphi_dba;

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


ALTER TABLE public.tire OWNER TO dbexerphi_dba;

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


ALTER TABLE public.usercredential OWNER TO dbexerphi_dba;

--
-- Name: usercredential_systemid_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.usercredential_systemid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usercredential_systemid_seq OWNER TO dbexerphi_dba;

--
-- Name: usercredential_systemid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbexerphi_dba
--

ALTER SEQUENCE public.usercredential_systemid_seq OWNED BY public.usercredential.systemid;


--
-- Name: usergroup; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.usergroup (
);


ALTER TABLE public.usergroup OWNER TO dbexerphi_dba;

--
-- Name: usergroupaccessright; Type: TABLE; Schema: public; Owner: dbexerphi_dba
--

CREATE TABLE public.usergroupaccessright (
);


ALTER TABLE public.usergroupaccessright OWNER TO dbexerphi_dba;

--
-- Name: vendorpayment_id_pr_seq; Type: SEQUENCE; Schema: public; Owner: dbexerphi_dba
--

CREATE SEQUENCE public.vendorpayment_id_pr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vendorpayment_id_pr_seq OWNER TO dbexerphi_dba;

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

