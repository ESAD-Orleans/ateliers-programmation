CSS BASICS
=======
CSS est le langage des **feuilles de styles**, qui permet de mettre en forme les pages HTML. 
CSS signifie `Cascading Style Sheet` (feuille de style en cascade).
On utilisera le CSS3, c’est la norme CSS la plus avancée, la plus à jour. CSS3 accompagne la norme HTML5. Elle n’est pas toujours bien supporté par les vieux navigateurs (Internet Explorer 8 et inférieur) mais pour vous, ça ira, il faut être tourné vers le futur ! (surtout quand ça simplifie la vie)

### où écrire le code CSS ?

il existe trois manières d’inscrire les règles CSS. 
 
 - dans un fichier .css via la balise `<link>` **(recommandé)**
 - directement dans le fichier HTML, dans une balise `<style></style>`  au sein du `<header></header>`
 - dans l’attribut `style` des balise concernée
 
### dans un fichier .css

**C'est la méthode la plus pratique et la plus courante**, c’est elle qui utilise toute la logique et la puissance des feuilles de style. 
C’est simple : on écrit le code CSS dans un fichier texte avec l'extension .css.
On sépare ainsi la mise en forme (css) de la sémantique (html) ça évite de tout mélanger dans un même fichier. J'utiliserai cette méthode dans la suite de ce cours.

il suffit donc de créer un fichier texte avec l'extension .css

et d’ajouter dans la balise `<head>` du fichier HTML

```
<link rel="stylesheet" href="ma_feuille_de_style.css" />
```
### dans une balise style
on peut ajouter une balise `<style></style>` directement dans le HTML. Ce n’est pas la méthode la plus recommandée, car il faudra éditer chacune des pages HTML pour modifier la mise en page. 

```
	<style>
            p{
                color: blue;
            }
	</style>
```

### dans l’attribut de balise style

C’est la manière la moins pratique, sauf dans des cas extrèmes. 
En effet, placer le code dans un attribut `style` personnalise uniquement la balise concernée et nulle autre. 

on le note de cette manière : 

```
	<p style="color: blue;">
		mon paragraphe bleu
	</p>
	
```

## Appliquer des styles

Les styles CSS servent à décrire les modes de représentations de nos contenu dans les balises html. Pour appliquer un style, il faudra cibler sa balise. 

### syntaxe de base

pour cibler une balise html `<balise></balise>` on utilise simplement le nom de cette balise suivit de crochet `balise{}` entre ces **crochets**, on écrira tous les styles qui doivent s’appliquer. 

un exemple simple avec un fichier .css : 

```
	/* dans le fichier styles.css */
	
	p{
		color:blue;
		font-size:30px;
	}
	
```
associer à fichier html via la balise `<link rel="stylesheet" href="..." />`

```
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="utf-8" />
			<title>document</title>
			<link rel="stylesheet" href="styles.css" />
		</head>
		<body>
			<p>
				un paragraphe que va utiliser le style. 
			</p>
		</body>
	</html>
```

on voit qu’au sein d’un groupe de style, on peut associer plusieurs propriétés CSS (ici la couleur et la taille du texte). 
La syntaxte est toujours la même `nom-de-la-propriété : valeur de la propriété;` le nom toujours en bas-de-casse, toujours suivit de deux points, ensuite la valeur qui peut avoir des formes variées, terminé par point-virgule. 

ainsi voici un exemple plus fournis : 

```
	/* ce style s’applique à body, et à ces enfants */
	body{
		background:black;
		color:white;
		font-size:14px;
		font-family:"Georgia",times,serif;
		margin:0;
		padding:0;
		line-height:100%;
		position:relative;
		width:100%;
		height:100%;
	}
```
### commentaires
comme vu ci-dessus, les commentaires CSS sont des commentaires de block avec une ouverture et une fermeture `/* commentaire */` Ils sont utilisés pour annoter le code. 

### imbrication 
le css permet d'utiliser l'imbrication des balises comme méthode de ciblage. il suffit de mettre un caractère `espace` entre les noms pour cibler une balise enfant. 

