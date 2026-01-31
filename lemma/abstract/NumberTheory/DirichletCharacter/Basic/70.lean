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
  -- Use the equivalence χ.Even ↔ χ (-1) = 1 and the relation
  -- between χ (-1) and χ.toUnitHom (-1).
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
  -- Apply the general lemma that the conductor of any Dirichlet character
  -- divides its level n.
  sorry

lemma ofUnitHom_isPrimitive_iff
    (φ : (ZMod n)ˣ →* Rˣ) :
    (ofUnitHom (R := R) (n := n) φ).IsPrimitive ↔
      ¬∃ d, d ∣ n ∧ d < n ∧
        (ofUnitHom (R := R) (n := n) φ).FactorsThrough d := by
  -- Use the general isPrimitive_iff_not_exists_factorsThrough lemma,
  -- specialized to χ := ofUnitHom φ.
  sorry

lemma toUnitHom_changeLevel
    (χ : DirichletCharacter R n) {m : ℕ} (hm : n ∣ m) :
    (changeLevel (R := R) hm χ).toUnitHom =
      χ.toUnitHom.comp (ZMod.unitsMap hm) := by
  -- Prove equality of monoid homs by extensionality on units of ZMod m,
  -- using the definitions of changeLevel and toUnitHom.
  sorry

lemma toUnitHom_primitiveCharacter
    (χ : DirichletCharacter R n) (h : n ∣ χ.conductor) :
    χ.primitiveCharacter.toUnitHom =
      χ.toUnitHom.comp (ZMod.unitsMap h) := by
  -- Similar to the previous lemma, but using the definition of primitiveCharacter.
  sorry

lemma toUnitHom_mul
    (χ : DirichletCharacter R n) (ψ : DirichletCharacter R m) :
    (DirichletCharacter.mul χ ψ).toUnitHom =
      (changeLevel (R := R) (Nat.dvd_lcm_left n m) χ).toUnitHom *
      (changeLevel (R := R) (Nat.dvd_lcm_right n m) ψ).toUnitHom := by
  -- Show both sides are the same monoid hom (ZMod (lcm n m))ˣ →* Rˣ
  -- by extensionality and unpacking definitions of mul and of * on monoid_hom.
  sorry

end DirichletCharacter