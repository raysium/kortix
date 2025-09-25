#!/bin/bash

# Script para configurar os arquivos .env necessários para o Suna

echo "🚀 Configurando arquivos .env para o Suna..."

# Verificar se estamos no diretório correto
if [ ! -f "docker-compose.yaml" ]; then
    echo "❌ Erro: Execute este script no diretório raiz do projeto Suna"
    exit 1
fi

# Criar arquivo .env do backend se não existir
if [ ! -f "backend/.env" ]; then
    echo "📝 Criando backend/.env..."
    cp backend/env.example backend/.env
    echo "✅ Arquivo backend/.env criado!"
    echo "⚠️  IMPORTANTE: Edite o arquivo backend/.env com suas chaves de API"
else
    echo "✅ Arquivo backend/.env já existe"
fi

# Criar arquivo .env.local do frontend se não existir
if [ ! -f "frontend/.env.local" ]; then
    echo "📝 Criando frontend/.env.local..."
    cp frontend/env.local.example frontend/.env.local
    echo "✅ Arquivo frontend/.env.local criado!"
    echo "⚠️  IMPORTANTE: Edite o arquivo frontend/.env.local com suas configurações"
else
    echo "✅ Arquivo frontend/.env.local já existe"
fi

echo ""
echo "🎉 Configuração concluída!"
echo ""
echo "📋 Próximos passos:"
echo "1. Edite backend/.env com suas chaves de API (Supabase, LLM, etc.)"
echo "2. Edite frontend/.env.local com suas configurações do Supabase"
echo "3. Execute: docker compose up -d --build"
echo ""
echo "📚 Para mais informações, consulte: docs/SELF-HOSTING.md"
