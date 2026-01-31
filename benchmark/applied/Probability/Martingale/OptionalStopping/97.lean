import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

namespace MeasureTheory

/-- 100. Submartingale inequality for terminal time determined by hitting time (statement) -/
theorem Submartingale.ineq_at_hitting_time
    {Ω : Type*} [mΩ : MeasurableSpace Ω] (μ : Measure Ω)
    {𝒢 : Filtration ℕ mΩ} [IsFiniteMeasure μ]
    {f : ℕ → Ω → ℝ}
    (hsub : Submartingale f 𝒢 μ)
    {A : Set ℝ} (hA : MeasurableSet A)
    {m n : ℕ}
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    (hbdd : ∀ ω, τ ω ≤ n) :
    (∫ ω, stoppedValue f τ ω ∂μ) ≤ (∫ ω, f n ω ∂μ) := by
  sorry

end MeasureTheory