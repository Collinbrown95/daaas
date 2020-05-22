# D�marrer sur l�espace de travail d�analyse avanc�e

![Page d�accueil de l�espace de travail d�analyse avanc�e](images/readme/portal_ui.png)

Le **[portail de l�espace de travail d�analyse avanc�e](https://portal.example.ca)**
est un excellent endroit o� explorer les ressources dont il sera question ici, et y acc�der.

Nous allons r�partir les t�ches standard en trois cat�gories :

  1. **Exp�rimentation et analyse**
  2. **Diffusion**
  3. **Production � grande �chelle**

Nous aborderons les trois, mais nous nous concentrerons sur les
deux premi�res, car elles sont les plus largement applicables.

# Pour l'exp�rimentation et l'analyse

<!--! [Kubeflow](images/logo-kubeflow.png){ : style="max-height:200px"} -->

## Bloc-notes Jupyter

  - `R`, `Python` et `Julia`
  - Choisissez l�unit� centrale ou la m�moire vive dont vous avez besoin, petite ou grande, pour votre analyse
  - Partagez votre espace de travail avec votre �quipe, y compris les donn�es et les bloc-notes qui s�y trouvent

![Bloc-notes Jupyter](images/jupyter_in_action.png)

[**En savoir plus**](1-Exp�rimentation/Jupyter)

## Bureaux avec espace de travail ML

Il est plus facile de partager les bloc-notes que les bureaux, mais nous avons aussi la possibilit�
d�ex�cuter un bureau complet, muni des applications typiques, directement dans votre navigateur.

[**En savoir plus**](1-Exp�rimentation/espaces de travail ML)

# Pour la diffusion

## R Shiny

![R Shiny](images/logo-RStudio.png){ : style=�max-height:100px; display : block; margin-left : auto; margin-right : auto;�}

La plateforme est con�ue pour accueillir le type d�application � source ouverte de votre choix.
Nous disposons d�un serveur R-Shiny pour l�h�bergement des applications R-Shiny

![Serveur R-Shiny](images/readme/shiny_ui.png)
 
Pour cr�er un tableau de bord R-Shiny, il suffit de soumettre une demande d�extraction (� pull request �) GitHub
� notre [r�pertoire R-Dashboards GitHub] (https://github.com/StatCan/R-dashboards). 

# Pour la production

Si une exp�rimentation se transforme en produit, l�un des �l�ments suivants peut �tre n�cessaire :

  - des pipelines Kubeflow pour les travaux � haut volume ou uhaute intensit�
  - des pipelines d�automatisation
 
![Pipelines Kubeflow](images/readme/kubeflow_pipeline.png)

!!! conseil "Demander de l�aide pour la production"
    Le personnel de soutien de l�espace de travail d�analyse avanc�e est heureux 
    de vous aider pour les cas d�utilisation orient�s vers la production, 
    et nous pouvons probablement vous faire gagner beaucoup de temps.
    N�h�sitez pas � [nous demander pour de l�aide](Aide)!

# Comment obtenir des donn�es? Comment envoyer des donn�es?

![Parcourir les ensembles de donn�es](images/readme/minio_ui.png)

 - Chaque espace de travail peut �tre �quip� de son propre stockage.

 - Il existe �galement des compartiments (� buckets �) de stockage pour la publication 
   d'ensembles de donn�es, pour usage interne ou diffusion plus large.

Nous donnerons un aper�u des technologies ici. Des renseignements plus pr�cis sur
chacune d'entre elles seront fouris dans les sections suivantes. 

!!! exemple � Parcourir quelques ensembles de donn�es �
    Parcourez quelques [ensembles de donn�es](https://datasets.example.ca) ici. 
    Ces ensembles de donn�es ont �t� con�us pour stocker des donn�es largement partag�es. 
    Il peut s'agir de donn�es qui ont �t� introduites, ou de donn�es qui seront diffus�es
    sous forme de produit. **Comme toujours, veillez � ce qu'il ne s'agisse pas de donn�es 
    de nature d�licate.**
