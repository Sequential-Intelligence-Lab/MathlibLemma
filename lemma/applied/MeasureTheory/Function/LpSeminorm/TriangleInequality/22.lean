import Mathlib

open scoped ENNReal
open MeasureTheory

variable {α β γ δ E F G ι ι' : Type*}
variable {m : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {μ ν : Measure α} {ρ : Measure β}
variable [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup G]
variable [NormedSpace ℝ E] [NormedSpace ℝ F]
variable [SigmaFinite μ] [SigmaFinite ν]
variable {p q r : ℝ≥0∞} {qR : ℝ}
variable {f g h : α → E} {k : α → F}

/-! ### Scaling and linear maps with eLpNorm -/

lemma MemLp_of_eLpNorm_lt_top
    (hf : AEStronglyMeasurable f μ)
    (hfin : MeasureTheory.eLpNorm f p μ < ∞) :
    MemLp f p μ := by
  -- This is exactly the definition of `MemLp`.
  exact ⟨hf, hfin⟩