import Mathlib

variable {R S T : Type*}
variable [CommMonoidWithZero R] [CommMonoidWithZero S] [CommMonoidWithZero T]
variable {n m d k : ℕ}

open DirichletCharacter

/-
Dirichlet character specific lemmas
-/

/-- The restriction of a Dirichlet character to the unit group. -/
def DirichletCharacter.restrictToUnits
    (χ : DirichletCharacter R n) :
    (ZMod n)ˣ →* Rˣ :=
  χ.toUnitHom

/-
Connections with characters (MulChar) on units and ZMod
-/

/-- Behaviour of `toUnitHom` under change of level. (Statement only, no proof.) -/
lemma DirichletCharacter.toUnitHom_changeLevel
    (χ : DirichletCharacter R n) {m : ℕ} (hm : n ∣ m) :
    (changeLevel (R := R) hm χ).toUnitHom =
      χ.toUnitHom.comp (ZMod.unitsMap hm) := by
  sorry

/-- Behaviour of `toUnitHom` under multiplication of Dirichlet characters. -/
lemma DirichletCharacter.toUnitHom_mul
    (χ : DirichletCharacter R n) (ψ : DirichletCharacter R m) :
    (DirichletCharacter.mul χ ψ).toUnitHom =
      (changeLevel (R := R) (Nat.dvd_lcm_left n m) χ).toUnitHom *
      (changeLevel (R := R) (Nat.dvd_lcm_right n m) ψ).toUnitHom := by
  sorry