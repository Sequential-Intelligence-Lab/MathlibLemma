import Mathlib

variable {R S T : Type*}
variable [CommRing R] [CommRing S] [CommRing T]
variable {n m d k : ℕ}

open DirichletCharacter

/-
Dirichlet character specific lemmas
-/
lemma DirichletCharacter.Even.mul_odd
    {χ ψ : DirichletCharacter R m} (hχ : χ.Even) (hψ : ψ.Odd) :
    (χ * ψ).Odd := by
  sorry