-- Drop Indexes for transactions
DROP INDEX IF EXISTS public.idx_transactions_user;
DROP INDEX IF EXISTS public.idx_transactions_datekey;
DROP INDEX IF EXISTS public.idx_transactions_monthkey;

-- Drop Indexes for attendance
DROP INDEX IF EXISTS public.idx_attendance_user;
DROP INDEX IF EXISTS public.idx_attendance_datekey;
DROP INDEX IF EXISTS public.idx_attendance_monthkey;

-- Drop Indexes for manualBonuses
DROP INDEX IF EXISTS public.idx_manual_bonuses_user;
DROP INDEX IF EXISTS public.idx_manual_bonuses_datekey;
DROP INDEX IF EXISTS public.idx_manual_bonuses_monthkey;

-- Drop Indexes for closings
DROP INDEX IF EXISTS public.idx_closings_user;
DROP INDEX IF EXISTS public.idx_closings_datekey;
DROP INDEX IF EXISTS public.idx_closings_monthkey;
