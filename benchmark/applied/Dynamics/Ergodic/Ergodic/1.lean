import Mathlib

open MeasureTheory

variable {α β γ δ G H : Type*}
variable {mα : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {mδ : MeasurableSpace δ}
variable {μ μ₁ μ₂ ν : Measure α} {νβ : Measure β}
variable {f g h : α → α} {T S : Set α}
variable {φ : α → β} {ψ : β → α}
variable {fβ : β → β} {fγ : γ → γ}
variable {eα : α ≃ᵐ α} {eβ : β ≃ᵐ β}

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- If `f` is pre-ergodic and `s` is an invariant set of full measure, then
`PreErgodic` holds with respect to the restricted measure to `s`. -/
lemma PreErgodic.restrict_of_invariant_ae
    {f : α → α} {μ : Measure α} (hf : PreErgodic f μ)
    {s : Set α} (hs : MeasurableSet s)
    (h_inv : f ⁻¹' s = s) (hfull : μ sᶜ = 0) :
    PreErgodic f (μ.restrict s) :=
by
  sorry