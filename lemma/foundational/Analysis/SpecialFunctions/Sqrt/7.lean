import Mathlib

lemma sqrt_uniformContinuousOn_Icc (a b : ℝ) (h : 0 ≤ a) :
    UniformContinuousOn Real.sqrt (Set.Icc a b) := by
  -- `Real.sqrt` is continuous on `ℝ`, hence continuous on any subset.
  have hcont : ContinuousOn Real.sqrt (Set.Icc a b) :=
    (Real.continuous_sqrt).continuousOn
  -- The closed interval `[a, b]` is compact in `ℝ`.
  have hcompact : IsCompact (Set.Icc a b) := isCompact_Icc
  -- A continuous function on a compact set is uniformly continuous on that set.
  exact hcompact.uniformContinuousOn_of_continuous hcont