import Mathlib

open MeasureTheory

lemma condExp_indicator_const_eq_smul_prob {α}
    {m : MeasurableSpace α} {μ : Measure α} [IsProbabilityMeasure μ]
    (s : Set α) (c : ℝ) :
    (s.indicator fun _ : α => c) = fun _ : α => (μ s).toReal • c := by
  sorry