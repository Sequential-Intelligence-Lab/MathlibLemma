import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

variable {α β γ δ G H : Type*}
variable {mα : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {mδ : MeasurableSpace δ} {μ μ₁ μ₂ ν : Measure α} {νβ : Measure β}
variable {f g h : α → α} {T S : Set α}
variable {φ : α → β} {ψ : β → α}
variable {fβ : β → β} {fγ : γ → γ}
variable {eα : α ≃ᵐ α} {eβ : β ≃ᵐ β}

/-- If a quasi-ergodic map admits a finite invariant measure equivalent to `μ`,
then it is ergodic with respect to that measure.

Here `μ ≪ ν` and `ν ≪ μ` are bundled as a `Measure.SMul`-style equivalence
in mathlib using `Measure.Infinite.comp`-like structures; in the current
version we model this as a measure equivalence `μ ≪≫ ν` of type
`Measure α ≃ Measure α`. This is a placeholder for the appropriate
notion of equivalence of measures (e.g. mutual absolute continuity).

This lemma is left as `sorry` on purpose; only the statement needs to compile.
-/
lemma QuasiErgodic.ergodic_of_invariant_equivalent_measure
    {α : Type*} [MeasurableSpace α]
    (f : α → α) (μ ν : Measure α) [IsFiniteMeasure ν]
    (hq : QuasiErgodic f μ)
    (h_equiv : μ ≪ ν ∧ ν ≪ μ)
    (h_pres : MeasurePreserving f ν ν) :
    Ergodic f ν :=
by
  sorry