ainsi le code suivant ciblera toutes les balises `a` (lien) présente dans les balise `p` (paragraphe) et appliquera une couleur jaune au texte, et un souligné. 

```
	p a {
		color:yellow;
		text-decoration:underline;
	}
	
	/*
	
	<p>
		pour cibler une lien
		<a href="http://esad-orleans.fr"> vers le site de l’ESAD</a>
		au sein du paragraphe. 
	</p>
	
	*/
	
```

il n’y a pas de limite à l'imbrication. ainsi si je veux cibler uniquement les `a` (lien) dans les emphases `em` dans les paragraphes `p` : 

```
	p em a {
		color:red;
	}
	
	/*
	
	<p>
		pour cibler une lien 
			<em>
				dans une emphase
				<a href="http://esad-orleans.fr">
					vers le site de l’ESAD
				</a>
			</em>
		au sein du paragraphe. 
	</p>
	
	*/
	
```

## classe & id

l’utilisation simple des noms de balise est pratique, mais se trouve assez vite limitée par le nombre de balise disponible. pour distinguer deux balises de même nom en CSS, on peut utiliser deux moyens assez proches, les `id` et les `class`. ces deux moyens permettent d’identifier — de nommer — des balises. 

la différence entre id et class, c'est qu'une class peut revenir sur plusieurs balises dans un seul fichier html et qu'une seule balise peut avoir plusieurs classes. 
Au contraire l'id sera **unique** dans tous le document et pour une seule balise. 
on peut cumuler **class** et **id**.

en html, on utilise les attributs id et class dans les balises.

```
	<p id="paragraphe_1" class="legende">
		une légende
	</p>
	
	<p id="paragraphe_2" class="legende importante">
		une légende importante
	</p>
```

en css, on utilise le `#` (dièse) pour les id et le `.` (point) pour les classes. Il faut placer ces caractères avant le nom de la class ou de l'id.

```
	p{
		font-size:10px;
	}
	.importante{
		color:red;
		font-size:16px;
	}
	.legende{
		color:blue;
	}
	#paragraphe_1{
		color:green;
	}
	
	
```
les id (#) sont prioritaires sur les class (.) qui sont prioritaires sur les balises. ensuite la priorité est donnée à l'ordre d'apparition. 

### classes et id agglutinés

comme on l'a vu précédement, on peut cibler avec une logique de parent enfant. Avec les **classes** et **id** il est possible de les agglutiner : 

```
	p.legende#paragraphe_1{
		/* cible 
			la balise <p></p> qui a 
			la class "legende" et 
			l'id "paragraphe_1" 
		*/
	}
```
on peut aller plus loin

```
	p.legende#paragraphe_1 a.interne{
		/* cible 
			les balises <a></a> 
			qui ont la class "interne"
				qui sont enfant d’une balise <p></p>
				qui a la class "legende" et 
				l'id "paragraphe_1" 
		*/
	}
	
	/*
		<p id="paragraphe_1" class="legende">
			une légende 
			<a href="." class="interne">
				chez nous
			</a>
		</p>
	
	*/
	
```
il est aussi possible d’agglutiner des classes sur une seule balise 

```
	.grand{
		font-size:30px;
	}
	.mechant{
		color:red;
	}
	.loup{
		background:black;
	}
	.grand.mechant.loup{
		background:blue;
		border:solid 4px yellow;
	}
	
	/*
		<span class="grand">
			OU EST
		</span>
		<span class="mechant">
			LE GRAND
		</span>
		<span class="grand mechant loup">
			MÉCHANT-
			<span class="loup">LOUP</span>
		</span>		
	*/
	
```
### selection multiple
on peut cibler plusieurs selecteur et leur appliquer un même style, en les séparants par des `,` (virgules). 

```
	a, strong, .important{
		font-weight:bold;
		color:red;
	}
	
	/* 
	
		<a href="#">un lien</a>
		<strong>fort</strong>
		<span class="important">et important</span>
	
	*/

```



