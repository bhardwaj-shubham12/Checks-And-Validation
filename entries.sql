insert into individual values('123456789012','Shubham Bhardwaj','AAAPL8910B','3B,Sector 21,Bhilai,CG','123456');
insert into individual values('133956689272','Rishi Bhardwaj','BBCIJ8950C','3C,Sector 11,Bhilai,CG','113456');
insert into individual values('953406749032','Tom Delonge','CFCHK8915D','9B,Sector 31,Bhilai,CG','123456');
insert into individual values('893452781532','Matt Skiba','DEFGL8917E','10B,Sector 22,Bhilai,CG','123457');


insert into bank values('SBIN0123456','SBI','Bhilai');
insert into bank values('ICIC0133456','ICICI Bank','Bilaspur');
insert into bank values('CBIN0124456','CBI','Charoda');
insert into bank values('HDFC0123556','HDFC Bank','Raipur');


insert into has_acc_in values('123456789012','Shubham Bhardwaj','CBIN0124456','1213241',100000);
insert into has_acc_in values('893452781532','Matt Skiba','SBIN0123456','2132411',200000);
insert into has_acc_in values('133956689272','Rishi Bhardwaj','HDFC0123556','2132445',120000);
insert into has_acc_in values('953406749032','Tom Delonge','CBIN0124456','3113241',350000);

insert into phone values('9507952600','123456789012','Shubham Bhardwaj');
insert into phone values('9517982700','123456789012','Shubham Bhardwaj');
insert into phone values('8517902608','893452781532','Matt Skiba');
insert into phone values('8517932619','953406749032','Tom Delonge');


insert into mail values('abcdfgh@gmail.com','133956689272','Rishi Bhardwaj');
insert into mail values('bcdfghi@gmail.com','123456789012','Shubham Bhardwaj');
insert into mail values('cdfghij@gmail.com','123456789012','Shubham Bhardwaj');
insert into mail values('dfghijk@gmail.com','893452781532','Matt Skiba');


delete from individual;
delete from bank;
delete from has_acc_in;
delete from phone;
delete from mail;