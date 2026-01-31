import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 5. Optional stopping if τ = π almost everywhere
theorem Submartingale.expected_stoppedValue_mono_of_ae_le
    {Ω : Type*} [MeasureSpace Ω]
    {f : ℕ → Ω → ℝ} {μ : Measure Ω} {𝒢 : Filtration ℕ (by infer_instance)}
    (hf : Submartingale f 𝒢 μ)
    [SigmaFinite (μ := μ)]
    {τ π : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ) (hπ : IsStoppingTime 𝒢 π)
    (hle : τ ≤ π) (h_ae : ∀ᵐ ω ∂μ, τ ω = π ω)
    {N : ℕ} (hbdd : ∀ ω, π ω ≤ N) :
    (∫ ω, stoppedValue f τ ω ∂μ) = (∫ ω, stoppedValue f π ω ∂μ) := by
  sorry