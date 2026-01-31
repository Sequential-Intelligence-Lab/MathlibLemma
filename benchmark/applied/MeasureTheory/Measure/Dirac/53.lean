import Mathlib

universe u

variable {α : Type u}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_mutuallySingular_iff' (a : α) (μ : Measure α) :
    Measure.MutuallySingular μ (Measure.dirac a) ↔ μ {a} = 0 := by
  sorry