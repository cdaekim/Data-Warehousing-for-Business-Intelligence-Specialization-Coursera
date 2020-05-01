CREATE TABLE ResourceTbl
	(
    ResNo VARCHAR(8) NOT NULL,
    ResName VARCHAR(30) NOT NULL,
    Rate DECIMAL(15,2) NOT NULL,
    CHECK (Rate > 0),
    CONSTRAINT PK_ResourceTbl PRIMARY KEY (ResNo)
    );
    
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R100','attendant',10);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R101','police',15);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R102','usher',10);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R103','nurse',20);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R104','janitor',15);
Insert into RESOURCETBL (RESNO,RESNAME,RATE) values ('R105','food service',10);

SELECT * FROM RESOURCETBL;