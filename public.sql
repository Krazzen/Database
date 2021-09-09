CREATE TABLE IF NOT EXISTS query_table (
  record_id serial PRIMARY KEY,
  vaccination_status int,
  /** 0 for Vac,1 for UnVac, 2 for inprog**/
  covid19_status bit,
  /** 0 for negative, 1 for positive**/
  age_range varchar,
  /**1-10,11-20,21-30,31-40,41-50,51-60,61-70,71-80,81-90,91-**/
  area varchar,
  /**N,S,E,W,C**/
  gender bit,
  /**0 for M, 1 for F**/
  race varchar
  /**chines,malay,indian,others**/
);

/** Function to populate query_table **/
CREATE OR REPLACE PROCEDURE add_records()
AS $$
BEGIN
  insert into query_table
  select * from (
    SELECT
      nric
      age AS age_range, 
      gender,
      race
    FROM
      user_particulars
    UNION
    SELECT
      nric, 
      area
    FROM
      user_address
    UNION
    SELECT
      nric, 
      vaccination_status
    FROM
      vaccination_results
    UNION
    SELECT
      nric, 
      test_result as covid19_status,
    FROM
      covid19_test_results c
    WHERE
      test_date = (SELECT MAX(test_date) FROM covid19_test_results c1
      WHERE c1.nric = c.nric);
    ;
  ) QT
END;
$$ LANGUAGE sql; 

/**modify age to age_range **/
CREATE OR REPLACE FUNCTION age_to_agerange() RETURNS TRIGGER
AS $$
    DECLARE
      age := SELECT CAST (NEW.age_range AS INTEGER);
    BEGIN
      IF (age < 10 ) THEN
        NEW.age_range := '1-10';
        RETURN NEW; 
      ELSIF (age < 20 ) THEN
        NEW.age_range := '11-20';
        RETURN NEW;
      ELSIF (age < 30 ) THEN
        NEW.age_range := '21-30';
        RETURN NEW;
      ELSIF (age < 40 ) THEN
        NEW.age_range := '31-40';
        RETURN NEW;
      ELSIF (age < 50 ) THEN
        NEW.age_range := '41-50';
        RETURN NEW;
      ELSIF (age < 60 ) THEN
        NEW.age_range := '51-60';
        RETURN NEW;
      ELSIF (age < 70 ) THEN
        NEW.age_range := '61-70';
        RETURN NEW;
      ELSIF (age < 80 ) THEN
        NEW.age_range := '71-80';
        RETURN NEW;
      ELSIF (age < 90 ) THEN
        NEW.age_range := '81-90';
        RETURN NEW;
      ELSE 
        NEW.age_range := '91-';
        RETURN NEW;                  
      END IF;
      
    END;
$$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER age_format
BEFORE INSERT ON query_table
DEFERRABLE INITIALLY DEFERRED
FOR EACH ROW EXECUTE FUNCTION age_to_agerange();




