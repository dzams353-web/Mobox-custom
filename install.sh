#!/bin/bash

# 1. Préparation des dossiers et permissions
echo "Configuration des permissions..."
termux-setup-storage
sleep 2

# 2. Mise à jour des dépôts pour la vitesse
pkg update -y && pkg upgrade -y
pkg install x11-repo -y
pkg install termux-x11-nightly virglrenderer-android vulkan-loader-android -y

# 3. Installation de la base Mobox WOW64
echo "Installation du cœur de l'arme (Mobox WOW64)..."
curl -s -o ~/install_mobox https://raw.githubusercontent.com/olegos2/mobox/main/install
chmod +x ~/install_mobox
# On simule le choix '2' pour forcer WOW64
echo "2" | ./install_mobox

# 4. Forçage du bouton Start et de l'affichage
echo "Configuration de l'affichage et du bureau..."
export DISPLAY=:0
export PULSE_SERVER=127.0.0.1

# 5. Injection des réglages de puissance (Dynarec 4)
# On modifie directement la config pour forcer la vitesse maximale
sed -i 's/export DYNAREC_STRONG_MEM_ORDER=1/export DYNAREC_STRONG_MEM_ORDER=0/g' ~/.mobox/config

