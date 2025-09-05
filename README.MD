# Custom Git init

Il s'agit d'un tutoriel : ce fichier *bash* vous permet de remplacer votre commande git init.

## Fonctionnalités

- ### Création d'un fichier `README.MD`
  - Titre correspondant au nom du dossier
  - Une liste des bonnes pratiques à suivre listée [ici](https://github.com/Hugo-Galley/custom-git-init/tree/main/guidelines)
  - Les crédits à votre nom (à modifier dans le template)
- ### Création d'un fichier `LICENCE.MD`
Par défaut, il s'agit d'une licence *MIT*

## Configuration
1) Téléchargez le fichier `git-init.sh` et placez-le à un endroit où il restera.
2) Ouvrez votre terminal et tapez :
    ```bash
     nano ~/.zshrc
     ``` 
  afin d'ouvrir le fichier de configuration de votre shell `zsh`.
3) Accordez les droits d'exécution au fichier `git-init.sh` grâce à cette commande :
```bash
chmod +x /Users/votre_nom/votre_emplacement/git-init.sh
4) Si vous avez déjà des alias, placez-vous en dessous, sinon placez-vous à la fin de votre fichier et entrez cette ligne :
  ```bash
  alias git-init="/Users/votre_nom/votre_emplacement/git-init.sh"
  ```
5) Enfin, rechargez votre shell grâce à cette commande :
```bash
 source ~/.zshrc
 ```
