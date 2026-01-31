import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- The support of a quadratic character is stable under inversion. -/
lemma MulChar.IsQuadratic.support_inv_closed
    {R : Type*} [CommGroup R]
    {R' : Type*} [CommRing R']
    (χ : MulChar R R') (hχ : χ.IsQuadratic) :
    ∀ a, χ a ≠ 0 → χ a⁻¹ ≠ 0 := by
  intro a ha
  intro hzero
  -- χ (1) = χ (a * a⁻¹) = χ a * χ a⁻¹
  have h1' : χ (1 : R) = χ a * χ a⁻¹ := by
    simpa using (map_mul χ a a⁻¹)
  -- From χ a⁻¹ = 0 we deduce (1 : R') = 0
  have h1 : (1 : R') = 0 := by
    calc
      (1 : R') = χ (1 : R) := (map_one χ).symm
      _ = χ a * χ a⁻¹ := h1'
      _ = χ a * 0 := by simpa [hzero]
      _ = 0 := by simp
  -- From 1 = 0, multiplying by χ a shows χ a = 0, contradicting ha
  have : χ a = 0 := by
    calc
      χ a = χ a * 1 := by simp
      _ = χ a * 0 := by simpa [h1]
      _ = 0 := by simp
  exact ha this