import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

namespace MeasureTheory

-- 9. L¹-boundedness of stopped submartingale at bounded stopping time
theorem Submartingale.integrable_stoppedValue_of_bdd_stopping
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    [IsFiniteMeasure μ] {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Submartingale f 𝒢 μ)
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    {N : ℕ} (hbdd : ∀ ω, τ ω ≤ N) :
    Integrable (stoppedValue f τ) μ := by
  sorry

end MeasureTheory