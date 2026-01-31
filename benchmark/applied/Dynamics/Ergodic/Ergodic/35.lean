import Mathlib

open MeasureTheory

variable {α β γ δ G H : Type*}
variable {mα : MeasurableSpace α} {mβ : MeasurableSpace β} {mγ : MeasurableSpace γ}
variable {mδ : MeasurableSpace δ} {μ μ₁ μ₂ ν : Measure α} {νβ : Measure β}
variable {f g h : α → α} {T S : Set α}
variable {φ : α → β} {ψ : β → α}
variable {fβ : β → β} {fγ : γ → γ}
variable {eα : α ≃ᵐ α} {eβ : β ≃ᵐ β}

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- A placeholder definition for the normalization of a measure. -/
noncomputable
def normalizedMeasure (μ : Measure α) : Measure α :=
  μ  -- replace by an actual normalization if desired

/-- Ergodicity is preserved when normalizing a finite measure. -/
lemma Ergodic.normalized
    {f : α → α} {μ : Measure α} [IsFiniteMeasure μ]
    (hf : Ergodic f μ) :
    Ergodic f (normalizedMeasure μ) :=
by
  sorry