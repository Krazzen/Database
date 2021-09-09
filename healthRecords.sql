CREATE TABLE IF NOT EXISTS
user_particulars (
  nric char PRIMARY KEY, 
  first_name varchar NOT NULL, 
  last_name varchar NOT NULL, 
  date_of_birth date, 
  age int, 
  gender bit, 
  /** 1 for female, 0 for male **/
  race varchar,
  /** chinese, malay, indian, others **/
  contact_number varchar, 
  user_role int
  /** 1 for admin, 2 for cp, 3 for public **/
);

CREATE TABLE IF NOT EXISTS 
user_address (
  nric char PRIMARY KEY, 
  street_name varchar, 
  unit_number varchar, 
  zip_code varchar, 
  area varchar,
   /** north, south, east, west, central **/
  FOREIGN KEY nric references user_particulars (nric) 
);

CREATE TABLE IF NOT EXISTS 
vaccination_results (
  nric char PRIMARY KEY, 
  vaccination_status int default 0,
  /** 0 for not vaccinated, 1 for partially vaccinated, 2 for fully vaccianted **/ 
  vaccine_type varchar,
  /** pfizer, moderna, sinovac **/ 
  vaccination_centre_location varchar, 
  first_dose_date date, 
  second_dose_date date, 
  vaccination_certificate_id varchar
);

CREATE TABLE IF NOT EXISTS
covid19_test_results (
  nric char PRIMARY KEY, 
  test_result bit,
  /** 1 for positive, 0 for negative **/
  test_date date, 
  test_id varchar, 
  covid19_test_type bit
  /** 0 for ART, 1 for PCR **/
);

CREATE TABLE IF NOT EXISTS 
health_declaration (
  nric char PRIMARY KEY, 
  declaration_date date, 
  covid_symptoms bit, 
  /** 1 for symptoms visible, 0 for symptoms not visible **/
  temperature float, 
  health_declaration_id varchar
);



CREATE OR REPLACE PROCEDURE add_user_particulars(nric char, first_name varchar, last_name varchar, date_of_birth date, age int, gender bit, race varchar, contact_number varchar, user_role int)
AS $$
BEGIN
  INSERT INTO user_particulars (nric, first_name, last_name, date_of_birth, age) VALUES (nric,, first_name, last_name, date_of_birth, age);
  IF user_role = 'admin' then 
  INSERT INTO user_particulars(user_role) VALUES 1
  E
  
END;
$$ LANGUAGE sql; 


/*************NEW LOGGING SCHEMA**********/

CREATE SCHEMA recordlogs;
SET SEARCH_PATH TO recordlogs;

CREATE TABLE IF NOT EXISTS record_logs (
  user_nric char PRIMARY KEY,
  date_time TIMESTAMPTZ DEFAULT Now(),/**e.g 2017-03-18 09:41:26.208497+07 **/
  table_affected varchar,
  action_made varchar
);
/** Function to add into record logs **/
CREATE OR REPLACE PROCEDURE add_record_logs(user_nric char,table_affected varchar,action_made varchar)
AS $$
  INSERT INTO  record_logs ( user_nric,table_affected,action_made) Values (user_nric,table_affected,action_made);
$$ LANGUAGE sql; 

/** Trigger to add into record logs **/
/**user_particulars**/
CREATE OR REPLACE FUNCTION record_log_func1() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.nric, 'user_particulars', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.nric, 'user_particulars', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.nric, 'user_particulars', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger1
AFTER INSERT OR DELETE OR UPDATE ON public.user_particulars
FOR EACH ROW EXECUTE FUNCTION record_log_func1();

/**user_address**/
CREATE OR REPLACE FUNCTION record_log_func2() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.nric, 'user_address', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.nric, 'user_address', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.nric, 'user_address', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger2
AFTER INSERT OR DELETE OR UPDATE ON public.user_particulars
FOR EACH ROW EXECUTE FUNCTION record_log_func2();

/**vaccination_results**/
CREATE OR REPLACE FUNCTION record_log_func3() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.nric, 'vaccination_results', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.nric, 'vaccination_results', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.nric, 'vaccination_results', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger3
AFTER INSERT OR DELETE OR UPDATE ON public.vaccination_results
FOR EACH ROW EXECUTE FUNCTION record_log_func3();

/**covid19_test_results**/
CREATE OR REPLACE FUNCTION record_log_func4() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.nric, 'covid19_test_results', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.nric, 'covid19_test_results', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.nric, 'covid19_test_results', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger4
AFTER INSERT OR DELETE OR UPDATE ON public.covid19_test_results
FOR EACH ROW EXECUTE FUNCTION record_log_func4();

/**health_declaration**/
CREATE OR REPLACE FUNCTION record_log_func5() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.nric, 'health_declaration', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.nric, 'health_declaration', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.nric, 'health_declaration', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger5
AFTER INSERT OR DELETE OR UPDATE ON public.health_declaration
FOR EACH ROW EXECUTE FUNCTION record_log_func5();