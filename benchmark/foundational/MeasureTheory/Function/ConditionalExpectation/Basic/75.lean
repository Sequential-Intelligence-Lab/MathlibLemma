import Mathlib

open MeasureTheory

lemma condExp_indicator_const_eq_mul_prob {α}
    {m m₀ : MeasurableSpace α} {μ : Measure α} [IsProbabilityMeasure μ]
    (s : Set α) (c : ℝ) :
    μ[s.indicator (fun _ => c) | ⊥] =
      fun _ => c * μ.real s := by
  sorry