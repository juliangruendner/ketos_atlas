-- remove any previously added database connection configuration data
truncate source;
truncate source_daimon;

-- OHDSI CDM source
INSERT INTO public.source( source_id, source_name, source_key, source_connection, source_dialect)
VALUES (1, 'OHDSI CDM V5 Database', 'OHDSI-CDMV5',
  'jdbc:postgresql://omop_on_fhir:5432/omopDb?user=omopDbUser&password=omopDbPw', 'postgresql');

-- CDM daimon
INSERT INTO source_daimon( source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (1, 1, 0, 'public', 2);

-- VOCABULARY daimon
INSERT INTO source_daimon( source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (2, 1, 1, 'public', 2);

-- RESULTS daimon
INSERT INTO source_daimon( source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (3, 1, 2, 'ohdsi', 2);

-- EVIDENCE daimon
INSERT INTO source_daimon( source_daimon_id, source_id, daimon_type, table_qualifier, priority) VALUES (4, 1, 3, 'ohdsi', 2);