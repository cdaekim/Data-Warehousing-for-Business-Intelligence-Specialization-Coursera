CREATE TABLE EventRequest
	(
    EventNo VARCHAR(8) NOT NULL,
    DateHeld DATE NOT NULL,
    DateReq DATE NOT NULL,
    FacNo VARCHAR(8) NOT NULL,
    CustNo VARCHAR(8) NOT NULL,
    DateAuth DATE,
	EStatus VARCHAR(20) NOT NULL,
    EstCost DECIMAL(15,2) NOT NULL,
    EstAudience INTEGER NOT NULL,
    BudNo varchar(8),
    CONSTRAINT PK_EventRequest PRIMARY KEY (EventNo),
    CONSTRAINT FK_EventRequestFacNo FOREIGN KEY (FacNo)
		REFERENCES Facility (FacNo),
	CHECK (EStatus IN ('Pending', 'Denied', 'Approved')),
    CHECK (EstAudience > 0)
	);
    
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E100',str_to_date('25,OCT,18','%d,%b,%y'),str_to_date('06,JUN,18','%d,%b,%y'),'C100','F100',str_to_date('08,JUN,18','%d,%b,%y'),'Approved',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E101',str_to_date('26,OCT,18','%d,%b,%y'),str_to_date('28,JUL,18','%d,%b,%y'),'C100','F100',null,'Pending',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E103',str_to_date('21,SEP,18','%d,%b,%y'),str_to_date('28,JUL,18','%d,%b,%y'),'C100','F100',str_to_date('01,AUG,18','%d,%b,%y'),'Approved',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E102',str_to_date('14,SEP,18','%d,%b,%y'),str_to_date('28,JUL,18','%d,%b,%y'),'C100','F100',str_to_date('31,JUL,18','%d,%b,%y'),'Approved',5000,80000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E104',str_to_date('03,DEC,18','%d,%b,%y'),str_to_date('28,JUL,18','%d,%b,%y'),'C101','F101',str_to_date('31,JUL,18','%d,%b,%y'),'Approved',2000,12000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E105',str_to_date('05,DEC,18','%d,%b,%y'),str_to_date('28,JUL,18','%d,%b,%y'),'C101','F101',str_to_date('01,AUG,18','%d,%b,%y'),'Approved',2000,10000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E106',str_to_date('12,DEC,18','%d,%b,%y'),str_to_date('28,JUL,18','%d,%b,%y'),'C101','F101',str_to_date('31,JUL,18','%d,%b,%y'),'Approved',2000,10000,'B1000');
Insert into EVENTREQUEST (EVENTNO,DATEHELD,DATEREQ,CUSTNO,FACNO,DATEAUTH,ESTATUS,ESTCOST,ESTAUDIENCE,BUDNO) values ('E107',str_to_date('23,NOV,18','%d,%b,%y'),str_to_date('28,JUL,18','%d,%b,%y'),'C105','F100',str_to_date('31,JUL,18','%d,%b,%y'),'Denied',10000,5000,null);

SELECT * FROM EVENTREQUEST;