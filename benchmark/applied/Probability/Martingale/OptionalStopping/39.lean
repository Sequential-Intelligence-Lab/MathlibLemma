import Mathlib

open MeasureTheory Filter

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/
-- 42. Dominated convergence under stopping times
theorem ae_tendsto_stoppedValue_of_ae_tendsto
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} {g : Ω → ℝ}
    (hf_tendsto : ∀ᵐ ω ∂μ, Tendsto (fun n => f n ω) atTop (nhds (g ω)))
    (τ : Ω → ℕ∞) :
    ∀ᵐ ω ∂μ,
      Tendsto
        (fun n => MeasureTheory.stoppedValue f (fun _ => (n : ℕ∞)) ω)
        atTop (nhds (g ω)) := by
  sorry