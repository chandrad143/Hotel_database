
 
1.  /* check the information of the customer whose Id is'08B41V0' */
 select * from CUSTOMERS where customer_ID='08B41V0';

2.  /*Query to Display different branches in different locations of the hotel.*/
select B_name, Addr from Hotel_info;
  
3. /*To check the information of the employees, details of a particular employee */
 select * from employe where E_name like 'Dileesh';

    
4. /*Display the name, ssn and address of employee whose id is */ 
select E_name, E_ssn, addr from employe; 
 

5. /* Query To select an employee with a particular id*/
 select * from EMPLOYE where E_ID='49492';


                      
6.  /* Query To Insert a new employee into employee records*/
 INSERT INTO EMPLOYE VALUES('49499','Bahubali','12896','MVP road','M','38','LAUNDRY');

 
7. /* Query to Display employee name and Address in which he is working.*/
 select E_name, Addr from employe;

8. /* Query to change the details of a partiular room*/
 update ROOM_INFORMATION set Room_Price='85', Occupancy='7' where Room_NO='1'; 

9.  /* Query to show the details of a booking*/
select C.CUSTOMER_ID,C.F_NAME,C.L_NAME,B.BOOKING_DATE, B.E_ID,B.NOD,B.ROOM_NO,P.AMOUNT
 FROM PAYMENTS_INFO P JOIN BOOKINGS B JOIN CUSTOMERS
 ON B.BOOKING_ID=P.BOOKING_ID AND C.CUSTOMER_ID=B.CUSTOMER_ID where B.CUSTOMER_ID='04D41V0';

10. /* Query to show all the services available for a particular room*/
select B.CUSTOMER_ID, B.ROOM_NO, S.INTERNET, S.LAUNDRY ,S.TELEPHONE
FROM SERVICES S JOIN BOOKINGS B on B.ROOM_NO=S.ROOM_NO;


11.  /* Query To display the information of the hotel*/
 select * from HOTEL_INFO;  

12. /*To know the details of a customer whose lastname is henry*/
select * from CUSTOMERS WHERE L_NAME='Henry'; 

13. /*To check the active status of the room if the room is under maintenace or not*/
select Maintenance from ROOM_INFORMATION where ROOM_NO='2'; 

14. /* Query to show all the details of tourist spots available*/
select PTV,DISTANCE FROM TOURISM; 

15. /* Query to show the vacant rooms*/
select B.ROOM_NO FROM BOOKINGS B JOIN CHECK_IN_INFORMATION C ON B.ROOM_NO=C.ROOM_NO WHERE C.CHECK_OUTDATE>SYSDATE; 



16. /* Query to show the sum of the payments made by respective employeee in ascending order*/
SELECT E_ID,SUM(AMOUNT) FROM PAYMENTS_INFO GROUP BY E_ID ORDER BY SUM(AMOUNT) ASC; 





    
    
    
  

