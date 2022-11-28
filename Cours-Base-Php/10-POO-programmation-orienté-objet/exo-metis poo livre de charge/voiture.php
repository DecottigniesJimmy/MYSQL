<?php

class Voiture 
{
    /**
     * Immatriculation
     * @var string
     */
    private $Immatriculation;
    /**
     * Couleur
     * @var string
     */
    private $Couleur;
    /**
     * Poids
     * @var int
     */
    private $Poids;
    /**
     * Puissance
     * @var int
     */
    private $Puissance;
    /**
     * Capacité du réservoir
     * @var float
     */
    private $Reservoir;
    /**
     * Niveau d'essence
     * @var float
     */
    private $Niveauessence;
    /**
     * Nombre de place
     * @var int
     */
    private $Place;
    /**
     * Assuré
     * @var bool
     */
    private $Assurance;
    /**
     * Message au tableau de bord
     * @var string
     */
    private $Bord;

    public function __construct($immat, $coul, $poid, $puiss, $reserv, $plac)
    {
        $this->Immatriculation = $immat;
        $this->Couleur = $coul;
        $this->Poids = $poid;
        $this->Puissance = $puiss;
        $this->Reservoir = $reserv;
        $this->Place = $plac;
    } // le constructeur va initialisé les données au moment ou on instancie notre objet
    
    public function getniveau() 
    {
        return $this->Niveauessence = 5;
    }

    public function getboard() {
        return $this->Bord = "Bonjour bienvenue a l'accueil !";
    }

    public function getassur() {
        return $this->Assurance = false;
    }
    
}



?>