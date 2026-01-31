import Mathlib

open MeasureTheory

variable {α β γ δ G H : Type*}

variable {mα : MeasurableSpace α}
variable {mβ : MeasurableSpace β}
variable {mγ : MeasurableSpace γ}
variable {mδ : MeasurableSpace δ}

variable {μ μ₁ μ₂ ν : Measure α}
variable {νβ : Measure β}

variable {f g h : α → α}
variable {T S : Set α}
variable {φ : α → β} {ψ : β → α}
variable {fβ : β → β} {fγ : γ → γ}
variable {eα : α ≃ᵐ α} {eβ : β ≃ᵐ β}

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- Ergodicity is preserved under taking iterates of a measure-preserving map
on a probability space.

This version uses the `MeasurePreserving` structure explicitly.
We package together the measure-preserving property and ergodicity
in a single structure for the purpose of this lemma.
-/
structure MeasurePreservingErgodic
    {α : Type*} [MeasurableSpace α] (f : α → α) (μ : Measure α) : Prop :=
(measurePreserving : MeasurePreserving f μ μ)
(ergodic : Ergodic f μ)

lemma MeasurePreservingErgodic.iterate
    {α : Type*} [MeasurableSpace α]
    {f : α → α} {μ : Measure α} [IsProbabilityMeasure μ]
    (hf : MeasurePreservingErgodic f μ) (n : ℕ) :
    MeasurePreservingErgodic (f^[n.succ]) μ :=
by
  -- proof intentionally omitted
  sorry