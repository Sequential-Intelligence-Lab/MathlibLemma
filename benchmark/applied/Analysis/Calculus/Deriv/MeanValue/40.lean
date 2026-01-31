import Mathlib

lemma deriv_comp_affine {f : ℝ → ℝ} {a b x : ℝ}
    (hfd : HasDerivAt f (deriv f (a * x + b)) (a * x + b)) :
    HasDerivAt (fun t => f (a * t + b)) (a * deriv f (a * x + b)) x := by
  sorry
