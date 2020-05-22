# D�marrer avec Kubeflow

## Que fait Kubeflow?

Kubeflow ex�cute vos **espaces de travail**. Vous pouvez avoir des serveurs de bloc-notes 
(appel�s serveurs Jupyter), et vous pouvez y cr�er des analyses en R et Python avec des
visuels interactifs. Vous pouvez enregistrer et charger des donn�es, t�l�charger des donn�es,
et cr�er des espaces de travail partag�s pour votre �quipe.

![Kubeflow prend en charge les serveurs Jupyter](../images/jupyter_visual.png)

**Commen�ons sans plus tarder!**

# Cr�er un serveur

## Se connecter � Kubeflow

- Connectez-vous au [portail Azure](https://portal.azure.com) **� l�aide de vos
  justificatifs d�identit� cloud.statcan**.
 
??? avertissement "Connectez-vous au portail Azure au moyen de vos justificatifs d�identit� dans le nuage"
    Vous devez vous connecter au portail Azure **au moyen de vos justificatifs d�identit� StatCan** :
    `prenom.nom@cloud.statcan.ca`. Vous pouvez le faire ici [sur le portail Azure](https://portal.azure.com).
    ![Portail Azure : choisissez l�adresse `@cloud.statcan.ca`](../images/azure-login.png)


- Apr�s avoir ouvert une session dans Azure, connectez-vous � [kubeflow](https://kubeflow.example.ca)


??? �chec "Pourquoi est-ce que je re�ois le message "Param�tre URL manquant : code"?"
    Si vous essayez de vous connecter � Kubeflow et que vous obtenez le message 
    > Param�tre URL manquant : code

    c�est parce que vous �tes connect� avec le mauvais compte Azure. Vous devez vous connecter
    avec vos justificatifs d�identit� dans le nuage.

    ![Cela signifie que vous �tes dans le mauvais compte](../images/missing_parameter_code.png)
    






- Allez � l�onglet des serveurs Jupyter

![Kubeflow prend en charge les serveurs Jupyter](../images/readme/kubeflow_ui.png)

- Cliquez ensuite sur **+ Nouveau serveur**.

## Configuration de votre serveur

- Vous recevrez un mod�le pour cr�er votre serveur de bloc-notes.
  **Nota :** Le nom doit �tre en minuscules avec des tirets. **Pas d'espace ou de trait de soulignement.**


- **Vous devrez choisir une image** Vous voudrez probablement une image de :

    - **Apprentissage automatique**
    - **G�omatique**
    - **Minime**

![Choisissez une image](../images/kubeflow_choose_an_image.png)

- Si vous voulez utiliser un processeur graphique (GPU), v�rifiez si l�image indique **CPU** ou **GPU**.
 
 
## Unit� centrale (CPU) et m�moire vive 

- Au moment de la r�daction du pr�sent document (21 avril 2020), il y a deux types d�ordinateurs dans
  la grappe

  - **CPU :** D16s v3 `(16 unit�s centrales virtuelles, m�moire vive de 64 Go)`
  - **GPU :** NC6s_v3 `(6 unit�s centrales virtuelles, m�moire vive de 112 Go, ? cartes graphiques)`
  
  Pour cette raison, si vous demandez trop de m�moire vive ou trop de CPU, il pourrait �tre difficile
  ou impossible de satisfaire votre demande.
  
  Il est possible que plus tard (peut-�tre lorsque vous lirez ceci), des appareils plus puissants soient
  disponibles, et que les restrictions soient moins strictes.
  
!!! Nota "Utilisez les GPU de mani�re responsable"
    Il y a moins d'appareils avec GPU que d'appareils avec CPU, alors utilisez-les de mani�re responsable.
    
    
## Stockage de vos donn�es

- Vous voudrez cr�er un volume de donn�es. Vous pouvez enregistrer votre travail dans ce volume de donn�es,
  et si vous �teignez votre serveur, vous pourrez simplement remonter vos anciennes donn�es
  en saisissant le nom de votre ancien disque. **Il est important que vous vous souveniez du
  nom du volume.**

![Cr�er un volume de donn�es](../images/kubeflow_volumes.png)
 
!!! conseil "Trouvez des anciens volumes en jetant un coup l'oeil � l�option Existant"
    Lorsque vous cr�ez votre serveur, vous avez la possibilit� de r�utiliser un ancien volume
    ou d�en cr�er un nouveau. Vous souhaiterez probablement r�utiliser votre ancien volume.
 
## Et... Cr�ez!!!

- Si vous �tes satisfait des param�tres, vous pouvez maintenant cr�er le serveur! 
  Il se peut que cela prenne quelques minutes pour se mettre en route, selon les ressources 
  que vous avez demand�es. (Les GPU prennent plus de temps.)
 
!!! succ�s � Votre serveur est en fonctionnement �
    Si tout va bien, votre serveur devrait fonctionner! Vous aurez d�sormais
    la possibilit� de connecter et [d�essayer Jupyter.](/1-Experiments/Jupyter)

 
# Partager votre espace de travail

Dans Kubeflow, chaque utilisateur dispose d�un **espace de noms**. Cet espace vous appartient, 
et toutes vous ressources s'y trouvent. Si vous souhaitez collaborer avec quelqu�un, vous
devez partager un espace de noms. Pour ce faire, pouvez partager votre propre
espace de noms ou, pr�f�rablement, **cr�er un espace de noms d��quipe**. 

## Cr�er un nouvel espace de noms partag�

Le lien pour cr�er un nouvel espace de noms est ici :
- � FAIRE, IL N�Y A PAS ENCORE DE LIEN.

## G�rer les contributeurs

Vous pouvez ajouter ou supprimer des personnes d�un espace de noms 
que vous poss�dez � partir du menu **G�rer les contributeurs** dans Kubeflow.

![Menu des contributeurs](../images/kubeflow_contributors.png)

!!! succ�s "Vos coll�gues et vous pouvez maintenant partager l�acc�s � un serveur!"
    Vous pouvez maintenant partager un serveur avec vos coll�gues! Essayez-le!
