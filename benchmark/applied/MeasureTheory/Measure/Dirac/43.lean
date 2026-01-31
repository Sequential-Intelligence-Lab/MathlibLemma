import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_tendsto_in_weakTopology
    [TopologicalSpace α] [TopologicalSpace (Measure α)] [MeasurableSingletonClass α]
    {x_n : ℕ → α} {x : α}
    (h : Tendsto x_n Filter.atTop (nhds x)) :
    Tendsto (fun n => (Measure.dirac (x_n n) : Measure α))
      Filter.atTop (nhds (Measure.dirac x)) := by
  sorry