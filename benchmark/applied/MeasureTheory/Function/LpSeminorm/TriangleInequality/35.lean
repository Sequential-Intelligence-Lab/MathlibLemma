import Mathlib

open MeasureTheory
open scoped ENNReal

variable {α β γ δ E F G ι ι' : Type*}
variable {m : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {μ ν : MeasureTheory.Measure α} {ρ : MeasureTheory.Measure β}
variable [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup G]
variable [NormedSpace ℝ E] [NormedSpace ℝ F]
variable [TopologicalSpace E] [TopologicalSpace F]
variable [MeasureTheory.SigmaFinite μ] [MeasureTheory.SigmaFinite ν]
variable {p q r : ℝ≥0∞} {qR : ℝ}
variable {f g h : α → E} {k : α → F}

/-! ### Scaling and linear maps with eLpNorm -/

lemma eLpNormEssSup_le_of_forall_le
    (C : ℝ≥0∞) (hC : ∀ᵐ x ∂μ, (‖f x‖ₑ : ℝ≥0∞) ≤ C) :
    MeasureTheory.eLpNormEssSup f μ ≤ C := by
  sorry