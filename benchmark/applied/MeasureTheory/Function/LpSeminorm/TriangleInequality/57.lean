import Mathlib

open scoped ENNReal

open MeasureTheory

variable {α β γ δ E F G ι ι' : Type*}
variable {m : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {μ ν : Measure α} {ρ : Measure β}
variable [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup G]
variable [NormedSpace ℝ E] [NormedSpace ℝ F]
variable {p q r : ℝ≥0∞} {qR : ℝ}
variable {f g h : α → E} {k : α → F}

/-! ### Scaling and linear maps with eLpNorm -/

lemma eLpNorm_pos_iff
    (hf : AEStronglyMeasurable f μ)
    (hp0 : 0 < p.toReal) :
    0 < eLpNorm f p μ ↔ ¬ f =ᵐ[μ] 0 := by
  sorry