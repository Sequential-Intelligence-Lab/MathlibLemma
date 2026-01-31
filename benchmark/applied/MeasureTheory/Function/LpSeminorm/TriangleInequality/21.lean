import Mathlib

open scoped BigOperators ENNReal
open MeasureTheory

variable {α β γ δ E F G ι ι' : Type*}
variable {m : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {μ ν : Measure α} {ρ : Measure β}
variable [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup G]
variable [NormedSpace ℝ E] [NormedSpace ℝ F]
variable [TopologicalSpace E] [TopologicalSpace F]
variable [SigmaFinite μ] [SigmaFinite ν]
variable {p q r : ℝ≥0∞} {qR : ℝ}
variable {f g h : α → E} {k : α → F}

/-! ### Scaling and linear maps with eLpNorm -/

lemma MemLp.aestronglyMeasurable_of_eLpNorm_ne_top
    {α E} {m : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [TopologicalSpace E]
    [SigmaFinite μ]
    {p : ℝ≥0∞} {f : α → E}
    (hf : MemLp f p μ)
    (hfin : eLpNorm f p μ ≠ ∞) :
    AEStronglyMeasurable f μ := by
  sorry