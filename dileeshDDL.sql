create table CUSTOMERS 
(
Customer_ID Varchar2(25),
F_Name varchar(20),
L_Name Varchar(20),
Address Varchar2(50),
Age number(5),
Gender Varchar(5),
Membership_Type Varchar(25),
Constraint pk_key_Customer primary key(Customer_ID)
);

Create table ROOM_INFORMATION (
Room_NO varchar2(20),
Room_Price number(10),
Occupancy varchar(5),
Maintenance Varchar(30),
Smoking varchar(15),
Cleaning varchar2(25),
Constraint pk_key_RIN primary key(Room_NO));

Create table Bookings
(
Booking_ID vaRCHAR2(10),
Room_NO vArchar2(20),
E_id varchar2(20),
Customer_ID Varchar2(20),
Booking_Date varchar2(24),
NOD varchar2(10),
T_DATE varchar2(25),
Constraint pk_key_booking Primary Key(Booking_ID));

Create table BILLING (
Bill_ID varchar2(10),
Customer_ID Varchar2(20),
Bill_amount Number(30),
E_ID Varchar2(10),
Constraint pk_key_BILLING primary key(Bill_ID));


Create table PAYMENTS_INFO(
Trans_ID varchar2(20),
Booking_ID varchar2(10),
E_ID Varchar2 (10),
Pay_Type varchar(20),
Amount Number(10),
Card_Number number(16),
Card_Type varchar(10),
Exp_Date VARCHAR2(25),
T_date vARCHAR2(25),
Constraint pk_Key1_PAYINFO primary key(Trans_ID));


Create table EMPLOYE
(
E_ID Varchar2(10),
E_name Varchar(20),
E_SSN varchar(20),
ADDR Varchar2 (25),
Gender varchar(4),
Age varchar(3),
Pwd varchar(20),
Constraint pk_Key_Employee Primary key (E_ID)
);

Create table CHECK_INFORMATION
(check_INTIME varchar2(20),
Check_OUT_TIME varchar2(20),
NOD number(20),
Room_NO VARCHAR2(10),
Constraint pk_key_CHECK_INFORMATION Primary key(NOD)
);

Create table SERVICES 
(
Room_NO vARCHAR2(10),
Internet varchar2(10),
Laundry varchar2 (12),
Telephone VARCHAR2(16),
Constraint pk_key_Services Primary key(Room_NO)
);


Create table HOTEL_INFO
(B_ID varchar2 (10), 
B_Name Varchar2 (10),
ADDR Varchar2 (30),
Contact number(12),
E_ID Varchar(10),
Constraint pk_Key_HOTEL_info primary key(B_ID));


Create table TOURISM 
(
PTV varchar2 (50),
Distance number(20),
Duration number(10), 
E_ID Varchar2 (20),
B_ID varchar2 (12),
Constraint pk_key_Tourism Primary key(B_ID)
);


ALTER TABLE BOOKINGS ADD CONSTRAINT
 Booking_RIN_FK FOREIGN KEY
 (room_no) REFERENCES ROOM_INFORMATION
 (room_no) ADD CONSTRAINT 
 Booking_Emp_FK FOREIGN KEY
 (E_ID) REFERENCES EMPLOYE
 (E_ID);
 
 
ALTER TABLE Billing ADD CONSTRAINT
 Billing_Cust_FK FOREIGN KEY
 (customer_id) REFERENCES CUSTOMERS
 (customer_id) ADD CONSTRAINT 
 Billing_Emp_FK FOREIGN KEY
 (E_ID) REFERENCES EMPLOYE
 (E_ID); 
 
 
ALTER TABLE PAYMENTS_INFO ADD CONSTRAINT
 Pay_Info_Book_FK FOREIGN KEY
 (Booking_ID) REFERENCES Bookings
 (Booking_ID) ADD CONSTRAINT 
 Pay_Info_Emp_FK FOREIGN KEY
 (E_ID) REFERENCES EMPLOYE
 (E_ID); 
 

 ALTER TABLE CHECK_INFORMATION ADD CONSTRAINT
 CHECK_ROOM_INFO_FK FOREIGN KEY
 (ROOM_NO) REFERENCES ROOM_INFORMATION
 (ROOM_NO);
 

 ALTER TABLE SERVICES ADD CONSTRAINT
 SERV_ROOM_INFO_FK FOREIGN KEY
 (ROOM_NO) REFERENCES ROOM_INFORMATION
 (ROOM_NO);
 
 
 ALTER TABLE HOTEL_INFO ADD CONSTRAINT
 HOTEL_EMP_FK FOREIGN KEY
 (E_ID) REFERENCES EMPLOYE
 (E_ID);
 
 
 ALTER TABLE TOURISM ADD CONSTRAINT
 TOUR_HOTEL_FK FOREIGN KEY
 (B_ID) REFERENCES HOTEL_INFO
 (B_ID) ADD CONSTRAINT
 TOUR_EMP_FK FOREIGN KEY 
 (E_ID) REFERENCES EMPLOYE
 (E_ID);
 
 
 PROMPT Creating Check constraints on 'CUSTOMERS'
 alter table CUSTOMERS
 modify (f_name constraint customers_f_name_NNULL Not Null)
 modify (Address constraint customers_Address_NNULL Not Null);

 PROMPT Creating Check constraints on 'ROOM_INFORMATION'
 alter table ROOM_INFORMATION
 modify (Room_Price constraint ROOM_INFO_Room_price_NNULL Not Null);
 
 PROMPT Creating Check constraints on 'BOOKINGS'
 alter table BOOKINGS
 modify (E_ID constraint BOOKINGS_E_id_NNULL Not Null)
 modify (customer_id constraint customer_id_NNULL Not Null);
 
 PROMPT Creating Check constraints on 'BILLING'
 alter table BILLING
 modify (customer_id constraint BILLING_customer_id_NNULL Not Null)
 modify (Bill_amount constraint BILLING_Bill_amount_NNULL Not Null)
 modify (E_id constraint BILLING_E_id_NNULL Not Null);
 
 PROMPT Creating Check constraints on 'PAYMENTS_INFO'
 alter table PAYMENTS_INFO
 modify (Trans_ID constraint PAYMENTS_INFO_Trans_ID_NNULL Not Null)
 modify (Booking_ID constraint PAYMENTS_INFO_Booking_ID_NNULL Not Null)
 modify (E_ID constraint PAYMENTS_INFO_E_ID_NNULL Not Null)
 modify (Pay_Type constraint PAY_INFO_Pay_Type_NNULL Not Null)
 modify (Amount constraint PAY_INFO_Amount_NNULL Not Null)
 modify (Card_Number constraint PAY_INFO_Card_Number_NNULL Not Null)
 modify (Card_Type constraint PAYMENTS_INFO_Card_Type_NNULL Not Null)
 modify (Exp_Date constraint PAYMENTS_INFO_Exp_Date_NNULL Not Null)
 modify (T_DATE constraint PAYMENTS_INFO_T_DATE_NNULL Not Null);

