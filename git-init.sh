#!/bin/zsh
git init
touch .gitignore

# Récuperation des templates
git clone https://github.com/Hugo-Galley/custom-git-init
cat custom-git-init/template-README.MD > README.MD || echo "Erreur lors de la création du fichier README"
cat custom-git-init/template-LICENCE.MD > LICENCE.MD || echo "Erreur lors de la création du fichier de Licence"


# Insertion des variables dans les fichiers ciblé
folder_name=$(basename "$PWD")
year=$(date +%Y)
# Création de la liste des guidelines à suivres
guidelines_list=$(
    # Récupération des guidelines sur le repo
    for file in custom-git-init/guidelines/*; do
        name="$(basename "$file")"
        echo "- [${name%.*}](https://github.com/Hugo-Galley/custom-git-init/tree/main/guidelines/$name)"
    done

    # Récupération des guidelines dispo sur le web
    while IFS=":" read -r name link; do
        echo "- [$name]($link)"
    done < custom-git-init/guidelines/web/link.md
)




export folder_name year guidelines_list
envsubst < README.MD > README.tmp && mv README.tmp README.MD
envsubst < LICENCE.MD > LICENCE.tmp && mv LICENCE.tmp LICENCE.MD

# ajout des fichier au suivi git
git add README.MD LICENCE.MD

# suppresion du dossier de template
rm -rf custom-git-init
