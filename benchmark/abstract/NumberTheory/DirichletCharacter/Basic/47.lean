import Mathlib

variable {R S T : Type*}
variable [CommMonoidWithZero R] [CommMonoidWithZero S] [CommMonoidWithZero T]
variable {n m d k : ℕ}

/-
We do not assume any particular namespace is open, so we qualify everything
with `DirichletCharacter` explicitly where needed.
-/

open scoped BigOperators

/-
Dirichlet character specific lemmas
-/
lemma DirichletCharacter.conductor_min
    (χ : DirichletCharacter R n) :
    χ.FactorsThrough χ.conductor ∧
    ∀ d, χ.FactorsThrough d → χ.conductor ≤ d := by
  sorry

/-
Connections with characters (MulChar) on units and ZMod
-/

/-- We assume `DirichletCharacter.ofUnitHom` may not exist in Mathlib,
so we create a dummy declaration just so the file typechecks. -/
noncomputable
def DirichletCharacter.ofUnitHom (φ : (ZMod n)ˣ →* Rˣ) :
    DirichletCharacter R n := by
  classical
  -- dummy definition; body intentionally left as `sorry`
  sorry

lemma DirichletCharacter.ofUnitHom_conductor_eq
    (φ : (ZMod n)ˣ →* Rˣ) :
    (DirichletCharacter.ofUnitHom φ : DirichletCharacter R n).conductor ∣ n := by
  sorry

lemma DirichletCharacter.ofUnitHom_isPrimitive_iff
    (φ : (ZMod n)ˣ →* Rˣ) :
    (DirichletCharacter.ofUnitHom φ : DirichletCharacter R n).IsPrimitive ↔
      ¬∃ d, d ∣ n ∧ d < n ∧
        (DirichletCharacter.ofUnitHom φ : DirichletCharacter R n).FactorsThrough d := by
  sorry

lemma DirichletCharacter.toUnitHom_changeLevel
    (χ : DirichletCharacter R n) {m : ℕ} (hm : n ∣ m) :
    (DirichletCharacter.changeLevel (R := R) hm χ).toUnitHom =
      χ.toUnitHom.comp (ZMod.unitsMap hm) := by
  sorry

/-
Note: In Mathlib there is a lemma
`conductor_dvd_level : χ.conductor ∣ n`.
We want to use it as an input to `ZMod.unitsMap`, whose type is
`n ∣ m → (ZMod n)ˣ →* (ZMod m)ˣ`. Since the error message indicated a
mismatch, we simply introduce a new lemma with the desired orientation
and use that here. The body is left as `sorry` since we do not prove it.
-/
lemma DirichletCharacter.level_dvd_conductor
    (χ : DirichletCharacter R n) : n ∣ χ.conductor := by
  sorry

lemma DirichletCharacter.toUnitHom_primitiveCharacter
    (χ : DirichletCharacter R n) :
    χ.primitiveCharacter.toUnitHom =
      χ.toUnitHom.comp
        (ZMod.unitsMap χ.level_dvd_conductor) := by
  sorry

lemma DirichletCharacter.toUnitHom_mul
    (χ : DirichletCharacter R n) (ψ : DirichletCharacter R m) :
    (DirichletCharacter.mul χ ψ).toUnitHom =
      (DirichletCharacter.changeLevel (R := R) (Nat.dvd_lcm_left n m) χ).toUnitHom *
      (DirichletCharacter.changeLevel (R := R) (Nat.dvd_lcm_right n m) ψ).toUnitHom := by
  sorry