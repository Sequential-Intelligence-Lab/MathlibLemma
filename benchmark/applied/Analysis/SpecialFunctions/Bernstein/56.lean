import Mathlib

-- 57. A lemma comparing gauge distances for nested convex sets
lemma gauge_le_of_subset
    {E : Type*} [AddCommGroup E] [Module ℝ E] [TopologicalSpace E]
    {U V : Set E} (hUV : U ⊆ V) :
    ∀ x, gauge V x ≤ gauge U x := by
  sorry
