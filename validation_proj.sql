-----------------------NAME VALIDATION----------------------------------------------------

create or replace function validate_name(name varchar)
return number as
l1 number(3);l2 number(3);namestud varchar(40);
begin
	namestud:=name;
	l1:=length(name);
	namestud:=name;
	namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
	namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
	namestud:=replace(namestud,'.');namestud:=replace(namestud,'-');namestud:=replace(namestud,' ');
	l2:=length(namestud);
	if namestud is NULL then
		return 1;
	else
		return 0;
	end if;
end;
/


---------------------PHONE NUMBER VALIDATION-----------------------------------------------------
create or replace function validate_phone(phone varchar)
return number as
l1 number(3);l2 number(3);phoneval varchar(20);
begin
	phoneval:=phone;
	l1:=length(phoneval);
	if l1=10 then
		if substr(phoneval,0,1)='0'
			then return 0;
		else
			phoneval:=replace(phoneval,'0');phoneval:=replace(phoneval,'1');phoneval:=replace(phoneval,'2');phoneval:=replace(phoneval,'3');phoneval:=replace(phoneval,'4');phoneval:=replace(phoneval,'5');phoneval:=replace(phoneval,'6');phoneval:=replace(phoneval,'7');phoneval:=replace(phoneval,'8');phoneval:=replace(phoneval,'9');
		end if;
		l2:=length(phoneval);
		if phoneval is NULL
			then return 1;
		else 
			return 0;
		end if;
			
    else
    	return 0;
   	end if;
 end;
 /


---------------------IFSC VALIDATION------------------------------------------------------------

create or replace function validate_ifsc(ifsc varchar)
 return number as
 l1 number(3);l2 number(3);ifscval varchar(20);first varchar(4);second varchar(6);namestud varchar(10);l3 number(3);l4 number(3);li number(3);
 begin
 	ifscval:=ifsc;
 	
 	li:=length(ifscval);
 	if li=11 then
 		first:=substr(ifscval,1,4);
 		second:=substr(ifscval,6,6);
 		namestud:=first;
 		--dbms_output.put_line(first);
 		--dbms_output.put_line(second);
 		l1:=length(namestud);
 		namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
		namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
		l2:=length(namestud);
		if namestud is NULL then 
			--dbms_output.put_line('First is null');
			if substr(ifscval,5,1)='0' then
				l3:=length(second);
				--dbms_output.put_line(substr(ifscval,5,1)||' is 0');
				namestud:=second;
				namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
				namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
				namestud:=replace(namestud,'1');namestud:=replace(namestud,'2');namestud:=replace(namestud,'3');namestud:=replace(namestud,'4');namestud:=replace(namestud,'5');namestud:=replace(namestud,'6');namestud:=replace(namestud,'7');namestud:=replace(namestud,'8');namestud:=replace(namestud,'9');namestud:=replace(namestud,'0');
				l4:=length(namestud);
				if namestud is NULL
					then 
					--dbms_output.put_line('second is null');
					return 1;
				else
					return 0;
				end if;
			else
				return 0;
			end if;
		else
			return 0;
		end if;
	else
		return 0;
	end if;
end;
/



-----------------------------PIN VALIDATION------------------------------------------------------------

create or replace function validate_pin(pin varchar)
return number as
l1 number(3);l2 number(3);pincode varchar(12);
begin
	pincode:=pin;
	l1:=length(pincode);
	if l1=6 then
		pincode:=replace(pincode,'0');pincode:=replace(pincode,'1');pincode:=replace(pincode,'2');pincode:=replace(pincode,'3');
		pincode:=replace(pincode,'4');pincode:=replace(pincode,'5');pincode:=replace(pincode,'6');pincode:=replace(pincode,'7');
		pincode:=replace(pincode,'8');pincode:=replace(pincode,'9');
		l2:=length(pincode);
		if pincode is NULL then
			return 1;
		else
			return 0;
		end if;
	else 
		return 0;
	end if;
end;
/


-----------------------------PAN VALIDATION----------------------------------------------------------


create or replace function validate_pan(panno varchar)
return number as
	l1 number(3);l4 number(3);l2 number(3); pan varchar(20);first varchar(5);second varchar(4);third varchar(1);l3 number(3);namestud varchar(20);
