-- Indexes for transactions
CREATE INDEX IF NOT EXISTS idx_transactions_user ON public.transactions ((data->>'user'));
CREATE INDEX IF NOT EXISTS idx_transactions_datekey ON public.transactions ((data->>'dateKey'));
CREATE INDEX IF NOT EXISTS idx_transactions_monthkey ON public.transactions ((data->>'monthKey'));

-- Indexes for attendance
CREATE INDEX IF NOT EXISTS idx_attendance_user ON public.attendance ((data->>'user'));
CREATE INDEX IF NOT EXISTS idx_attendance_datekey ON public.attendance ((data->>'dateKey'));
CREATE INDEX IF NOT EXISTS idx_attendance_monthkey ON public.attendance ((data->>'monthKey'));

-- Indexes for manualBonuses
-- Double quotes are used for camelCase table names in PostgreSQL
CREATE INDEX IF NOT EXISTS idx_manual_bonuses_user ON public."manualBonuses" ((data->>'user'));
CREATE INDEX IF NOT EXISTS idx_manual_bonuses_datekey ON public."manualBonuses" ((data->>'dateKey'));
CREATE INDEX IF NOT EXISTS idx_manual_bonuses_monthkey ON public."manualBonuses" ((data->>'monthKey'));

-- Indexes for closings
CREATE INDEX IF NOT EXISTS idx_closings_user ON public.closings ((data->>'user'));
CREATE INDEX IF NOT EXISTS idx_closings_datekey ON public.closings ((data->>'dateKey'));
CREATE INDEX IF NOT EXISTS idx_closings_monthkey ON public.closings ((data->>'monthKey'));
