import Mathlib

open MeasureTheory

lemma eLpNormEssSup_ae_eq_of_le
    {α E} [MeasurableSpace α] [NormedAddCommGroup E]
    (μ : Measure α) {f g : α → E}
    (hfg : ∀ᵐ x ∂μ, ‖f x‖ ≤ ‖g x‖)
    (hgf : ∀ᵐ x ∂μ, ‖g x‖ ≤ ‖f x‖) :
    eLpNormEssSup f μ = eLpNormEssSup g μ := by
  sorry