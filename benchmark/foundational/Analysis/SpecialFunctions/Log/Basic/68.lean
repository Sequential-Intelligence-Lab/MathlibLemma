import Mathlib

lemma Real.hasDerivAt_log_comp {f : ℝ → ℝ} {x : ℝ}
    (hf : HasDerivAt f f' x) (hx : f x ≠ 0) :
    HasDerivAt (fun t => Real.log (f t)) (f' / f x) x := by
  sorry
