import Mathlib

open MeasureTheory

lemma upcrossingStrat_integrable
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ℱ : MeasureTheory.Filtration ℕ m0} [MeasureTheory.IsFiniteMeasure μ]
    {a b : ℝ} {f : ℕ → Ω → ℝ} {N : ℕ}
    (hf : MeasureTheory.Adapted ℱ f)
    (hinteg : ∀ n, MeasureTheory.Integrable (f n) μ) :
    ∀ n, MeasureTheory.Integrable (fun ω => MeasureTheory.upcrossingStrat a b f N n ω) μ := by
  sorry