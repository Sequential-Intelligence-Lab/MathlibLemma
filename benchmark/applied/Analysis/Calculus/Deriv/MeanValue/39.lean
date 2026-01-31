import Mathlib

lemma deriv_eq_zero_of_const_on_open {f : ℝ → ℝ} {s : Set ℝ}
    (hs : IsOpen s) (hconst : ∀ x ∈ s, ∀ y ∈ s, f x = f y) :
    ∀ x ∈ s, deriv f x = 0 := by
  sorry
