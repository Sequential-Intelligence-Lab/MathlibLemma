import Mathlib

open MeasureTheory

lemma condExp_of_measurableSet_eq_indicator {α}
    {m : MeasurableSpace α} {μ : Measure α}
    (s : Set α) (hs : MeasurableSet[m] s) :
    μ[s.indicator (fun _ : α ↦ (1 : ℝ))|m] =
      s.indicator (fun _ : α ↦ (1 : ℝ)) := by
  sorry