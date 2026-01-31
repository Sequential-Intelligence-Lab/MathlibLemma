import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_smul_injective (a : α) :
    Function.Injective fun c : ℝ≥0∞ => c • Measure.dirac a := by
  intro c₁ c₂ h
  -- Evaluate both sides of the measure equality on the singleton {a}
  have h' := congrArg (fun μ : Measure α => μ {a}) h
  -- Use the formula for scalar multiplication of a measure and for `dirac`
  have ha : a ∈ ({a} : Set α) := by simp
  simp [Measure.smul_apply, Measure.dirac_apply, ha] at h'
  -- Now `h'` is `c₁ = c₂`
  exact h'