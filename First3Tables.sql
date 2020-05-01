CREATE TABLE Customer
	(
    CustNo VARCHAR(8) NOT NULL,
    CustName VARCHAR(30) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Internal CHAR(1) NOT NULL,
    Contact VARCHAR(50) NOT NULL,
    Phone VARCHAR(11) NOT NULL,
    City VARCHAR(30) NOT NULL,
    State VARCHAR(2) NOT NULL,
    Zip VARCHAR(10) NOT NULL,
    CONSTRAINT PK_Customer PRIMARY KEY (CustNo),
	CHECK (Internal IN ("Y","N"))
    );

CREATE TABLE Facility
	(
	FacNo VARCHAR(8) NOT NULL,
    FacName VARCHAR(30) NOT NULL,
    CONSTRAINT PK_Facility PRIMARY KEY (FacNo),
    CONSTRAINT Unique_FacName UNIQUE (FacName)
    );

CREATE TABLE Location
	(
    LocNo VARCHAR(8) NOT NULL,
    FacNo VARCHAR(8) NOT NULL,
    LocName VARCHAR(30) NOT NULL,
    CONSTRAINT PK_Location PRIMARY KEY (LocNo),
    CONSTRAINT FK_FacNo FOREIGN KEY (FacNo)
		REFERENCES Facility (FacNo)
    );

Insert into CUSTOMER (CUSTNO,CUSTNAME,ADDRESS,INTERNAL,CONTACT,PHONE,CITY,STATE,ZIP) values ('C100','Football','Box 352200','Y','Mary Manager','6857100','Boulder','CO','80309');
Insert into CUSTOMER (CUSTNO,CUSTNAME,ADDRESS,INTERNAL,CONTACT,PHONE,CITY,STATE,ZIP) values ('C101','Men''s Basketball','Box 352400','Y','Sally Supervisor','5431700','Boulder','CO','80309');
Insert into CUSTOMER (CUSTNO,CUSTNAME,ADDRESS,INTERNAL,CONTACT,PHONE,CITY,STATE,ZIP) values ('C103','Baseball','Box 352020','Y','Bill Baseball','5431234','Boulder','CO','80309');
Insert into CUSTOMER (CUSTNO,CUSTNAME,ADDRESS,INTERNAL,CONTACT,PHONE,CITY,STATE,ZIP) values ('C104','Women''s Softball','Box 351200','Y','Sue Softball','5434321','Boulder','CO','80309');
Insert into CUSTOMER (CUSTNO,CUSTNAME,ADDRESS,INTERNAL,CONTACT,PHONE,CITY,STATE,ZIP) values ('C105','High School Football','123 AnyStreet','N','Coach Bob','4441234','Louisville','CO','80027');

SELECT * FROM CUSTOMER;

Insert into FACILITY (FACNO,FACNAME) values ('F100','Football stadium');
Insert into FACILITY (FACNO,FACNAME) values ('F101','Basketball arena');
Insert into FACILITY (FACNO,FACNAME) values ('F102','Baseball field');
Insert into FACILITY (FACNO,FACNAME) values ('F103','Recreation room');

SELECT * FROM FACILITY;

Insert into LOCATION (LOCNO,FACNO,LOCNAME) values ('L100','F100','Locker room');
Insert into LOCATION (LOCNO,FACNO,LOCNAME) values ('L101','F100','Plaza');
Insert into LOCATION (LOCNO,FACNO,LOCNAME) values ('L102','F100','Vehicle gate');
Insert into LOCATION (LOCNO,FACNO,LOCNAME) values ('L103','F101','Locker room');
Insert into LOCATION (LOCNO,FACNO,LOCNAME) values ('L104','F100','Ticket Booth');
Insert into LOCATION (LOCNO,FACNO,LOCNAME) values ('L105','F101','Gate');
Insert into LOCATION (LOCNO,FACNO,LOCNAME) values ('L106','F100','Pedestrian gate');

SELECT * FROM LOCATION;
