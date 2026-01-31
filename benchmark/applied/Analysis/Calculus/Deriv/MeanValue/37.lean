import Mathlib

lemma hasDerivAt_eq_zero_of_const_nhd {f : ℝ → ℝ} {x : ℝ}
    (hconst : ∀ᶠ y in (Filter.principal {x}), f y = f x) :
    HasDerivAt f 0 x := by
  sorry