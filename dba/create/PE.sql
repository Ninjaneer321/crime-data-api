set colsep ,     
set pagesize 0   
set trimspool on 
set headsep on  
set linesize 4096   
set numw 10     
SET TERMOUT OFF 
SET ECHO OFF 

SPOOL PE.csv
select AGENCY_ID, DATA_YEAR, REPORTED_FLAG, MALE_OFFICER,  MALE_CIVILIAN, MALE_TOTAL, FEMALE_OFFICER, FEMALE_CIVILIAN, FEMALE_TOTAL,  OFFICER_RATE,  EMPLOYEE_RATE, DATA_HOME, DDOCNAME,  DID,  FF_LINE_NUMBER,  ORIG_FORMAT, PE_EMPLOYEE_ID,  PUB_STATUS from PE_EMPLOYEE_DATA where DATA_YEAR = 2016;
SPOOL OFF


END_SQL
EXIT