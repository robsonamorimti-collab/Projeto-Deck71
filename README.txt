DECK71 v6 — CONCIERGE REAL

O que já foi construído
- Site baseado na v5 aprovada.
- /api/chat.js: backend server-side na Vercel.
- Integração preparada para Gemini.
- Persistência de conversas e mensagens no Supabase/PostgreSQL.
- Chaves ficam somente no servidor; não são expostas no HTML.
- SQL pronto em supabase/schema.sql.
- RLS habilitado e sem acesso público direto às tabelas.

PARA ATIVAR
1. Crie um projeto gratuito no Supabase.
2. Abra SQL Editor e execute supabase/schema.sql.
3. Copie Project URL e Service Role Key.
4. Crie uma API key do Gemini.
5. Na Vercel, abra o projeto Deck71 > Settings > Environment Variables.
6. Cadastre SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY e GEMINI_API_KEY.
7. Suba os arquivos desta pasta no repositório GitHub e faça commit na main.
8. Aguarde o deploy e teste o Concierge.

COMO VER AS CONVERSAS
Supabase > Table Editor > messages.
A tabela conversations mostra cada sessão; messages contém o histórico.

PRÓXIMA EVOLUÇÃO
- extração automática de nome/WhatsApp/e-mail e criação de lead;
- classificação de intenção e carta recomendada;
- Deck71 Command Center;
- analytics/eventos;
- base de conhecimento/RAG.

IMPORTANTE
Não coloque SUPABASE_SERVICE_ROLE_KEY ou GEMINI_API_KEY dentro do index.html.
