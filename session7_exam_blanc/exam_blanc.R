#Examen terminal : Introduction a la bioinformatique pour la biologie vegetale
#jeudi 15 decembre 2021 de 9h45 a 11h30


# Consignes generales

# Telechargez le dossier Exam_terminal dans Moodle qui contient:
#   
#- Un fichier `exam.html` qui contient l'enonce de l'exam (une copie de cet enonce) 
#   
#- Un fichier `exam.R` qui contient le script R dans lequel vous allez mettre 
# vos scripts et reponses aux questions
#   
#- Un dossier `data` qui contient les donnees



# Ouvrez `exam.R` et sauvez le dans le meme dossier sous le nom `Exam_numero_etudiant.R`
# en remplaçant `numero_etudiant` par votre propre numero etudiant. 


# Pour chaque question, dans le fichier `Exam_numero_etudiant.R`:
#   
#- Commentez le code (en utilisant #) pour expliquer ce que vous allez faire et 
# pourquoi vous utilisez telle ou telle fonction
#                          
#- Utilisez des commandes appropriees pour repondre a la question
#                            
#- Et finalement repondez (en commentant avec un #) a la question grace au resultat des commandes
#                                                        
#
#                                                          
# L'exam fini a 11h15. Quand vous avez fini, deposez dans l'espace de depot Moodle 
# votre script `Exam_numero_etudiant.R`, ainsi que les screenshots de ePlant. 
# Avant de sortir de la salle, verifiez aupres de Sandra Cortijo que vos fichiers 
# sont bien dans l'espace de depot Moodle.

# N'oubliez pas d'enregistrer regulierement `Exam_numero_etudiant.R` pendant l'exam.


                                                     
# Description des donnees

                                                    
# Pour l'examen, vous allez analyser des donnees extraites de [Wang et al., 2022](https://www.nature.com/articles/s41477-022-01236-5).   
# 
# Il s'agit de donnees issues d'experiences pour mesurer l'impact de la mutation et de 
# la sur-expression du gene KIN10 chez Arabidopsis thaliana.   
#                                                        
# Pour cela l'aire des feuilles d'Arabidopsis thaliana a ete mesuree et 
# est indiquee en cm2 (colonne `leaf_area_cm2`) chez trois `genotype`: 
# `Col-0`, le mutant `kin-10` et le sur-expresseur `p35S:KIN10`. 
# L'aire des feuilles a ete mesuree chez des plantes ayant pousse avec 
# deux types d'intensite lumineuse (colonne `light_intensity`) et qui 
# ont subit un traitement (colonne `treatment`).  
#                                                        
# L'objectif de cet examen est de definir si la mutation ou la sur-expression 
# du gene KIN10 ont un impact phenotypique et si cet impact est influence par l'environnement.  
#                                                        

### Preparation de l'environnement de travail
                                                         
## Question 0

# > Chargez les librairies dont vous aurez besoin.



# > Definissez le working directory de R pour etre dans le dossier de l'exam. 



# > Chargez le fichier _Exam_L3_bioinfo.txt_ (qui est dans le dossier _/data_), 
# qui contient les donnees de phenotypage pour le mutant et le sur-expresseur de KIN10, 
# dans R et sauvez le dans un objet.

# Aide: Utilisez la fonction appropriee pour le type de donnees (dans ce cas, 
# des colonnes separees par une tabulation)



# > Pensez a inspecter ce que retourne cette commande dans la console pour avoir 
# un tout premier aperçu des donnees et verifier qu'elles sont encodees correctement.


# Verification des donnees

# Avant d'analyser les donnees, la premiere etape consiste a verifier que 
# le tableau importe dans _R_ contient bien les donnees attendues.


## Question 1

# > Combien y a t'il de lignes et de colonnes?




## Question 2

# > Combien y-a-t-il de traitements effectues? Donnez la liste des traitements



### Etude de l'impact phenotypique de la mutation et de le sur-expresseur de KIN10

## Question 3

# > Faites une figure representant la distribution de la taille des feuilles (en mm2)
# pour chaque genotype, avec l'interieur des violin plots colores en fonction du 
# traitement effectue, et ce uniquement pour les plantes qui ont pousse avec une 
# intensite lumineuse de 80. Ajoutez le resultat d'un test statistique comparant 
# les moyennes des differents groupes.
#                                                          
# Aide : Pour cela, filtrez les donnees pour garder seulement l'intensite lumineuse de 80. 
# Creez une nouvelle colonne contenant l'aire de la feuille en mm2 a partir de celle existante
# qui contient l'aire de la feuille en cm2. Puis, realisez des violin plot de l'aire de la 
# feuille en mm2 pour les differents genotypes que vous colorez en fonction du traitement. 
# Pour finir ajoutez au graphique un test de comparaison de moyennes.




# > Formulez une interpretation de ce que nous apprend cette figure quant a l'influence du 
# traitement effectue sur la taille des feuilles. 
# Est-ce que tous les genotypes repondent aux traitements?



## Question 4

# > Faites une figure representant la distribution de la taille des feuilles (en mm2) 
# pour chaque traitement, avec l'interieur des violin plots colores en fonction du genotype, 
# et ce uniquement pour les genotypes `Col-0` et `kin-10`. Creez deux facets en fonction de 
# l'intensite lumineuse utilisee. Ajoutez le resultat d'un test statistique comparant 
# les moyennes des differents groupes.

# Lisez bien la consigne car ce graphique est different de celui de la question precedente. 

# Aide : Pour cela, filtrez les donnees pour enlever le genotype `p35S:KIN10`. Creez une 
# nouvelle colonne contenant l'aire de la feuille en mm2 a partir de celle existante qui 
# contient l'aire de la feuille en cm2. Puis, realisez des violin plot de l'aire de la 
# feuille en mm2 pour les different traitements que vous colorez en fonction du genotype, 
# avec des facets en fonction de l'intensite lumineuse. Pour finir ajoutez au graphique 
# un test de comparaison de moyennes.




# > Pour confirmer le resultat de ce graphique, calculez et affichez dans la console 
# la moyenne de l'aire de la feuille (en mm2) pour l'intensite lumineuse et 
# chaque traitement en fonction du genotype. Effectuez ceci uniquement sur 
# les genotypes `Col-0` et `kin-10`.





# > Formulez une interpretation complete de ce que nous apprend cette figure et 
# l'extraction des moyennes de l'aire des feuilles quant a l'effet du traitement 
# effectue sur le genotype du mutant `kin-10`. 
# > Est-ce que l'effet de cette mutation est visible dans toutes les conditions?




#### Etude du gene KIN10 en utilisant une base de donnee 


## Question 5
                                                         
# Pour les questions suivantes, utilisez les outils proposes par l'ePlant de BAR. 
# Vos reponses devront s'accompagner de copies d'ecran permettant de suivre vos 
# analyses in silico. Pensez a indiquer dans votre reponse a chaque question 
# le nom du fichier de cette copie d'ecran et a les deposer sur Moodle avec votre script. 


# > Quelle est la fonction du gene d'Arabidopsis At3g01090 (KIN10) ?




# > Quel est le gene le plus similaire a At3g01090 (KIN10) chez Arabidopsis ?




# > Est-ce que ces deux genes repondent de la meme maniere a un traitement a l'azote (nitrogen)?



# Fin de l'exam. N'oubliez pas de vous relire, et de deposer votre script `Exam_numero_etudiant.R`, 
# ainsi que les screenshots de ePlant sur l'espace de depot Moodle. 
# Avant de sortir de la salle, verifiez aupres de Sandra Cortijo que le depot a bien ete effectue.
