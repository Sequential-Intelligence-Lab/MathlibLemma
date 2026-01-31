import Mathlib

open MeasureTheory

lemma integrable_upcrossingsBefore'
    {Ω : Type _} [m0 : MeasurableSpace Ω] (μ : Measure Ω)
    [IsFiniteMeasure μ]
    {ℱ : Filtration ℕ m0}
    {a b : ℝ} {f : ℕ → Ω → ℝ}
    (hf : Adapted ℱ f) :
    ∀ N, Integrable (fun ω => (upcrossingsBefore a b f N ω : ℝ)) μ := by
  sorry