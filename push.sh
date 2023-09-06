#!bin/bash 

if git status -s | grep -q '^M'; then
echo "Ha alteracoes nao commitadas. Commite-as antes de usar este script."
exit 1
fi

git add .
git commit -m "Automatizado pelo script"

if git push origin main -c | grep 'Username' -a 'Password'; then
echo "Thomthomtt"

echo "As alteracoes foram enviadas com sucesso"
