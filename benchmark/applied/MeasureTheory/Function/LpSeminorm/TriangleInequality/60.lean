import Mathlib

open MeasureTheory

variable {α E : Type*}
variable {m : MeasurableSpace α}
variable {μ : Measure α}
variable [NormedAddCommGroup E]
variable [NormedSpace ℝ E]

/-! ### Scaling and linear maps with eLpNorm -/

lemma eLpNormEssSup_eq_eLpNormEssSup_of_ae_eq
    {f g : α → E}
    (hfg : f =ᵐ[μ] g) :
    MeasureTheory.eLpNormEssSup f μ = MeasureTheory.eLpNormEssSup g μ := by
  sorry