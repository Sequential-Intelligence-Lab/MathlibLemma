import Mathlib

-- 50. A lemma about uniform continuity of scalar multiplication in locally convex spaces
lemma continuous_smul_locallyConvex
    {E : Type*} [TopologicalSpace E] [AddCommGroup E] [Module ℝ E]
    [LocallyConvexSpace ℝ E] :
    Continuous fun p : ℝ × E => p.1 • p.2 := by
  sorry
