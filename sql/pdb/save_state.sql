--
-- Thorsten Bruhns (Thorsten.Bruhns@opitz-consulting.de)
--
-- Version: 1
-- Date   : 22.09.2015
--
-- save state for PDB after restart of cdb
--
-- Parameter 1: PDB-Name



alter PLUGGABLE DATABASE &1 save state ;

