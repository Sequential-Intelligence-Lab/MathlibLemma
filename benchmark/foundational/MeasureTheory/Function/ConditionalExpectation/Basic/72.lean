import Mathlib

open MeasureTheory

variable {α : Type*}

lemma condExp_of_measurableSet_eq_prob
    {m m₀ : MeasurableSpace α} (μ : Measure α)
    [IsProbabilityMeasure μ]
    (s : Set α) (hs : MeasurableSet[m] s) :
    μ[(s.indicator fun _ : α => (1 : ℝ)) | ⊥] =
      fun _ : α => μ.real s := by
  sorry