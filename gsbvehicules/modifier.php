<?php
/** 
 * Script de contr�le et d'affichage du cas d'utilisation "Ajouter"
 * @package default
 * @todo  RAS
 */
 
$repInclude = './include/';
$repVues = './vues/';

require($repInclude . "_init.inc.php");
  
$unMat=lireDonneePost("mat", "");
$unNom=lireDonneePost("name", "");
$unPrenom=lireDonneePost("preno", "");
$lafleur =0;

if (count($_POST)==0)
{
  $etape = 1;
}
else
{
  $etape = 2;
  modifier($unMat, $unNom, $unPrenom,$tabErreurs);
}

// Construction de la page Rechercher
// pour l'affichage (appel des vues)
include($repVues."entete.php") ;
include($repVues."menu.php") ;
include($repVues ."erreur.php");
include($repVues."vModifierForm.php") ; 
include($repVues."pied.php") ;
?>
  
