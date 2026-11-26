-- Jalankan ini di Supabase SQL Editor (sekali aja).
-- Tujuannya: bikin filter data->>'user', data->>'dateKey', data->>'monthKey'
-- gak full-scan tabel tiap kali staff buka app.
-- Ganti nama tabel di bawah kalau nama aslinya beda di project kamu.

create index if not exists idx_transactions_user on transactions ((data->>'user'));
create index if not exists idx_transactions_datekey on transactions ((data->>'dateKey'));
create index if not exists idx_transactions_user_datekey on transactions ((data->>'user'), (data->>'dateKey'));

create index if not exists idx_attendance_user on attendance ((data->>'user'));
create index if not exists idx_attendance_datekey on attendance ((data->>'dateKey'));
create index if not exists idx_attendance_user_datekey on attendance ((data->>'user'), (data->>'dateKey'));

create index if not exists idx_manualbonuses_user on "manualBonuses" ((data->>'user'));
create index if not exists idx_manualbonuses_datekey on "manualBonuses" ((data->>'dateKey'));
create index if not exists idx_manualbonuses_monthkey on "manualBonuses" ((data->>'monthKey'));
create index if not exists idx_manualbonuses_user_datekey on "manualBonuses" ((data->>'user'), (data->>'dateKey'));

create index if not exists idx_closings_datekey on closings ((data->>'dateKey'));

-- cek index udah kepasang atau belum:
-- select indexname, tablename from pg_indexes where tablename in ('transactions','attendance','manualBonuses','closings');
