@@ -0,0 +1,39 @@
/*Module pour créer une dalle aléatoire avec comme paramètre : 
StyleDalle01.scad
StyleDalle02.scad
StyleDalle03.scad
StyleDalle04.scad
DalleDeBase.scad
*/

//Definitions des variables
Pouce = 25.4;
NombreEnX = 1;
NombreEnY = 1;
HauteurDalle = 1/4*Pouce;
ResolutionArrondi = .5;

//Appel des modules
use <SCAD/DalleDeBase.scad>;
include <SCAD/StyleDalle01.scad>;

//Création du module dalle de base
//Gestion des dalles

module DalleStyleType01(){
    echo ("NombreEnX = ",NombreEnX);
    echo ("NombreEnY = ",NombreEnY);
    union(){
        CubeArrondi(NombreEnX*Pouce,NombreEnY*Pouce,HauteurDalle-.2*HauteurDalle,ResolutionArrondi);
        //
        for (i = [0:NombreEnX-1]) {
            echo ("i = ",i);
        for (j = [0:NombreEnY-1]) {
            echo ("j = ",j);
            translate([Pouce*i, Pouce*j, 0])StyleDalle01();
            }
        }
    }
}
//Test
DalleStyleType01();
\ No newline at end of file
