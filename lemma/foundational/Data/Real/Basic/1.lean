import Mathlib

lemma Real.eq_iff_cauchy_eq (x y : ℝ) : x = y ↔ x.cauchy = y.cauchy := by
  -- `ℝ` is a structure whose equality is determined by its `cauchy` field.
  -- After destructuring both sides, the statement reduces to definitional equality.
  cases x <;> cases y <;> simp