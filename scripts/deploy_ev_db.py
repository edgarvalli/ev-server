from os import environ
from dotenv import load_dotenv
import mysql.connector

load_dotenv()

mysqldriver = mysql.connector.connect(
    host=environ.get('EV_DB_HOST', 'localhost'),
    user=environ.get("EV_DB_USER", ""),
    password=environ.get("EV_DB_PASS", "")
)

db = "evdb"

# Creation databases

query = """
    CREATE DATABASE IF NOT EXISTS evdb;
"""

c = mysqldriver.cursor()
c.execute(query)

# Users
print("Creating users table...")
query = f"""
    CREATE TABLE IF NOT EXISTS {db}.users (
        id int not null auto_increment primary key,
        displayname varchar(50),
        email varchar(100) unique,
        password varchar(100),
        photourl varchar(2048),
        created_date timestamp default now(),
        updated_date timestamp default now()
    );
"""
c.execute(query)

photourl = "https://lh3.googleusercontent.com/a/AGNmyxZX5cqylOqRMSavhDfn6KZaq_8h2uou3Re_jdkBGw=s96-c-rg-br100"
query = f"""
    INSERT INTO {db}.users (displayname,email,password,photourl)
    VALUES
    ('Edgar Valli','edgarvalli80@gmail.com',SHA1('p4ssw0rd'),'{photourl}')
"""
try:
    c.execute(query)
except mysql.connector.Error as mysqlerror:
    print(mysqlerror.msg)

# Clients
print("Creating clients tables...")
photourl = "https://as1.ftcdn.net/v2/jpg/03/64/62/36/1000_F_364623624_eTeYrOr8oM08nsPPEmV8gGb60E0MK5vp.jpg"
query = f"""
    CREATE TABLE IF NOT EXISTS {db}.clients (
        id int auto_increment primary key,
        fullname varchar(100),
        email varchar(100),
        phone varchar(20),
        address varchar(100),
        neighborhood varchar(100),
        city varchar(100),
        state varchar(100) default 'Nuevo León',
        country varchar (100) default 'México',
        zip int,
        rfc varchar(20),
        photourl varchar(2048) default '{photourl}',
        created_date timestamp default now(),
        updated_date timestamp default now()
    )
"""
c.execute(query)

# leads
print("Creating leads table...")
query = f"""
    CREATE TABLE IF NOT EXISTS {db}.leads (
        id int auto_increment primary key,
        clients_id int,
        clients_fullname varchar(100),
        todo varchar(500),
        note varchar(500),
        is_visited tinyint,
        created_date timestamp default now(),
        updated_date timestamp default now()
    )
"""
c.execute(query)

# jobs
print("Creating jobs tables...")
query = f"""
    CREATE TABLE IF NOT EXISTS {db}.jobs (
        id int auto_increment primary key,
        clients_id int,
        clients_fullname varchar(100),
        total int,
        created_date timestamp default now(),
        updated_date timestamp default now()
    );
"""
c.execute(query)

#jobs line
print("Creating jobsline tables...")
query = f"""
    CREATE TABLE IF NOT EXISTS {db}.jobsline (
        id int auto_increment primary key,
        clients_id int,
        jobs_id int,
        task varchar(100),
        amount int,
        price int,
        subtotal int,
        tax int,
        total int,
        hastax tinyint,
        created_date timestamp default now(),
        updated_date timestamp default now()
    );
"""
c.execute(query)

c.close()
mysqldriver.close()