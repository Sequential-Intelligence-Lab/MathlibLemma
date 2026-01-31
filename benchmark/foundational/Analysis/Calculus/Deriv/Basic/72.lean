import Mathlib

open scoped Real

lemma HasDerivAtFilter.abs
    {x : ℝ} {L : Filter ℝ}
    {f : ℝ → ℝ} {f' : ℝ}
    (hf : HasDerivAtFilter f f' x L)
    (hx : f x ≠ 0) :
    HasDerivAtFilter (fun y => ‖f y‖) (Real.sign (f x) * f') x L := by
  sorry