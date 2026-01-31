import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Continuous.uniformContinuousOn_Icc_of_cauchySeq
    {f : ℝ → ℝ} (hf : Continuous f)
    (hC : ∀ u : ℕ → ℝ, CauchySeq u → CauchySeq fun n => f (u n)) :
    ∀ a b : ℝ, a ≤ b → UniformContinuousOn f (Set.Icc a b) := by
  intro a b hab
  have h_main : UniformContinuousOn f (Set.Icc a b) := by
    have h₁ : IsCompact (Set.Icc a b) := isCompact_Icc
    have h₂ : ContinuousOn f (Set.Icc a b) := hf.continuousOn
    exact h₁.uniformContinuousOn_of_continuous h₂
  exact h_main