begin
	pan:=panno;
	l1:=length(pan);
	if l1=10 then
		first:=substr(pan,1,5);
		second:=substr(pan,6,4);
		third:=substr(pan,10,1);
		namestud:=first;
		namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
		namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
		l2:=length(namestud);
		if namestud is NULL
		then
			--dbms_output.put_line('First is null');dbms_output.put_line(second);
			second:=replace(second,'0');second:=replace(second,'1');second:=replace(second,'2');second:=replace(second,'3');
			second:=replace(second,'4');second:=replace(second,'5');second:=replace(second,'6');second:=replace(second,'7');
			second:=replace(second,'8');second:=replace(second,'9');
			l3:=length(second);
			if second is NULL then
				--dbms_output.put_line('Second is null');
				namestud:=third;
				namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
				namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
				l4:=length(namestud);
				if namestud is NULL then
					--dbms_output.put_line('Valid');
					return 1;
				else
					return 0;
				end if;
			else
				return 0;
			end if;
		else
			return 0;
		end if;

	else
		return 0;
	end if;
end;
/




---------------------------------EMAIL VALIDATION----------------------------------------------------

create or replace function validate_mail(email varchar)
return number 
as l1 number(3);l2 number(3);first varchar(50);second varchar(2);third varchar(15);fourth varchar(5);id varchar(80);l3 number(3);pre varchar(1);
	namestud varchar(100);l6 number(2);
begin
	id:=email;
	l1:=length(email);
	l2:=0;
	for i in 1..l1
	loop
		if substr(id,i,1)='@' then
			goto label1;
		else
			l2:=l2+1;
		end if;
	end loop;
	dbms_output.put_line('wrong');
	return 0;
	<<label1>>
	first:=substr(id,1,l2);
	pre:=substr(first,l2,1);
	dbms_output.put_line(pre);
	l2:=l2+1;
	namestud:=first;
	namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
	namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
	namestud:=replace(namestud,',');namestud:=replace(namestud,'-');namestud:=replace(namestud,'_');namestud:=replace(namestud,'8');namestud:=replace(namestud,'9');
	namestud:=replace(namestud,'0');namestud:=replace(namestud,'1');namestud:=replace(namestud,'2');namestud:=replace(namestud,'3');
	namestud:=replace(namestud,'4');namestud:=replace(namestud,'5');namestud:=replace(namestud,'6');namestud:=replace(namestud,'7');
	dbms_output.put_line(namestud);
	if namestud is null then
		namestud:=pre;
		namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
		namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
		namestud:=replace(namestud,'0');namestud:=replace(namestud,'1');namestud:=replace(namestud,'2');namestud:=replace(namestud,'3');
		namestud:=replace(namestud,'4');namestud:=replace(namestud,'5');namestud:=replace(namestud,'6');namestud:=replace(namestud,'7');
		namestud:=replace(namestud,'8');namestud:=replace(namestud,'9');
		if namestud is null then
			dbms_output.put_line('username '||first);
			second:=substr(id,l2,1);l2:=l2+1;l3:=0;
			dbms_output.put_line(second);
			for i in l2..l1
			loop
				if substr(id,i,1)='.' then
					goto label2;
				else
					l3:=l3+1;
				end if;
			end loop;
			dbms_output.put_line('wrong-1');
			return 0;
			<<label2>>
			third:=substr(id,l2,l3);l2:=l2+l3;
			namestud:=third;
			namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
			namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
			namestud:=replace(namestud,'-');namestud:=replace(namestud,'8');namestud:=replace(namestud,'9');
			namestud:=replace(namestud,'0');namestud:=replace(namestud,'1');namestud:=replace(namestud,'2');namestud:=replace(namestud,'3');
			namestud:=replace(namestud,'4');namestud:=replace(namestud,'5');namestud:=replace(namestud,'6');namestud:=replace(namestud,'7');
			if namestud is null then

				l2:=l2+1;--dot
				fourth:=substr(id,l2,(l1-l2)+1);
				l6:=length(fourth);
				if l6>1 then
					dbms_output.put_line('domain '||third||'.'||fourth);
					namestud:=fourth;
					namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
					namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
					if namestud is null then
						return 1;
					else return 0;
					end if;
				else
					return 0;
				end if;
			else
				return 0;
			end if;
		else
			return 0;
		end if;

	else
		dbms_output.put_line('wrong username');
		return 0;
	end if;
end;
/



-----------------------AADHAR VALIDATION---------------------------------------------------------

create or replace function  validate_aadhar(number1 varchar)
return number
as l1 number(3);l2 number(3);no varchar(15);
begin
	no:=number1;
	l1:=length(no);
	if l1=12 then
		if substr(no,1,1)='0'
			then return 0;
		else

			no:=replace(no,'1');no:=replace(no,'2');no:=replace(no,'3');no:=replace(no,'4');no:=replace(no,'5');no:=replace(no,'6');no:=replace(no,'7');no:=replace(no,'8');no:=replace(no,'9');no:=replace(no,'0');
			l2:=length(no);
			if no is NULL then
				return 1;
			else
				return 0;
			
			end if;
		end if;
	else
		return 0;
	end if;
