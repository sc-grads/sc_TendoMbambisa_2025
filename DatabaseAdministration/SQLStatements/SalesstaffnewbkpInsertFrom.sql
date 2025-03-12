--insert data into new table from another table can be used as a backup table

select * into salesstaffnew_bkp from salesstaffnew;

select * from salesstaffnew_bkp;