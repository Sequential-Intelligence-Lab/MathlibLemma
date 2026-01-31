import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_smul (a : α) (c : ℝ≥0∞) :
    c • Measure.dirac a = Measure.dirac a ↔ c = 1 := by
  constructor
  · intro h
    -- Evaluate both sides on the singleton {a}
    have hval := congrArg (fun μ => μ {a}) h
    -- Use the formula for scalar multiplication of measures
    have hval' : c * Measure.dirac a {a} = Measure.dirac a {a} := by
      simpa [Measure.smul_apply] using hval
    -- Dirac at its own point gives mass 1
    have hdirac : Measure.dirac a {a} = 1 := by simp
    -- Substitute and simplify in ℝ≥0∞
    have : c * 1 = 1 := by simpa [hdirac] using hval'
    -- Conclude c = 1
    simpa using this
  · intro hc
    -- If c = 1, then 1 • μ = μ
    simpa [hc]