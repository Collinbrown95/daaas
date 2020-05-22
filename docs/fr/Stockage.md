# Stockage

La plateforme propose diff�rents types de stockage, con�us 
pour diff�rents types de cas d�utilisation. Par cons�quent, 
cette section vous concerne, que vous soyez en train d�exp�rimenter, 
de cr�er des pipelines, ou d��diter.  

En surface, il existe deux types de stockage :

- des disques (aussi appel�s volumes)

- des compartiments (stockage S3 ou "blob")


## Disques

![Volumes de donn�es](images/kubeflow_existing_volume.png)

Les disques sont les syst�mes de fichiers courants de type disque dur ou SSD. 
Vous pouvez monter les disques dans votre serveur Kubeflow, et m�me si vous 
supprimez votre serveur, vous pouvez remonter les disques, car ils ne sont jamais 
d�truits par d�faut. C�est un moyen tr�s simple de stocker vos donn�es, 
et si vous partagez un espace de travail avec une �quipe, tous les membres peuvent 
utiliser le disque du m�me serveur (comme un lecteur partag�).


## Compartiments


![Compartiments/Stockage d�objets](images/minio_self_serve_bucket.png)

Les compartiments sont un peu plus compliqu�s, mais ils pr�sentent trois avantages :

- Le stockage de grandes quantit�s de donn�es
  - Les compartiments peuvent �tre �normes (bien plus grands que les disques durs), 
    et ils sont rapides.
  
- Le partage de donn�es
  - Vous pouvez partager des fichiers � partir d�un compartiment en partageant 
    une URL que vouspouvez obtenir par l�interm�diaire d�une interface Web simple. 
    C�est une excellente fa�on de partager des donn�es avec des personnes � 
    l'ext�rieur de votre espace de travail.
    
- L�acc�s � la programmation
  - Plus important encore, il est beaucoup plus facile pour les pipelines et 
    les navigateurs Web d�acc�der aux donn�es provenant de compartiments que 
    d�un disque dur. Donc, si vous voulez utiliser des pipelines, il faut d'abord 
    les configurer pour qu�ils fonctionnent avec un compartiment.
    

# Stockage en compartiment

Nous offrons quatre compartiments d�instances de stockage :

**Libre-service**

- [Minimal](https://minimal-tenant1-minio.example.ca)

- [Premium](https://premium-tenant1-minio.example.ca)

- [Pachyderm](https://pachyderm-tenant1-minio.example.ca)

**Accessible au grand public**

- [Public (en lecture seule)](https://datasets.example.ca)


## Libre-service

Dans chacune des trois options de libre-service, vous pouvez cr�er un compartiment personnel. 
Pour vous connecter, il vous suffit d�utiliser **OpenID** comme ci-dessous.


![Compartiments/Stockage d�objets](images/minio_self_serve_login.png)

Une fois que vous �tes connect�, vous pouvez cr�er un compartiment personnel 
selon le format `prenom.nom`. Voir la photo ci-dessous.


![Compartiments/Stockage d�objets](images/minio_self_serve_bucket.png)

## Partage

Vous pouvez facilement partager des fichiers individuels.

![Partage de fichiers Minio](images/minio_self_serve_share.png)


## Acc�s � la programmation

� FAIRE : Demander � Will et Zach
