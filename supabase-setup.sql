-- Run this once in Supabase: SQL Editor -> New query -> paste -> Run

create table if not exists public.settings (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

create table if not exists public.entries (
  user_id uuid not null references auth.users(id) on delete cascade,
  id text not null,
  company_id text not null,
  date date not null,
  text text not null,
  cats text[] not null default '{}',
  created_at bigint,
  updated_at bigint,
  primary key (user_id, id)
);
create index if not exists entries_user_date on public.entries (user_id, date);

-- Each person can only see and change their own rows
alter table public.settings enable row level security;
alter table public.entries  enable row level security;

drop policy if exists "own settings" on public.settings;
create policy "own settings" on public.settings
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "own entries" on public.entries;
create policy "own entries" on public.entries
  for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
