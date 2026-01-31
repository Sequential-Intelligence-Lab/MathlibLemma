import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open MeasureTheory

variable {α β E 𝕜 : Type*}

lemma condExp_comp_ae_eq
    [RCLike 𝕜]
    {mα m₀α : MeasurableSpace α} {mβ : MeasurableSpace β}
    (μ : Measure α)
    [NormedAddCommGroup E] [NormedSpace ℝ E] [NormedSpace 𝕜 E] [CompleteSpace E]
    (T₁ T₂ : α → β) (hT : T₁ =ᵐ[μ] T₂) (f : β → E) :
    μ[fun x => f (T₁ x) | m₀α] =ᵐ[μ] μ[fun x => f (T₂ x) | m₀α] :=
by
  exact condExp_congr_ae (hT.fun_comp f)