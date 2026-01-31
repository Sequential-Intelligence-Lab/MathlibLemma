import Mathlib

lemma deriv_mul_eq_zero_of_localExtrema {f : ℝ → ℝ} {x : ℝ}
    (hmax : IsLocalMax f x ∨ IsLocalMin f x)
    (hfd : HasDerivAt f (deriv f x) x) :
    deriv f x = 0 := by
  sorry
