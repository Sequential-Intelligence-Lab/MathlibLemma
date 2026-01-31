import Mathlib

lemma deriv_log_abs_of_pos {f : ℝ → ℝ} {x : ℝ}
    (hpos : 0 < f x)
    (hfd : HasDerivAt f (deriv f x) x) :
    HasDerivAt (fun t => Real.log (|f t|)) (deriv f x / f x) x := by
  sorry
