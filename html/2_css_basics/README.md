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

