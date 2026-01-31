import Mathlib

open MeasureTheory

variable {α β γ δ G H : Type*}
variable {mα : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {mδ : MeasurableSpace δ}
variable {μ μ₁ μ₂ ν : MeasureTheory.Measure α} {νβ : MeasureTheory.Measure β}
variable {f g h : α → α} {T S : Set α}
variable {φ : α → β} {ψ : β → α}
variable {fβ : β → β} {fγ : γ → γ}
variable {eα : α ≃ᵐ α} {eβ : β ≃ᵐ β}

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- If two ergodic maps commute and preserve the same finite measure, then every measurable set that
is invariant under one is either null or conull under the other. -/
lemma Ergodic.measure_invariant_set_for_commuting_maps
    {f g : α → α} {μ : MeasureTheory.Measure α} [IsFiniteMeasure μ]
    (hf : Ergodic f μ) (hg : Ergodic g μ)
    (hcomm : f ∘ g = g ∘ f)
    {s : Set α} (hs : MeasurableSet s)
    (h_inv_f : f ⁻¹' s = s) :
    μ (g ⁻¹' s) = 0 ∨ μ (g ⁻¹' s) = μ univ :=
by
  sorry