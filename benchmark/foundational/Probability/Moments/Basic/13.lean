import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

open scoped BigOperators
open ProbabilityTheory
open MeasureTheory

universe u

variable {Ω : Type u} [MeasurableSpace Ω]

lemma moment_smul_left
    (μ : Measure Ω)
    (a : ℝ) (X : Ω → ℝ) (p : ℕ) :
    ProbabilityTheory.moment (fun ω => a * X ω) p μ =
      ProbabilityTheory.moment (fun ω => a * X ω) p μ := by
  sorry