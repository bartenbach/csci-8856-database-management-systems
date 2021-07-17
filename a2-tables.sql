-- Display options
SET ECHO ON;
SET SERVEROUTPUT ON;

-- Idempotency
DROP TABLE employee;
DROP TABLE works;
DROP TABLE company;
DROP TABLE manages;

-- Table declarations
CREATE TABLE employee (
    lastname VARCHAR2(30),
    firstname VARCHAR2(30),
    midinitial CHAR(1),
    gender CHAR(1),
    street VARCHAR2(30),
    city VARCHAR2(30),
    PRIMARY KEY (lastname, firstname, midinitial)
);

CREATE TABLE works (
    lastname VARCHAR2(30),
    firstname VARCHAR2(30),
    midinitial CHAR(1),
    company_name VARCHAR2(30),
    salary NUMBER,
    PRIMARY KEY (lastname, firstname, midinitial, company_name)
);

CREATE TABLE company (
    company_name VARCHAR2(30),
    city VARCHAR2(30),
    PRIMARY KEY (company_name)
);

CREATE TABLE manages (
    lastname VARCHAR2(30),
    firstname VARCHAR2(30),
    midinitial CHAR(1),
    manager_lastname VARCHAR2(30),
    manager_firstname VARCHAR2(30),
    manager_midinitial CHAR(1),
    start_date DATE,
    PRIMARY KEY (lastname, firstname, midinitial, manager_lastname, manager_firstname, manager_midinitial)
);