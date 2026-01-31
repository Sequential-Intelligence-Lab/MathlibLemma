import Mathlib

open MeasureTheory

lemma upcrossingStrat_predictable
    {Ω} {m0 : MeasurableSpace Ω} {ℱ : MeasureTheory.Filtration ℕ m0}
    {a b : ℝ} {f : ℕ → Ω → ℝ} {N : ℕ}
    (hf : MeasureTheory.Adapted ℱ f) :
    (∀ n, StronglyMeasurable[ℱ n] (upcrossingStrat a b f N n)) ∧
    (∀ n, Measurable[ℱ (n+1)] (upcrossingStrat a b f N n)) := by
  sorry