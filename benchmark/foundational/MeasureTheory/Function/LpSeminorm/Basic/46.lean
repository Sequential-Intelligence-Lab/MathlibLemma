import Mathlib

open scoped ENNReal
open MeasureTheory

lemma eLpNorm_ae_eq_of_le
    {α : Type*} {E : Type*}
    [MeasurableSpace α] [TopologicalSpace E] [ContinuousENorm E]
    {μ : Measure α} {p : ℝ≥0∞} {f g : α → E}
    (hfg : ∀ᵐ x ∂μ, ‖f x‖ₑ ≤ ‖g x‖ₑ)
    (hgf : ∀ᵐ x ∂μ, ‖g x‖ₑ ≤ ‖f x‖ₑ) :
    eLpNorm f p μ = eLpNorm g p μ := by
  sorry