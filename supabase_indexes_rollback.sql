-- Jalankan ini kalau mau BALIKIN / HAPUS index yang tadi dibuat.
-- 100% aman, cuma ngapus index-nya, data di tabel gak kesentuh sama sekali.

drop index if exists idx_transactions_user;
drop index if exists idx_transactions_datekey;
drop index if exists idx_transactions_user_datekey;

drop index if exists idx_attendance_user;
drop index if exists idx_attendance_datekey;
drop index if exists idx_attendance_user_datekey;

drop index if exists idx_manualbonuses_user;
drop index if exists idx_manualbonuses_datekey;
drop index if exists idx_manualbonuses_monthkey;
drop index if exists idx_manualbonuses_user_datekey;

drop index if exists idx_closings_datekey;
