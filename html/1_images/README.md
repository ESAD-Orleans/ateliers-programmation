Travailler avec des images pour le web
========
au sein d’une page web, il existe plusieurs manières d’afficher des images. Quand on parle d’image pour le web, sont exclues les images vidéos (filmiques). En revanche, on inclue les GIF, qui peuvent être animées, et ce pour des raisons historiques (les GIF étant beaucoup plus leger que les vidéos à traiter par un ordinateur). 
	
## Enregistrer pour le Web
depuis Photoshop, afin `d’optimiser` les images et de réduire le temps de chargement de la page, on utilise l’outil **Enregistrer pour le Web**. cet outil nous aide à choisir tel ou tel type de compression et à voir les incidence sur la qualité de l’image. 
Il se situe dans le menu `Fichier > Enregistrer pour le Web` ou le raccourci **Cmd+Alt+Maj+S**

![save for web](img/menu_save_for_web.png)

![save for web](img/save_for_web.png)

le même outil existe dans Illustrator. Illustrator permet en outre un export en `SVG`, puisque il est nativement **vectoriel**. 

## Les types d’images

plusieurs types d’images sont disponibles sur une page web, on en dénombre 

* 3 bitmaps
	* `GIF`
	* `JPEG`
	* `PNG`   
* 1 vectoriel 
	* `SVG`
	
### GIF

le gif est historiquement le premier format d’image apparu sur internet. c’est un format **très compressé**, et donc assez leger mais avec beaucoup de perte. 

Il utilise plusieurs principe de compression. Le principe de compression le plus simple à comprendre — c’est aussi celui qui a le plus d’incidence graphique — utilise le principe de `palette de couleur`. Le formatage consiste à définir une palette de couleurs réduites (256 maximum) utilisée dans l’image. On peut choisir le nombre de couleurs qui constituent l’image. plus il y aura de couleurs, plus le poids de l’image sera lourd, moins il y en a, plus la qualité est médiocre. 

le format gif est `adapté à des images de petite taille` (<500px). 

le gif permet d’utiliser de la `transparence mais sans niveau`. 

exemples avec 256, 32 et 8 couleurs (97ko, 48ko, 26ko) : 

![256](img/dataram_256.gif) ![32](img/dataram_32.gif) ![8](img/dataram_8.gif) 

Le gif permet aussi de faire des **animations** que l’on appelle gif-animé, ces animations sont fortement encodée, et ont beaucoup de perte. 

### JPEG

le jpeg est le format le plus populaire sur internet. Il a été massivement introduit avec l’arrivée de la photographie numérique, car il est très adapté à celle-ci. En effet il utilise la chrominance et la luminance comme base pour sa compression. Certains codages jpeg sont sans perte, mais souvent, ont utilise des codages avec perte (par quantification) le niveau de qualité permet de faire varier le poids et la qualité de l’image en fonction des besoins. 

le format jpeg est `adapté à des images de toute taille`. En raison de sa compression, on le privilégiera pour des images de très grande taille. 

sur des images non-photographique, où peuvent-être présent des graphiques en aplats, des typographies, et des visuels contrasté, la compression jpeg formera des artefacts d’encodage. Il est donc peu recommander d’utiliser le jpg pour des visuels non-photographiques. 

exemple de jpeg qualité 20/100 (18ko). 

![20](img/dataram_20.jpg)

### PNG-24

le format png 24 est un format d’image `sans perte`. pour cette raison, on l’utilise pour des images avec une haute exigence graphique, pour assurer l’intégrité des couleurs. Cette qualité rend les images assez **lourdes**.

le PNG 24 permet d’intégrer de la `transparence`, codé sur un `channel alpha` de `255` niveaux. C’est le seul format qui permet cela. 

l’exemple en PNG 24 fait 230ko. 

![PNG24](img/dataram.png)

### PNG-8

le format png 8 est assez similaire au gif. 

### SVG

Sans trop s’attarder sur le format SVG — car moins utilisé, c’est le seul format vectoriel compatible. C’est un format qui hérite du XML, autrement dit, vous pouvez l’éditer avec un éditeur de texte. Cette caractéristique permet aussi de l'intégrer directement — *inline* (en ligne) — dans les balises HTML. 

illustrator permet l’export vectoriel SVG. 

le SVG n’utilise pas de compression et l’export illustrator n’est pas toujours très optimisé. il faut veiller à ne pas avoir des fichiers trop lourds. 

il a beaucoup d’avantage, car `scalaire` et convient bien aux graphiques en aplats et aux typographies. 

le SVG a un

## Optimisations

### Poids des images

sur internet, une des problématiques récurrente est celle du poids des fichiers. Les images sont des fichiers qui sont assez lourds, surtout quand ils sont nombreux. Il faudra veiller à optimiser ses images afin d’avoir une page assez rapide à charger, et concevoir des pages économes en ressources. Le temps de chargement est un facteur déterminant dans la poursuite — ou non — d’une navigation sur un site. 

