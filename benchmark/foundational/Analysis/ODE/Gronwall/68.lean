import Mathlib

lemma gronwallBound_hasDerivAt_real
    {δ K ε x : ℝ} :
    HasDerivAt (fun y : ℝ => gronwallBound δ K ε y)
      (K * gronwallBound δ K ε x + ε) x := by
  sorry