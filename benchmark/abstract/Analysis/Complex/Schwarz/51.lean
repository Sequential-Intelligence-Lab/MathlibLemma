import Mathlib

/-- A holomorphic function on the unit disk with real-valued image is constant. -/
lemma eqOn_const_of_real_valued_on_unitDisk
    {f : ℂ → ℂ}
    (hDiff : DifferentiableOn ℂ f (Metric.ball 0 1))
    (hReal : ∀ z ∈ Metric.ball 0 1, (f z).im = 0) :
    ∃ c : ℝ, Set.EqOn f (fun _ => (c : ℝ)) (Metric.ball 0 1) := by
  sorry
