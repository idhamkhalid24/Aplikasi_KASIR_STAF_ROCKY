-- =====================================================
-- TABEL BARU: staff_change_reserve
-- Untuk fitur "Sisa Uang Kembalian Staf" di app kasir staf
-- Jalankan sekali di Supabase SQL Editor
-- =====================================================

create table if not exists staff_change_reserve (
  id              text primary key,
  date_key        text not null,
  amount          numeric not null default 0,
  note            text default '',
  username        text not null default '',
  user_name       text not null default '',
  created_at      timestamptz default now(),
  created_at_ms   bigint,
  deleted         boolean default false,
  deleted_at_ms   bigint
);

create index if not exists idx_scr_date_key on staff_change_reserve (date_key);
create index if not exists idx_scr_deleted  on staff_change_reserve (deleted);
create index if not exists idx_scr_username on staff_change_reserve (username);

alter table staff_change_reserve enable row level security;

create policy "scr_select_all" on staff_change_reserve for select using (true);
create policy "scr_insert_own" on staff_change_reserve for insert with check (true);
create policy "scr_update_all" on staff_change_reserve for update using (true);