<table>
<thead>
<tr>
<th align="left">taille du fichier </th>
<th>  correspond à </th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">&lt; 10ko </td>
<td> très léger, icône.</td>
</tr>
<tr>
<td align="left">de 10ko à 20ko </td>
<td> léger, miniature de galerie</td>
</tr>
<tr>
<td align="left">de 20ko à 40ko </td>
<td> moyen, grande miniature</td>
</tr>
<tr>
<td align="left">de 40ko à 100ko </td>
<td> moyen, visuel avec détail</td>
</tr>
<tr>
<td align="left">de 100ko à 200ko </td>
<td> grande image</td>
</tr>
<tr>
<td align="left">de 200ko à 500ko </td>
<td> grande image, complexe, transparence</td>
</tr>
<tr>
<td align="left">de 500ko à 1Mo </td>
<td> très grande image. (déconseillé)</td>
</tr>
<tr>
<td align="left">+ de 1Mo </td>
<td> image mal compressée (déconseillé)</td>
</tr>
</tbody>
</table>
 
Globalement, plus une page comportera d’images (lourdes) plus elle sera longue à charger, ce qui n’est pas très *user-friendly*. 
le temps de téléchargement moyen d’un débit ADSL est de 80ko/s. donc pour charger 800ko, ça prend 10 secondes. c’est long. 

### Choix du type de fichier

une petite grille pour vous aider à choisir votre type de fichier

<table>
<thead>
<tr>
<th align="left">Format          </th>
<th> JPG </th>
<th> PNG-24 </th>
<th> PNG-8 </th>
<th> GIF </th>
<th> SVG </th>
<th> ko</th>
</tr>
</thead>
<tbody>
<tr>
<td align="left">compatibilité </td>
<td> - </td>
<td> IE7 </td>
<td> - </td>
<td> - </td>
<td> IE9 </td>
<td> -</td>
</tr>
<tr>
<td align="left">bitmap   </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td>  </td>
<td> -</td>
</tr>
<tr>
<td align="left">vectoriel   </td>
<td>   </td>
<td>  </td>
<td>  </td>
<td>  </td>
<td> X </td>
<td> -</td>
</tr>
<tr>
<td align="left">forte compression </td>
<td> X </td>
<td>  </td>
<td> X </td>
<td> X </td>
<td>  </td>
<td> -</td>
</tr>
<tr>
<td align="left">faible compression </td>
<td> X </td>
<td> X </td>
<td> </td>
<td> </td>
<td> </td>
<td> -</td>
</tr>
<tr>
<td align="left">sans perte </td>
<td>  </td>
<td> X </td>
<td>  </td>
<td>  </td>
<td>   </td>
<td> -</td>
</tr>
<tr>
<td align="left">grande image </td>
<td> X </td>
<td> X </td>
<td>  </td>
<td>  </td>
<td>  </td>
<td> 100 ko</td>
</tr>
<tr>
<td align="left">très grande image </td>
<td> X </td>
<td>  </td>
<td>  </td>
<td>  </td>
<td> </td>
<td> 300 ko</td>
</tr>
<tr>
<td align="left">photographie   </td>
<td> X </td>
<td>  </td>
<td>  </td>
<td>  </td>
<td>  </td>
<td> -</td>
</tr>
<tr>
<td align="left">icône   </td>
<td>   </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td>  </td>
<td> 10 ko</td>
</tr>
<tr>
<td align="left">typographie   </td>
<td>   </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> -</td>
</tr>
<tr>
<td align="left">flat design   </td>
<td>   </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> -</td>
</tr>
<tr>
<td align="left">transparence   </td>
<td>   </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> -</td>
</tr>
<tr>
<td align="left">sur 255 niveaux   </td>
<td>   </td>
<td> X </td>
<td>  </td>
<td> </td>
<td> </td>
<td> -</td>
</tr>
<tr>
<td align="left">palette réduite de couleurs </td>
<td> </td>
<td> X </td>
<td> X </td>
<td> X </td>
<td> </td>
<td> -</td>
</tr>
<tr>
<td align="left">contenus variés </td>
<td> X </td>
<td> X </td>
<td>  </td>
<td>  </td>
<td>  </td>
<td> 150 ko</td>
</tr>
<tr>
<td align="left">animation </td>
<td> </td>
<td>   </td>
<td>   </td>
<td> X </td>
<td> </td>
<td> - </td>
</tr>
</tbody>
</table>

 

 
### TinyPNG : optimisation PNG-24
 
 le site [tinypng.org](http://tinypng.org/) est un `outil en ligne` qui permet de compressé des PNG-24 générés par photoshop, pour leur faire gagner jusqu’à 80% de leur taille, sans perdre la transparence sur 255 niveaux. Ils perdent cependant un petit peu de qualité. il utilise le principe de compression par palette de couleurs/transparences.
 ![tinypng](img/tinypng.png)
 