end;
/



---------------------------GSTIN VALIDATION----------------------------------------------


create or replace function validate_gstin(number1 varchar)
return number
as 
l1 number(3);l2 number(3);no varchar(20);first varchar(2);second varchar(10);third varchar(1);fourth varchar(1);fifth varchar(1);
namestud varchar(10);
begin
	no:=number1;
	l1:=length(no);
	if l1=15 then
		--dbms_output.put_line('correct length');
		first:=substr(no,1,2);
		second:=substr(no,3,10);
		third:=substr(no,13,1);
		fourth:=substr(no,14,1);
		fifth:=substr(no,15,1);
		first:=replace(first,'0');first:=replace(first,'1');first:=replace(first,'2');first:=replace(first,'3');first:=replace(first,'4');
		first:=replace(first,'5');first:=replace(first,'6');first:=replace(first,'7');first:=replace(first,'8');first:=replace(first,'9');
		if first is null then
			--dbms_output.put_line('first substring correct');
			if validate_pan(second)=1 then
				--dbms_output.put_line('second substring correct');
				third:=replace(third,'0');third:=replace(third,'1');third:=replace(third,'2');third:=replace(third,'3');third:=replace(third,'4');
				third:=replace(third,'5');third:=replace(third,'6');third:=replace(third,'7');third:=replace(third,'8');third:=replace(third,'9');
				if third is null then 
					--dbms_output.put_line('third substring correct');
					if fourth='Z' or fourth='z' then
						--dbms_output.put_line('fourth substring correct'); 
						namestud:=fifth;
						namestud:=replace(namestud,'A');namestud:=replace(namestud,'B');namestud:=replace(namestud,'C');namestud:=replace(namestud,'D');namestud:=replace(namestud,'E');namestud:=replace(namestud,'F');namestud:=replace(namestud,'G');namestud:=replace(namestud,'H');namestud:=replace(namestud,'I');namestud:=replace(namestud,'J');namestud:=replace(namestud,'K');namestud:=replace(namestud,'L');namestud:=replace(namestud,'M');namestud:=replace(namestud,'N');namestud:=replace(namestud,'O');namestud:=replace(namestud,'P');namestud:=replace(namestud,'Q');namestud:=replace(namestud,'R');namestud:=replace(namestud,'S');namestud:=replace(namestud,'T');namestud:=replace(namestud,'U');namestud:=replace(namestud,'V');namestud:=replace(namestud,'W');namestud:=replace(namestud,'X');namestud:=replace(namestud,'Y');namestud:=replace(namestud,'Z');
						namestud:=replace(namestud,'a');namestud:=replace(namestud,'b');namestud:=replace(namestud,'c');namestud:=replace(namestud,'d');namestud:=replace(namestud,'e');namestud:=replace(namestud,'f');namestud:=replace(namestud,'g');namestud:=replace(namestud,'h');namestud:=replace(namestud,'i');namestud:=replace(namestud,'j');namestud:=replace(namestud,'k');namestud:=replace(namestud,'l');namestud:=replace(namestud,'m');namestud:=replace(namestud,'n');namestud:=replace(namestud,'o');namestud:=replace(namestud,'p');namestud:=replace(namestud,'q');namestud:=replace(namestud,'r');namestud:=replace(namestud,'s');namestud:=replace(namestud,'t');namestud:=replace(namestud,'u');namestud:=replace(namestud,'v');namestud:=replace(namestud,'w');namestud:=replace(namestud,'x');namestud:=replace(namestud,'y');namestud:=replace(namestud,'z');
						namestud:=replace(namestud,'0');namestud:=replace(namestud,'1');namestud:=replace(namestud,'2');namestud:=replace(namestud,'3');
						namestud:=replace(namestud,'4');namestud:=replace(namestud,'5');namestud:=replace(namestud,'6');namestud:=replace(namestud,'7');
						namestud:=replace(namestud,'8');namestud:=replace(namestud,'9');
						if namestud is null then
							return 1;
						else
							return 0;
						end if;
					else
						return 0;
					end if;
				else
					return 0;
				end if;
			else
				return 0;
			end if;
		else 
			return 0;
		end if;

	else
		return 0;
	end if;
end;
/

















set serveroutput on;
declare
	email varchar(80);f number(1);
begin
	
	email:='Shubam120@gmail.com';
	f:=validate_mail(email);
	if f=1 then
		dbms_output.put_line('Valid');
	else
		dbms_output.put_line('invalid');
	end if;
end;
/





