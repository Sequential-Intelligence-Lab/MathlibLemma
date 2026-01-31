import Mathlib

lemma Real.eq_of_sq_eq_sq {x y : ℝ} (h : x ^ 2 = y ^ 2) (hx : 0 ≤ x) (hy : 0 ≤ y) :
    x = y := by
  -- From equality of squares, we get either x = y or x = -y
  have h' : x = y ∨ x = -y := (sq_eq_sq_iff_eq_or_eq_neg).1 h
  cases h' with
  | inl hxy =>
      -- Directly the desired equality
      exact hxy
  | inr hxn =>
      -- Use nonnegativity to rule out the x = -y case except when y = 0
      have hyneg : 0 ≤ -y := by
        simpa [hxn] using hx
      have hyle0 : y ≤ 0 := (neg_nonneg).1 hyneg
      have hyzero : y = 0 := le_antisymm hyle0 hy
      -- With y = 0 and x = -y, we get x = 0, hence x = y
      simpa [hxn, hyzero]