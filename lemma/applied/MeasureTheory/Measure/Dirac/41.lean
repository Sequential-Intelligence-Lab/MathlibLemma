import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_marginal_snd {a : α} {b : β}
    [MeasurableSingletonClass α] [MeasurableSingletonClass β] :
    (Measure.dirac (a, b)).map Prod.snd = Measure.dirac b := by
  -- Rewrite `.map` notation to `Measure.map`
  change Measure.map Prod.snd (Measure.dirac (a, b)) = Measure.dirac b
  -- Apply the general lemma about mapping a dirac measure
  simpa using
    (Measure.map_dirac (hf := measurable_snd) (a := (a, b)))