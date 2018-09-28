<?php
$serveur='mysql:host=localhost';
$bdd='dbname=gsb_frais';   		
$user='root' ;    		
$mdp='' ;	

$monPdo = new PDO($serveur.';'.$bdd, $user, $mdp); 
$monPdo->query("SET CHARACTER SET utf8");

echo "Changement de la taille maximal du mot de passe<br/>";
$monPdo->query("ALTER TABLE Visiteur CHANGE mdp mdp CHAR(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL");
echo "Changement de la taille maximal du mot de passe OK<br/><br/>";

$preparedQuery = $monPdo->prepare("SELECT id, mdp FROM Visiteur;");
$preparedQuery->execute();

echo "Début du hashage des mots de passe.<br/>";
while($visiteur = $preparedQuery->fetch()) {
	$id = $visiteur["id"];
	$mdpSha = hash("sha256", $visiteur["mdp"]);
	
	$sqlQuery = "UPDATE Visiteur SET mdp='$mdpSha' WHERE id='$id';";
	echo "Requête en cours : ".$sqlQuery."<br/>";
	$monPdo->query($sqlQuery);
}

echo "Hashage des mots de passe terminé.<br/>";
?>
