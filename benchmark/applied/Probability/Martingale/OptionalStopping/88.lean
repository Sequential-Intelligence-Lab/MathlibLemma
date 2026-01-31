import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory Filter Topology

-- 91. Jensen inequality at stopping times for convex functions (statement)
theorem Submartingale.jensen_at_stopping
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    [IsProbabilityMeasure μ]
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    {φ : ℝ → ℝ} (hconv : ConvexOn ℝ (Set.univ : Set ℝ) φ)
    (hsub : MeasureTheory.Submartingale f 𝒢 μ)
    {τ : Ω → ℕ∞} (hτ : MeasureTheory.IsStoppingTime 𝒢 τ)
    {N : ℕ} (hbdd : ∀ ω, τ ω ≤ (N : ℕ∞)) :
    (∫ ω, φ (MeasureTheory.stoppedValue f τ ω) ∂μ) ≥
      φ (∫ ω, MeasureTheory.stoppedValue f τ ω ∂μ) := by
  sorry