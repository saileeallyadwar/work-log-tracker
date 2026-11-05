# Work log tracker

Personal daily work and study log with categories, search, and weekly / monthly / yearly pie charts. Each company and each study gets its own page. Data is stored in your Supabase database (project `bjojtqnowctjxyoieihg`), and `index.html` is already connected to it.

## Go live (about 10 minutes)

### 1. Create the database tables (once)
Supabase → **SQL Editor** → **New query** → paste everything from `supabase-setup.sql` → **Run**.
You should see "Success. No rows returned".

### 2. Upload to GitHub
github.com → **+** → **New repository** → name `work-log-tracker` → **Create repository** →
**uploading an existing file** → drag in `index.html`, `supabase-setup.sql`, `README.md` → **Commit changes**.

### 3. Deploy on Vercel
vercel.com → **Continue with GitHub** → **Add New → Project** → import `work-log-tracker` → **Deploy**.
Copy your live link (for example `https://work-log-tracker.vercel.app`).

### 4. Tell Supabase your site address
Supabase → **Authentication → URL Configuration** → set **Site URL** to your Vercel link → **Save**.

### 5. Create your account and import your entries
Open your live link → enter email and password → **Create account** → click the link in the confirmation email → **Sign in** →
**Import backup** → choose `my-work-log-backup.json` (kept outside this folder; don't upload it to GitHub).

### 6. Optional: lock it to just you
Supabase → **Authentication → Sign In / Providers** → turn off **Allow new users to sign up**.

## Updating later
Replace `index.html` in your GitHub repo (**Add file → Upload files → Commit**). Vercel redeploys automatically.

## Backups
**Export backup** downloads everything as `.json`; **Download CSV** opens in Excel or Google Sheets.
