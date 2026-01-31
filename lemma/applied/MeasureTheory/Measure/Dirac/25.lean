import Mathlib

variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/

/-- If `t ⊆ s` and `dirac a` gives measure `0` to `s`, then it also gives measure `0` to `t`.
This is just an instance of the general `measure_mono_null` lemma. -/
lemma Measure.dirac_null_mono {a : α} {s t : Set α}
    (hs : MeasurableSet s) (ht : MeasurableSet t) (hst : t ⊆ s) :
    (Measure.dirac a) s = 0 → (Measure.dirac a) t = 0 := by
  intro h
  -- `measure_mono_null` works for any measure, so we can apply it directly to `Measure.dirac a`
  exact measure_mono_null hst h