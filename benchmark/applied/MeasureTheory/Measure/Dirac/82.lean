import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_comp_prod_snd_fst
    [MeasurableSingletonClass α] [MeasurableSingletonClass β]
    (a : α) (b : β) :
    (Measure.dirac (a, b)).map (fun p : α × β => p.2) = Measure.dirac b := by
  sorry
