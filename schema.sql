-- Deck71 Concierge v1
create extension if not exists pgcrypto;

create table if not exists conversations (
  id uuid primary key default gen_random_uuid(),
  session_id text unique not null,
  created_at timestamptz not null default now(),
  last_seen_at timestamptz not null default now(),
  status text not null default 'open',
  summary text,
  recommended_agent text,
  lead_score integer
);

create table if not exists messages (
  id bigint generated always as identity primary key,
  session_id text not null references conversations(session_id) on delete cascade,
  role text not null check (role in ('user','assistant')),
  content text not null,
  created_at timestamptz not null default now()
);

create table if not exists leads (
  id uuid primary key default gen_random_uuid(),
  session_id text unique references conversations(session_id) on delete set null,
  name text,
  company text,
  email text,
  whatsapp text,
  need text,
  recommended_agent text,
  stage text not null default 'new',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_messages_session_created on messages(session_id, created_at);
create index if not exists idx_conversations_last_seen on conversations(last_seen_at desc);
create index if not exists idx_leads_created on leads(created_at desc);

alter table conversations enable row level security;
alter table messages enable row level security;
alter table leads enable row level security;

-- Nenhuma policy pública é criada.
-- O navegador não recebe a service role. Somente /api/chat usa a chave no servidor.
