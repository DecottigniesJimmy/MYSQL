<?php
    class voiture {
        public $marque;
        public $couleur;
        public $immat;

        public function show() {
            echo "La voiture est de marque " .$this->marque ."<br>";
            echo " sa couleur est : " .$this->couleur ."<br>";
            echo " son immatriculation : " .$this->immat ."<br>";
            echo "<br>";
        }
    }

    echo "Bonjour : <br><br>";
    $voiture = new voiture();
    $voiture->marque = "Audi";
    $voiture->couleur = "grise";
    $voiture->immat = "BD-QK";

    $voiture2 = new voiture();
    $voiture2->marque = "Bmw";
    $voiture2->couleur = "Rouge";
    $voiture2->immat = "BP-PK";

    $voiture->show();
    $voiture2->show();

?>


