DECK71 v6.1 — CORREÇÃO VERCEL

Correção aplicada ao erro:
"The pattern api/chat.js defined in functions doesn't match any Serverless Functions inside the api directory."

A configuração `functions` foi removida do vercel.json.
A Vercel detectará automaticamente `api/chat.js` como função server-side.

Mantenha na Vercel:
SUPABASE_URL
SUPABASE_SERVICE_ROLE_KEY
GEMINI_API_KEY

Envie todo o conteúdo desta pasta para a raiz do repositório e faça commit na main.
