CREATE TABLE IF NOT EXISTS account_logs (
  user_nric char PRIMARY KEY,
  date_time TIMESTAMPTZ DEFAULT Now(),
  admin_id varchar,
  action_made varchar
);

CREATE TABLE IF NOT EXISTS record_logs (
  user_nric char PRIMARY KEY,
  date_time TIMESTAMPTZ DEFAULT Now(),/**e.g 2017-03-18 09:41:26.208497+07 **/
  table_affected varchar,
  action_made varchar
);

/** Function to add into account logs **/
CREATE OR REPLACE PROCEDURE add_account_logs(user_nric char, admin_id varchar,action_made varchar)
AS $$
  INSERT INTO  account_logs ( user_nric,admin_id,action_made) Values (user_nric,admin_id,action_made);
$$ LANGUAGE sql; 

/** Function to add into record logs **/
CREATE OR REPLACE PROCEDURE add_record_logs(user_nric char,table_affected varchar,action_made varchar)
AS $$
  INSERT INTO  record_logs ( user_nric,table_affected,action_made) Values (user_nric,table_affected,action_made);
$$ LANGUAGE sql; 

/** Trigger to add into account logs **/
CREATE OR REPLACE FUNCTION account_log_func() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  PERFORM add_account_logs(NEW.user_nric, NEW.admin_id, 'CREATE');
ELSEIF (TG_OP = 'DELETE') THEN
  PERFORM add_account_logs(OLD.user_nric, OLD.admin_id, 'DELETE');
ELSIF (TG_OP = 'UPDATE') THEN
  PERFORM add_account_logs(OLD.user_nric, OLD.admin_id, 'UPDATE');
END IF;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER account_log_trigger
AFTER INSERT OR DELETE OR UPDATE ON dbo.login_credentials
FOR EACH ROW EXECUTE FUNCTION account_log_func();

/** Trigger to add into record logs **/
/**user_particulars**/
CREATE OR REPLACE FUNCTION record_log_func1() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.user_nric, 'user_particulars', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.user_nric, 'user_particulars', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.user_nric, 'user_particulars', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger1
AFTER INSERT OR DELETE OR UPDATE ON user_particulars
FOR EACH ROW EXECUTE FUNCTION record_log_func1();

/**user_address**/
CREATE OR REPLACE FUNCTION record_log_func2() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.user_nric, 'user_address', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.user_nric, 'user_address', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.user_nric, 'user_address', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger2
AFTER INSERT OR DELETE OR UPDATE ON user_particulars
FOR EACH ROW EXECUTE FUNCTION record_log_func2();

/**vaccination_results**/
CREATE OR REPLACE FUNCTION record_log_func3() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.user_nric, 'vaccination_results', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.user_nric, 'vaccination_results', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.user_nric, 'vaccination_results', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger3
AFTER INSERT OR DELETE OR UPDATE ON vaccination_results
FOR EACH ROW EXECUTE FUNCTION record_log_func3();

/**covid19_test_results**/
CREATE OR REPLACE FUNCTION record_log_func4() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.user_nric, 'covid19_test_results', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.user_nric, 'covid19_test_results', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.user_nric, 'covid19_test_results', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger4
AFTER INSERT OR DELETE OR UPDATE ON covid19_test_results
FOR EACH ROW EXECUTE FUNCTION record_log_func4();

/**health_declaration**/
CREATE OR REPLACE FUNCTION record_log_func5() RETURNS TRIGGER AS $$
BEGIN
IF (TG_OP = 'INSERT') THEN
  add_record_logs(NEW.user_nric, 'health_declaration', 'CREATE');
  RETURN NEW;
ELSEIF (TG_OP = 'DELETE') THEN
  add_record_logs(OLD.user_nric, 'health_declaration', 'DELETE');
  RETURN OLD;
ELSIF (TG_OP = 'UPDATE') THEN
  add_record_logs(OLD.user_nric, 'health_declaration', 'UPDATE');
  RETURN NEW;
END IF;
$$ LANGUAGE plpgsql;

CREATE TRIGGER record_log_trigger5
AFTER INSERT OR DELETE OR UPDATE ON health_declaration
FOR EACH ROW EXECUTE FUNCTION record_log_func5();