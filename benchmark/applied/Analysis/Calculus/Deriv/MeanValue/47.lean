import Mathlib

lemma derivWithin_eq_deriv_of_subset {f : ℝ → ℝ} {s t : Set ℝ} {x : ℝ}
    (hst : s ⊆ t)
    (hx : x ∈ s)
    (ht : t ∈ nhds x)
    (hfd : HasDerivWithinAt f (derivWithin f t x) t x) :
    derivWithin f s x = derivWithin f t x := by
  sorry