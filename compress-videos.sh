#!/bin/bash

# 🎬 Script de Compression Automatique des Vidéos TANGERINE
# Ce script télécharge et compresse toutes les vidéos automatiquement

echo "🍊 TANGERINE - Compression Vidéos Automatique"
echo "=============================================="
echo ""

# Créer les dossiers
mkdir -p ~/Downloads/tangerine-videos/original
mkdir -p ~/Downloads/tangerine-videos/compressed
cd ~/Downloads/tangerine-videos/original

echo "📥 Étape 1/3 : Téléchargement des vidéos..."
echo ""

# Télécharger toutes les vidéos
curl -L -o tropicali_1.mp4 "https://file.garden/aRCOOh-cGER2BR_t/Picali0.mp4" &
curl -L -o tropicali_2.mp4 "https://file.garden/aRCOOh-cGER2BR_t/PICALI1.mp4" &
curl -L -o tropicali_3.mp4 "https://file.garden/aRCOOh-cGER2BR_t/PICALINOAUDIO.mp4" &
curl -L -o kush_1.mp4 "https://file.garden/aRCOOh-cGER2BR_t/KUSH%20(1).mp4" &
curl -L -o kush_2.mp4 "https://file.garden/aRCOOh-cGER2BR_t/j1pb3q.mp4" &
curl -L -o gelato_1.mp4 "https://file.garden/aRCOOh-cGER2BR_t/GELATONOAUDIO.mp4" &
curl -L -o gelato_2.mp4 "https://file.garden/aRCOOh-cGER2BR_t/GELATO2NOAUDIO.mp4" &
curl -L -o tropi_tangie.mp4 "https://file.garden/aRCOOh-cGER2BR_t/ORANOAUDIO.mp4" &
curl -L -o mac.mp4 "https://file.garden/aRCOOh-cGER2BR_t/MACNOAUDIO.mp4" &
curl -L -o banana.mp4 "https://file.garden/aRCOOh-cGER2BR_t/ANANANOAUDIO.mp4" &
curl -L -o cheesecake.mp4 "https://file.garden/aRCOOh-cGER2BR_t/CHEESENOAUDIO.mp4" &
curl -L -o cherry.mp4 "https://file.garden/aRCOOh-cGER2BR_t/CHERRY.mp4" &
curl -L -o grape.mp4 "https://file.garden/aRCOOh-cGER2BR_t/FRZNNOAUDIO.mp4" &

wait
echo "✅ Téléchargement terminé !"
echo ""

# Vérifier si FFmpeg est installé
if ! command -v ffmpeg &> /dev/null; then
    echo "⚠️  FFmpeg n'est pas installé."
    echo "📦 Installation de FFmpeg..."
    brew install ffmpeg
fi

echo "🗜️  Étape 2/3 : Compression des vidéos..."
echo "Cible : 720p, 2Mbps, 30fps"
echo ""

# Compresser toutes les vidéos
count=0
total=13

for file in *.mp4; do
    count=$((count + 1))
    echo "[$count/$total] Compression de $file..."
    
    ffmpeg -i "$file" \
        -vcodec h264 \
        -acodec aac \
        -vf scale=1280:720 \
        -b:v 2M \
        -r 30 \
        -preset fast \
        -movflags +faststart \
        "../compressed/$file" \
        -y \
        -loglevel error
    
    # Afficher la taille avant/après
    original_size=$(du -h "$file" | cut -f1)
    compressed_size=$(du -h "../compressed/$file" | cut -f1)
    echo "   Original: $original_size → Compressé: $compressed_size"
    echo ""
done

echo "✅ Compression terminée !"
echo ""

# Statistiques
echo "📊 Étape 3/3 : Statistiques"
echo "=========================="
original_total=$(du -sh . | cut -f1)
compressed_total=$(du -sh ../compressed | cut -f1)

echo "Taille originale : $original_total"
echo "Taille compressée : $compressed_total"
echo ""
echo "📁 Vidéos compressées dans :"
echo "   ~/Downloads/tangerine-videos/compressed/"
echo ""
echo "🎯 PROCHAINES ÉTAPES :"
echo "1. Upload les vidéos du dossier 'compressed' sur file.garden"
echo "2. Copie les nouvelles URLs"
echo "3. Remplace les URLs dans ton code"
echo ""
echo "✨ Terminé ! Bonne compression ! 🍊"
