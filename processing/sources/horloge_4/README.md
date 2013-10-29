Horloge 4
===============
![ScreenShot](screenshot.png)

nous avons vu dans les précédents cours que l’aiguille des secondes — pour afficher la trotteuse en *course permanente* —n'était pas réglée sur le *temps réel* de l’ordinateur car il utilisait la fonction **millis()** qui affiche les millisecondes depuis le début du lancement du programme. 
Nous allons devoir utiliser la librairie Java *Date* pour avoir cette information là. 

## notions abordées

- rechercher dans la **référence**, la `documentation`. le raccourci clavier est `CMD`+`MAJ`+`F` sur un mot clé Processing, ou menu `Help > Reference`. La référence est le dictionnaire illustré du langage processing, sa documentation. Tous les mots-clés du langages sont là. 
- importer une librairie externe, en début du programme :

	```
import java.util.Date; // importe la librairie Java 
						// nommée java.util.Date
						// pour le traitement des Dates. 
	```
	les librairies (*library*) servent à étendre les fonctionnalités de base de processing. ici Date nous permet d’avoir des informations plus précises sur la date, comme .getTime(); <br/>On peut aussi ajouter une librairie externe, en l’ajoutant depuis le menu `Sketch > import library… > add Library…` on arrive sur cette boite de dialogue : <br/> ![ad library](add_library.png) 
	on peut alors gérer (ajouter/supprimer les librairies). les librairie installées de cette manière seront présentes dans le dossier /~User Documents~/Processing/librairies/ <br/>
``` Attention : quand une librairie est utilisée dans une sketch, si  vous testez votre sketch sur un autre ordinateur et que la librairie n’est pas installée, vous aurez des erreurs. ```

- les bases de la **[Programmation Orientiée Objet (POO)](http://fr.wikipedia.org/wiki/Programmation_orient%C3%A9e_objet)** 
- **la syntaxe à point**. exemple, l’objet Date();
 		

## mots-clés Processing

- *import* library
- *Date* & *Date.getTime( )*


