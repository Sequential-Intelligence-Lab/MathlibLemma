import Mathlib

lemma gronwallBound_integrable_on_compact
    {δ K ε a b : ℝ} :
    IntervalIntegrable (fun x => gronwallBound δ K ε x) volume a b := by
  sorry
