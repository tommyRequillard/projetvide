@echo off
REM Naviguer vers le répertoire de votre projet
cd "c:\dev\projetvide"

REM Ajouter les changements
git add .

REM Demander à l'utilisateur de saisir le message de commit
set /p commit_message="Entrez le message de commit : "

REM Commencer un commit avec le message saisi
git commit -m "%commit_message%"

REM Pousser vers le dépôt GitLab
git push origin main

REM Pousser vers le dépôt GitHub
git push github main

echo "Les modifications ont été poussées vers GitLab et GitHub."
pause