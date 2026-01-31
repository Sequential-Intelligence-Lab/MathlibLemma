import Mathlib

lemma hasDerivAt_eq_zero_of_const_on_open {f : ℝ → ℝ} {s : Set ℝ} {x : ℝ}
    (hs : IsOpen s) (hx : x ∈ s) (hconst : ∀ y ∈ s, f y = f x) :
    HasDerivAt f 0 x := by
  sorry
