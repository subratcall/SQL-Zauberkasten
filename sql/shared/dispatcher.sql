--
-- Thorsten Bruhns (Thorsten.Bruhns@opitz-consulting.de)
-- $Id: dispatcher.sql 10 2008-11-11 10:25:06Z oracle $
--
-- Information for shared server Dispatchers
--
SELECT NAME "NAME", SUBSTR(NETWORK,1,23) "PROTOCOL", OWNED,
    STATUS "STATUS", (BUSY/(BUSY + IDLE)) * 100 "%TIME BUSY"
    FROM V$DISPATCHER;

SELECT D.NAME, Q.QUEUED, Q.WAIT, Q.TOTALQ,
   DECODE(Q.TOTALQ,0,0,(Q.WAIT/Q.TOTALQ)/100) "AVG WAIT"
   FROM V$QUEUE Q, V$DISPATCHER D
   WHERE D.PADDR = Q.PADDR;

SELECT Q.TYPE, Q.QUEUED, Q.WAIT, Q.TOTALQ,
 DECODE(Q.TOTALQ,0,0,(Q.WAIT/Q.TOTALQ)/100) "AVG WAIT"
 FROM V$QUEUE Q
 WHERE TYPE = 'COMMON'; 



