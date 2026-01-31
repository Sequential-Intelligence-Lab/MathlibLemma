import Mathlib

open MeasureTheory

-- 25. Stopped value independent of choice of `untopA` on {τ = ⊤}.
lemma stoppedValue_ae_eq_on_ne_top
  {Ω ι β : Type*} {m : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
  [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (h : ∀ᵐ ω ∂μ, τ ω ≠ ⊤) :
  (fun ω => u ((τ ω).untop (by
      -- dummy proof, replaced by `sorry` below
      sorry)) ω)
    =ᵐ[μ]
  (fun ω => u ((τ ω).untopD (Classical.arbitrary ι)) ω) := by
  sorry