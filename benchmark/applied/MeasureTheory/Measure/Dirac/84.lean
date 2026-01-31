import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_bind_dirac {a : α} (f : α → β) :
    (Measure.dirac a).bind (fun x => Measure.dirac (f x))
      = Measure.dirac (f a) := by
  sorry