PROMPT Creating Check constraints on 'EMPLOYE'
 alter table EMPLOYE
 modify (E_ID constraint EMPLOYE_E_ID_NNULL Not Null)
 modify (E_SSN constraint EMPLOYE_E_SSN_NNULL Not Null)
 modify (Pwd constraint EMPLOYE_Pwd_NNULL Not Null);
 
PROMPT Creating Check constraints on 'CHECK_INFORMATION'
alter table CHECK_INFORMATION
modify (ROOM_NO constraint CHECK_INFO_ROOM_NO_NNULL Not Null);
 
PROMPT Creating Check constraints on 'SERVICES'
alter table SERVICES
modify (ROOM_NO constraint SERVICES_ROOM_NO_NNULL Not Null);
 
PROMPT Creating Check constraints on 'HOTEL_INFO'
alter table HOTEL_INFO
modify (E_ID constraint HOTEL_INFO_E_ID_NNULL Not Null);
 
PROMPT Creating Check constraints on 'TOURISM'
alter table TOURISM
modify (E_ID constraint TOURISM_E_ID_NNULL Not Null)
modify (B_ID constraint TOURISM_B_ID_NNULL Not Null);

PROMPT CREATING INDEXES ON 'CUSTOMERS'
CREATE INDEX CUSTOMERS_F_Name_I ON CUSTOMERS (F_Name);


PROMPT CREATING INDEXES ON 'ROOM_INFORMATION'
CREATE INDEX ROOM_INFORMATION_occupancy_I ON ROOM_INFORMATION (occupancy);


PROMPT CREATING INDEXES ON 'BOOKINGS'
CREATE INDEX BOOKINGS_Booking_Date_I ON BOOKINGS (Booking_Date);


PROMPT CREATING INDEXES ON 'BILLING'
CREATE INDEX BILLING_Bill_amount_I ON BILLING (Bill_amount);


PROMPT CREATING INDEXES ON 'PAYMENTS_INFO'
CREATE INDEX PAYMENTS_INFO_card_type_I ON PAYMENTS_INFO (card_type);

PROMPT CREATING INDEXES ON 'EMPLOYE'
CREATE INDEX EMPLOYE_ADDR_I ON EMPLOYE (ADDR);

PROMPT CREATING INDEXES ON 'SERVICES'
CREATE INDEX SERVICES_Telephone_I ON SERVICES (Telephone);

PROMPT CREATING INDEXES ON 'HOTEL_INFO'
CREATE INDEX HOTEL_INFO_contact_I ON HOTEL_INFO (contact);

PROMPT CREATING INDEXES ON 'TOURISM'
CREATE INDEX TOURISM_Distance_I ON TOURISM (Distance);

PROMPT Creating TRIGGER on 'ROOM_INFORMATION'

CREATE OR REPLACE TRIGGER check_room_price
    AFTER INSERT OR UPDATE OF Room_price on ROOM_INFORMATION
    FOR EACH ROW
        BEGIN
            IF :NEW.Room_Price < 0 THEN
                raise_application_error(-20225,'Room Price Cannot be 0, please enter a valid amount.');
            END IF;
        END;
		
PROMPT Creating PROCEDURE TO DISPLAY MEMBERSHIP_TYPES
 
 CREATE OR REPLACE PROCEDURE count_Membership_Type
 (type in CUSTOMERS.Membership_Type%type)
 IS
 Membership_Type_count number;
 BEGIN
 select count(*) INTO Membership_Type_count from CUSTOMERS
 where Membership_Type = type;
 IF Membership_Type_count > 1 THEN
 dbms_output.put_line('There are '  || Membership_Type_count || ' types of this membership.');
 ELSIF Membership_Type_count = 1 THEN  dbms_output.put_line('There is 1 type for this membership.');
 ELSE
 dbms_output.put_line('There is no type for this membership.');
 END IF;
 END;







 
 

