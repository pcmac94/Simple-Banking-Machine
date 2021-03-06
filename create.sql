connect to <DATABASE NAME>;

CREATE TABLE P1.CUSTOMER(
	ID INT NOT NULL GENERATED BY DEFAULT AS IDENTITY (START WITH 100, INCREMENT BY 1, NO CACHE) PRIMARY KEY, 
	NAME VARCHAR(15) NOT NULL, 
	GENDER CHAR(1) NOT NULL CHECK (GENDER = 'F' OR GENDER = 'M'), 
	AGE INT NOT NULL CHECK (AGE >= 0),
	PIN INT NOT NULL CHECK (PIN >= 0));

create table P1.ACCOUNT(
	NUMBER	int not null generated always as identity(start with 1000, increment by 1, no cache) primary key,
	ID		int not null,
	BALANCE	int not null check (balance >= 0),
	TYPE	char(1) not null check (TYPE = 'S' OR TYPE = 'C'),
	STATUS	char(1) not null check (STATUS = 'A' OR STATUS = 'I'),
	constraint fk_ID foreign key(ID) references P1.CUSTOMER(ID)
);