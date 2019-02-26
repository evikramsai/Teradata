.logtable td_bim_fr_trng_db.dept_log696;
.logon 10.58.0.66/TD_USER24,TD_USER24;
.begin mload tables dept_10_696,dept_20_696
worktables wt_dept_10_696,wt_dept_20_696
errortables
er_dept_10_696 uv_dept_10_696,
er_dept_20_696 uv_dept_20_696;

.layout record_layout;
.field deptno * varchar(5);
.field dname * varchar(30);

.dml label insert_values_dept_10;
insert into dept_10((CAST(:DEPTNO as integer)),:DNAME);

.dml label insert_values_dept_20;
insert into dept_20((CAST(:DEPTNO as integer)),:DNAME);

.import infile 'C:\Teradata_practice\dept_multi.txt'
format vartext ','
layout record_layout
apply insert_values_dept_10 where DEPTNO =10
apply insert_values_dept_20 where DEPTNO =20;

.end mload;
.logoff;