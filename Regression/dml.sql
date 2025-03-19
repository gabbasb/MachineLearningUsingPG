INSERT INTO tbl_labtests (lt_name) VALUES('Blood Sugar Random');
INSERT INTO tbl_labtests (lt_name) VALUES('Blood Complete Picture');

\i /tmp/ml/pat.sql
\i /tmp/ml/lab_res_entry.sql
\i /tmp/ml/bsr_orders.sql
\i /tmp/ml/bcp_orders.sql
\i /tmp/ml/bsr_results.sql
\i /tmp/ml/bcp_results.sql

