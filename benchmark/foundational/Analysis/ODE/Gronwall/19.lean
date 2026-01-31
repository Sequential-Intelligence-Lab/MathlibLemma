import Mathlib

lemma gronwallBound_deriv (δ K ε x : ℝ) :
    HasDerivAt (fun x => gronwallBound δ K ε x) (K * gronwallBound δ K ε x + ε) x :=
by
  sorry