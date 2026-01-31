import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 40. Boundedness of stopped process supremum in probability
theorem Submartingale.prob_sup_stopped_le_prob_sup_final
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ι : Type*} [Preorder ι]
    (𝒢 : Filtration ι m0) [IsFiniteMeasure μ]
    (f : ι → Ω → ℝ) (hsub : Submartingale f 𝒢 μ)
    (hnonneg : ∀ n ω, 0 ≤ f n ω)
    (τ : Ω → WithTop ι) (hτ : IsStoppingTime 𝒢 τ) (N : ι)
    (hbdd : ∀ ω, τ ω ≤ (N : WithTop ι))
    (ε : ℝ) (hε : 0 < ε) :
    μ {ω | ∃ k : ι, (k : WithTop ι) ≤ τ ω ∧ f k ω ≥ ε} ≤
      μ {ω | ∃ k : ι, k ≤ N ∧ f k ω ≥ ε} := by
  sorry