begin;
insert into admins(admin_id) values (0),(1),(2),(3);
CALL add_user('1', 'hashed_password1', 'user_salt1', 'ble_serial_number1', '2','0');
CALL add_user('2', 'hashed_password2', 'user_salt2', 'ble_serial_number2', '2','0');
CALL add_user('3', 'hashed_password3', 'user_salt3', 'ble_serial_number3', '2','0');
CALL add_user('4', 'hashed_password4', 'user_salt4', 'ble_serial_number4', '2','0');
CALL add_user('5', 'hashed_password5', 'user_salt5', 'ble_serial_number5', '2','0');
end;

select * from account_logs;
select * from login_credentials;