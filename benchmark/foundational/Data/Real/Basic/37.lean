import Mathlib

lemma Real.ringEquivCauchy_symm_apply
    (x : CauSeq.Completion.Cauchy (abs : ℚ → ℚ)) :
    Real.ringEquivCauchy.symm x = Real.ofCauchy x := by
  sorry
