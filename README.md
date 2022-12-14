# projet_bash

### - Site principal

Pour créer votre page html créer un dossier cible (peu importe le nom) vide et un dossier 'images' 
contenant les images que vous souhaitez ajouter puis lancer la commande suivante:

    sh genereSite.sh [target_directory]

Il faut s'assurer d'avoir les droits d'écriture sur 'target_directory' (votre dossier cible)

### - Ajout de commentaire

Pour ajouter un commentaire il vous suffit de lancer la commande suivante :

    sh postComment.sh [username] [comment]

### - Affichage de l'aide

Pour afficher l'aide de ces deux scripts il vous suffit d'ajouter l'option '-h' :

    sh genereSite.sh -h

ou

    sh postComment.sh -h