import Mathlib

/-- A continuous function on `ℝ` that sends Cauchy sequences to Cauchy sequences is uniformly
continuous on any closed interval. -/
lemma Continuous.uniformContinuousOn_Icc_of_cauchySeq
    {f : ℝ → ℝ} (hf : Continuous f)
    (hC : ∀ u : ℕ → ℝ, CauchySeq u → CauchySeq fun n => f (u n)) :
    ∀ a b : ℝ, a ≤ b → UniformContinuousOn f (Set.Icc a b) := by
  sorry
