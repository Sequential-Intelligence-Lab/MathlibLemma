import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_bind_indicator
    {a : α} {ν : α → Measure β} {s : Set α}
    (hs : MeasurableSet s) [DecidablePred (· ∈ s)] :
    (Measure.dirac a).bind (fun x => if x ∈ s then ν x else 0)
      = if a ∈ s then ν a else 0 := by
  sorry