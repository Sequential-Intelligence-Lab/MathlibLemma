import Mathlib

/-- A continuous function from a compact metric space to `ℝ` is bounded and attains its bounds. -/
lemma Continuous.exists_max_min_on_compact
    {X : Type*} [MetricSpace X] [CompactSpace X]
    {f : X → ℝ} (hf : Continuous f) :
    ∃ x y, (∀ z, f z ≤ f x) ∧ (∀ z, f y ≤ f z) := by
  sorry
