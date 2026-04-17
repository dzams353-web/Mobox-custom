#!/bin/bash
clear
echo "=========================================="
echo "    INSTALLATION DE MOBOX CUSTOM          "
echo "    Base: Officielle | Mod: dzams353-web  "
echo "=========================================="

# 1. Vérification des outils nécessaires
echo "[1/4] Verification de Git..."
pkg install git -y

# 2. Création de ton dossier personnalisé
echo "[2/4] Preparation de l'espace..."
mkdir -p $HOME/Mobox-custom

# 3. Récupération de l'ancien code (Base de Mobox)
echo "[3/4] Telechargement du coeur de Mobox..."
# On clone la base officielle dans un dossier "core" chez toi
git clone https://github.com/olegos2/mobox $HOME/Mobox-custom/core

# 4. Finalisation
echo "[4/4] Configuration de ta version personnalisee..."
echo "Structure creee dans : $HOME/Mobox-custom"

echo "=========================================="
echo "       TON NOUVEAU MOBOX EST PRET !       "
echo "   Tape : cd Mobox-custom/core && ls      "
echo "=========================================="


