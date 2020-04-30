<!-- Required extensions: pymdown.betterem, pymdown.tilde, pymdown.emoji, pymdown.tasklist, pymdown.superfences -->

<div style=text-align:center><img src=".Other/Logo.svg" title="Logo OpenLibs" alt="Logo OpenLibs"></div>

<h2 style="color:#0761b2">Description</h2>

OpenScripts est un ensemble de scripts qui permettent de rajouter des 
fonctionnalités à un système linux.

<h2 style="color:#0761b2">Scripts</h2>

Les scripts composant OpenScripts sont: 

* DeleteGmon: Supprime les fichiers gmon.out.
* Diff: Compare 2 dossiers.
* Echo: Commande echo mais avec les couleurs.
* Spaces: Ajoute des espaces dnas le shell.
* Lines: Saute des lignes dans le shell.
* MakeInfo: Affiche des infos sur un processus de compilation.

<h2 style="color:#0761b2">Description des Scripts</h2>
<h3 style="color: #045576">DeleteGmon</h3>

DeleteGmon permet de supprimer toutes les occurences du fameux fichier 
gmon.out qui peut gêner bon nombre d'entre-vous (et surtout sur 
ArchLinux). Pour cela, il faut juste lui fournir, en argument, le dossier 
à parcourir, comme ceci: 


```bash
    DeleteGmon {directory}
```

<h3 style="color: #045576">Diff</h3>

Diff permet de comparer 2 dossiers sans avoir à taper la ligne de commande 
diff (souvent longue). Pour cela, vous devez lui indiquer les dossiers à 
traiter:


```bash
    Diff {dossier1} {dossier2}
```

<h3 style="color: #045576">Echo</h3>

Echo utilise les commandes echo et put pour pouvoir écrire en couleurs. Il 
faudra cependant fournir quelques arguments pour pouvoir l'utiliser:


```bash
    Echo {texte} {couleur du texte} {couleur de fond} {type de ligne}
```

Où:

* couleur (fond et texte): red, green, blue, yellow, magenta, cyan, white, 
  black, default.
* type de ligne: true, pas de retour à la ligne / false, retour à la 
  ligne.

<h3 style="color: #045576">Spaces</h3>

Spaces ajoute des espaces dans le shell pour permettre d'aligner des retours de commandes (MakeInfo l'utilise): 


```bash
    Spaces {nombre d'espaces}
```

<h3 style="color: #045576">Lines</h3>

Lines ajoute des sauts de lignes dans les shell pour permettre d'aérer les 
retours de commandes (le Makefile d'OpenLibs l'utilise): 


```bash
    Lines {nombre de lignes}
```

<h3 style="color: #045576">MakeInfo</h3>

MakeInfo permet d'indiquer à un utilisateur les étapes d'un processus de 
compilation, si toutefois les commandes et leur résultat ne sont pas 
affichées: 


```bash
    MakeInfo {Type} [Nom}
```

Où: 

* Type: making, clean, install, module, static, dynamic, program_s (link 
  static), program_d (link dynamic), doc.
* Nom: Nom du fichier/lib/prog compilé (Ex: MakeInfo making BinRes).

<h2 style="color:#0761b2">Installation</h2>
<h3 style="color: #045576">Dépendance</h3>
 Un shell Unix/Linux classique (Ex: bash).

<h3 style="color: #045576">Commandes</h3>

Pour installer OpenScripts, il faut taper les commandes ci-dessous: 

```bash
    export PRGMDIR={install-directory}
    ./install.sh
```
Où:

* {install-directory}: Le répertoire d'installation (Ex: export PRGMDIR=/
  usr). Cette commande n'est pas obligatoire, si non effectuée,   
  l'installation se fera dans /usr.
