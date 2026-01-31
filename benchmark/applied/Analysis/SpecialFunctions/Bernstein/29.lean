import Mathlib

-- 30. Gauge of closure equals closure of gauge (as extended real)
lemma gauge_closure_le
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [TopologicalSpace E]
    (U : Set E) :
    ∀ x, gauge (closure U) x ≤ gauge U x := by
  sorry