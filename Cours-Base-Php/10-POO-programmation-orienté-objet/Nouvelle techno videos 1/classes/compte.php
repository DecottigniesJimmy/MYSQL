<?php 
/** Objet compte bancaire */
class Compte 
{
    //Propriétés on définit avec /** */ le type de donnée
    /**
     * Titulaire du compte
     * @var string
     */
   public $titulaire;

   /**
    * Solde du compte
    *
    * @var float
    */
   public $solde;

   /**
    * Constructeur du compte bancaire
    *
    * @param string $nom Nom du titulaire
    * @param float $montant Montant du solde a l'ouverture
    */
   public function __construct(string $nom, float $montant = 100) // fonction dite magique constructeur de notre objet, entre paranthese on lui dit : pour crée un objet j'ai besoin obligatoirement d'un nom donc (string $nom) 
   {
    // On attribue le nom a la propriété titulaire de l'instance crée
    $this->titulaire = $nom;

    //on attribue le montant a la propriété solde
    $this->solde = $montant;
   }

}