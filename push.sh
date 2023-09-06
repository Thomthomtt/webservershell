#!bin/bash

if ! command -v git &>/dev/null; then
echo "O git nao esta instalado. Instale-o antes de usar este script."
exit 1
fi
current_dir=$(pwd)

current_branch=$(git branch | grep '*'| cut -d '' -f 2)

remote_url=$(git remote get-url origin)

if git status -s | grep -q '^M'; then
echo "Ha alteracoes nao commitadas. Commite-as antes de usar este script."
exit 1
fi

git add .
git commit -m "Automatizado pelo script"

git push origin main

echo "As alteracoes foram enviadas com sucesso"
