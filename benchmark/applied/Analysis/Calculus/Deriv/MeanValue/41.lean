import Mathlib

lemma deriv_affine_comp {f : ℝ → ℝ} {a b x : ℝ}
    (hfd : HasDerivAt f (deriv f x) x) :
    HasDerivAt (fun t => a * f t + b) (a * deriv f x) x := by
  sorry
