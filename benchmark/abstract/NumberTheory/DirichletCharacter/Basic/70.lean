import Mathlib

variable {R S T : Type*}
variable [CommRing R] [CommRing S] [CommRing T]
variable {n m d k : ℕ}

open DirichletCharacter

namespace DirichletCharacter

/-
Dirichlet character specific lemmas
-/
lemma Even_iff_toUnitHom
    {χ : DirichletCharacter S m} :
    χ.Even ↔ χ.toUnitHom (-1) = 1 := by
  sorry

/-
Connections with characters (MulChar) on units and ZMod
-/

/-- Stand‑in for a (presumably existing) `ofUnitHom` definition.

We do not care about the definition here, only the type, so we leave it as
an axiom with the expected type.
-/
axiom ofUnitHom (φ : (ZMod n)ˣ →* Rˣ) : DirichletCharacter R n

lemma ofUnitHom_conductor_eq
    (φ : (ZMod n)ˣ →* Rˣ) :
    (ofUnitHom (R := R) (n := n) φ).conductor ∣ n := by
  sorry

lemma ofUnitHom_isPrimitive_iff
    (φ : (ZMod n)ˣ →* Rˣ) :
    (ofUnitHom (R := R) (n := n) φ).IsPrimitive ↔
      ¬∃ d, d ∣ n ∧ d < n ∧
        (ofUnitHom (R := R) (n := n) φ).FactorsThrough d := by
  sorry

lemma toUnitHom_changeLevel
    (χ : DirichletCharacter R n) {m : ℕ} (hm : n ∣ m) :
    (changeLevel (R := R) hm χ).toUnitHom =
      χ.toUnitHom.comp (ZMod.unitsMap hm) := by
  sorry

lemma toUnitHom_primitiveCharacter
    (χ : DirichletCharacter R n) (h : n ∣ χ.conductor) :
    χ.primitiveCharacter.toUnitHom =
      χ.toUnitHom.comp (ZMod.unitsMap h) := by
  sorry

lemma toUnitHom_mul
    (χ : DirichletCharacter R n) (ψ : DirichletCharacter R m) :
    (DirichletCharacter.mul χ ψ).toUnitHom =
      (changeLevel (R := R) (Nat.dvd_lcm_left n m) χ).toUnitHom *
      (changeLevel (R := R) (Nat.dvd_lcm_right n m) ψ).toUnitHom := by
  sorry

end DirichletCharacter