import Mathlib

open Filter Topology

/-- If a sequence in a metric space is eventually constant, then it converges. -/
lemma tendsto_of_eventually_const {X : Type*} [MetricSpace X]
    (u : ℕ → X) (x : X)
    (h : ∀ᶠ n in atTop, u n = x) :
    Tendsto u atTop (𝓝 x) := by
  sorry