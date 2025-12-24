module STLCalculus where

  open import Data.Bool.Base using (Bool; true; false; T; not)
  open import Data.List.Base using (List; _∷_; [])
  open import Data.Nat.Base using (ℕ; zero; suc)
  open import Data.Product.Base using (∃-syntax; _×_)
  open import Data.String using (String; _≟_)
  open import Data.Unit.Base using (tt)
  open import Relation.Nullary.Negation using (¬_; contradiction)
  open import Relation.Nullary.Decidable using (Dec; yes; no; False; toWitnessFalse; ¬?)
  open import Relation.Binary.PropositionalEquality using (_≡_; _≢_; refl)

  Id : Set
  Id = String

  infix  5  ƛ_⇒_
  infix  5  μ_⇒_
  infixl 7  _·_
  infix  8  `suc_
  infix  9  `_
  
  data Term : Set where
    `_                      :  Id → Term
    ƛ_⇒_                    :  Id → Term → Term
    _·_                     :  Term → Term → Term
    `zero                   :  Term
    `suc_                   :  Term → Term
    case_[zero⇒_|suc_⇒_]    :  Term → Term → Id → Term → Term
    μ_⇒_                    :  Id → Term → Term

