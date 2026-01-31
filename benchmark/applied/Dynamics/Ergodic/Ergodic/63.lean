import Mathlib

open MeasureTheory

variable {α β γ δ G H : Type*}
variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
variable [MeasurableSpace δ]
variable {μ μ₁ μ₂ ν : Measure α} {νβ : Measure β}
variable {f g h : α → α} {T S : Set α}
variable {φ : α → β} {ψ : β → α}
variable {fβ : β → β} {fγ : γ → γ}
variable {eα : α ≃ᵐ α} {eβ : β ≃ᵐ β}

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

open scoped BigOperators

namespace MeasureTheory

/-- Quasi-ergodicity is preserved under taking iterates of a measurable map. -/
lemma QuasiErgodic.iterate
    {f : α → α} {μ : Measure α} (hf : QuasiErgodic f μ) (n : ℕ) :
    QuasiErgodic (f^[n.succ]) μ :=
by
  sorry

end MeasureTheory