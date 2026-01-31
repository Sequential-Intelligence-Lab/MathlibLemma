import Mathlib

lemma derivWithin_eq_deriv_of_isOpen {f : ℝ → ℝ} {s : Set ℝ} {x : ℝ}
    (hs : IsOpen s) (hx : x ∈ s)
    (hfd : HasDerivWithinAt f (deriv f x) s x) :
    derivWithin f s x = deriv f x := by
  sorry
