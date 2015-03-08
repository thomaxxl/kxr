- files

sourcefile objectfile symbol	

- symbols:

address name type sourcefile linenr


- state

address callstack registers memory
 
- callstack

stackid btid address


LOAD DATA INFILE 'files.s' INTO TABLE tbl_name
  FIELDS TERMINATED BY ' '
  LINES TERMINATED BY '\n';

create table files ( srcf varchar(1024) , objf  varchar(1024) , symbol varchar(1024));
create table symbols ( address varchar(1024), name varchar(1024), type varchar(1024) );


pdjf~call
