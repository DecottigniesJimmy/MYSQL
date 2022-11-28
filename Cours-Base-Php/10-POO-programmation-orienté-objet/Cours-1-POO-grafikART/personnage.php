<?php
    echo '<pre>';

    class Personnage { // on définit les valeurs de l'objet
        public $vie = 80;
        public $atk = 20;
        public $nom; // par defaut pas de valeur

        public function __construct($nom) { // permet d'assigner une valeur a un parametre grace a la methode construct (constructeur faire des opérations initiales et sauvegarder des informations pour faciliter le code et mieux definir les differentes instances) notamment le nom du personnage dans index.php > $jimmy = new Personnage("Jimmy");
            $this->nom = $nom;
        }

        public function crier() { // on crée une function
            echo "LEEROY JENKINS";
        }

        public function regenerer() {
            $this->vie =100; // this reference l'instance en cours (donc vie)
        }

        public function mort() {
            return $this->vie <= 0; // si la vie de mon personnage est inférieur ou = a 0 mon personnage est mort
        }
    }
?>