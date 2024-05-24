use bank;
select * from card , client, disp;
select trans_id , account_id , date , type
from bank.trans;

select trans_id as Trans_ID , account_id as Acoount_ID ,date as Date , type as Type_of_account
from bank.trans;

select bt.trans_id as Trans_ID , bt.account_id as Acoount_ID ,bt.date as Date , bt.type as Type_of_account
from bank.trans as bt;

select bt.trans_id as Trans_ID , bt.account_id as Acoount_ID ,bt.date as Date , bt.type as Type_of_account
from bank.trans as bt
limit 10;

select * from bank.account
order by  account_id desc
limit 10;


select * from bank.account
order by account_id asc
limit 10;

select * from bank.account
order by account_id 
limit 10;

select distinct frequency , account_id from bank.account 
order by frequency asc;

select distinct frequency from bank.account 
order by frequency asc;

select " hello world" ;
select 10/3 as total;

select * from bank.order
where  amount > 1000
order by amount asc;

select count(*) from bank.order
where  amount > 1000
order by amount asc;

select * from bank.order
where  amount > 1000 and bank_to = 'YZ'
order by amount asc;

select order_id , account_id ,bank_to , amount from bank.order
where k_symbol = 'SIPO' ;

select * from bank.loan
where amount > 10000 and ( status = 'B' or status = 'C' )
order by amount; 

select loan_id , date , duration , status , amount - payments as balance 
from bank.loan;

select loan_id , date , duration , status , (amount - payments) / 1000 as balance_in_Thousans
from bank.loan;