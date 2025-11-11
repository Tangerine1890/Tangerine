# 📹 LISTE DES VIDÉOS À COMPRESSER

## 🎯 Objectif
Compresser toutes les vidéos de ~5-10 MB à ~1-2 MB chacune  
**Gain total** : -80% de bande passante

---

## 📋 CATÉGORIE WPFF (3 produits, 7 vidéos)

### 1. Tropicali 🥭
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/Picali0.mp4
- **Vidéo 2** : https://file.garden/aRCOOh-cGER2BR_t/PICALI1.mp4
- **Vidéo 3** : https://file.garden/aRCOOh-cGER2BR_t/PICALINOAUDIO.mp4

### 2. Kush Mints 🍵
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/KUSH%20(1).mp4
- **Vidéo 2** : https://file.garden/aRCOOh-cGER2BR_t/j1pb3q.mp4

### 3. Gelato 🍨
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/GELATONOAUDIO.mp4
- **Vidéo 2** : https://file.garden/aRCOOh-cGER2BR_t/GELATO2NOAUDIO.mp4

---

## 📋 CATÉGORIE DOUBLE STATIC (5 produits, 5 vidéos)

### 4. Tropi Tangie 🍊
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/ORANOAUDIO.mp4

### 5. Miracle Alien Cookies 🍪
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/MACNOAUDIO.mp4

### 6. Tchikita Banana 🍌
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/ANANANOAUDIO.mp4

### 7. Gelato Cheesecake 🍰
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/CHEESENOAUDIO.mp4

### 8. Tropicana Cherry 🍒
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/CHERRY.mp4

---

## 📋 CATÉGORIE FRESH FROZEN (1 produit, 1 vidéo)

### 9. Grape Pie X Biscotti 🍇
- **Vidéo 1** : https://file.garden/aRCOOh-cGER2BR_t/FRZNNOAUDIO.mp4

---

## 📊 RÉSUMÉ

**Total** : 9 produits, **13 vidéos** à compresser

---

## 🛠️ PLAN D'ACTION

### Étape 1 : Télécharger Toutes les Vidéos

**Option A : Manuellement**
- Clique sur chaque lien ci-dessus
- Télécharge la vidéo
- Renomme-la avec le nom du produit (ex: `tropicali_1.mp4`)

**Option B : Script Automatique (Plus Rapide)**
```bash
# Créer un dossier
mkdir ~/Downloads/tangerine-videos
cd ~/Downloads/tangerine-videos

# Télécharger toutes les vidéos (copie-colle dans Terminal)
curl -o tropicali_1.mp4 "https://file.garden/aRCOOh-cGER2BR_t/Picali0.mp4"
curl -o tropicali_2.mp4 "https://file.garden/aRCOOh-cGER2BR_t/PICALI1.mp4"
curl -o tropicali_3.mp4 "https://file.garden/aRCOOh-cGER2BR_t/PICALINOAUDIO.mp4"
curl -o kush_1.mp4 "https://file.garden/aRCOOh-cGER2BR_t/KUSH%20(1).mp4"
curl -o kush_2.mp4 "https://file.garden/aRCOOh-cGER2BR_t/j1pb3q.mp4"
curl -o gelato_1.mp4 "https://file.garden/aRCOOh-cGER2BR_t/GELATONOAUDIO.mp4"
curl -o gelato_2.mp4 "https://file.garden/aRCOOh-cGER2BR_t/GELATO2NOAUDIO.mp4"
curl -o tropi_tangie.mp4 "https://file.garden/aRCOOh-cGER2BR_t/ORANOAUDIO.mp4"
curl -o mac.mp4 "https://file.garden/aRCOOh-cGER2BR_t/MACNOAUDIO.mp4"
curl -o banana.mp4 "https://file.garden/aRCOOh-cGER2BR_t/ANANANOAUDIO.mp4"
curl -o cheesecake.mp4 "https://file.garden/aRCOOh-cGER2BR_t/CHEESENOAUDIO.mp4"
curl -o cherry.mp4 "https://file.garden/aRCOOh-cGER2BR_t/CHERRY.mp4"
curl -o grape.mp4 "https://file.garden/aRCOOh-cGER2BR_t/FRZNNOAUDIO.mp4"
```

---

### Étape 2 : Compresser avec FFmpeg (Le Plus Rapide)

**Installer FFmpeg** :
```bash
brew install ffmpeg
```

**Script de Compression Automatique** :
```bash
cd ~/Downloads/tangerine-videos

# Créer dossier pour vidéos compressées
mkdir compressed

# Compresser toutes les vidéos
for file in *.mp4; do
  ffmpeg -i "$file" -vcodec h264 -acodec aac -vf scale=1280:720 -b:v 2M -r 30 "compressed/$file"
done

echo "✅ Compression terminée ! Vidéos dans le dossier 'compressed'"
```

**Résultat** : Toutes les vidéos compressées en 1 seule commande !

---

### Étape 3 : Re-upload sur file.garden

1. Va sur https://file.garden/
2. Upload toutes les vidéos du dossier `compressed/`
3. Copie les nouvelles URLs

---

### Étape 4 : Remplacer les URLs dans le Code

Je t'aiderai à remplacer toutes les URLs d'un coup une fois que tu as les nouvelles.

---

## ⏱️ TEMPS ESTIMÉ

| Étape | Temps |
|-------|-------|
| Télécharger 13 vidéos | 5-10 min |
| Installer FFmpeg | 2 min |
| Compresser (script auto) | 10-15 min |
| Re-upload sur file.garden | 5-10 min |
| Remplacer URLs | 5 min |
| **TOTAL** | **30-40 min** |

---

## 📈 GAINS ATTENDUS

| Métrique | Avant | Après | Amélioration |
|----------|-------|-------|--------------|
| Taille totale vidéos | ~80 MB | ~15 MB | **-81%** |
| Temps chargement | 3-5s | 1-2s | **-60%** |
| Bande passante/user | 80 MB | 15 MB | **-81%** |

---

## 🎯 PROCHAINE ÉTAPE

**Dis-moi quand tu es prêt et je t'aide pour chaque étape !**

Options :
1. **Je veux le script automatique** → Je te donne les commandes exactes
2. **Je veux compresser manuellement** → Je te guide pas à pas
3. **J'ai déjà compressé** → Je t'aide à remplacer les URLs

Quelle option préfères-tu ? 🚀
