CREATE TABLE tbl_patients  (
 pat_id SERIAL PRIMARY KEY,
 pat_name VARCHAR(255) NOT NULL UNIQUE );

CREATE TABLE tbl_labtests  (
 lt_id SERIAL PRIMARY KEY,
 lt_name VARCHAR(255) NOT NULL UNIQUE  );

CREATE TABLE tbl_labtest_orders  (
 lto_id SERIAL PRIMARY KEY,
 lt_id INT REFERENCES tbl_labtests(lt_id),
 pat_id INT REFERENCES tbl_patients(pat_id),
 lto_ordered_on TIMESTAMP WITH TIME ZONE NOT NULL  );

CREATE TABLE tbl_labtest_result_entries (
 lre_id SERIAL PRIMARY KEY,
 lre_name VARCHAR(255) NOT NULL UNIQUE,
 lre_unit VARCHAR(255) NOT NULL,
 lt_id INT REFERENCES tbl_labtests(lt_id),
 lre_order_in_results INT NOT NULL,
 UNIQUE (lt_id, lre_order_in_results)  );

CREATE TABLE tbl_labtest_results  (
 ltr_id SERIAL PRIMARY KEY,
 lto_id INT REFERENCES tbl_labtest_orders(lto_id),
 lre_id INT REFERENCES tbl_labtest_result_entries(lre_id),
 ltr_value double precision,
 UNIQUE (lto_id, lre_id)  );

