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

/-- Quasi-ergodicity is preserved under taking iterates of a measurable map.

  NOTE: This proof is a template and *must* be adapted to your actual
  definition and API for `QuasiErgodic`. As written, it will not compile
  unless your `QuasiErgodic` structure and supporting lemmas match the
  assumed names and fields.
-/
lemma QuasiErgodic.iterate
    {f : α → α} {μ : Measure α} (hf : QuasiErgodic f μ) (n : ℕ) :
    QuasiErgodic (f^[n.succ]) μ :=
by
  classical

  /-
  The following block is schematic. In a typical situation where
  `QuasiErgodic` is a structure like

      structure QuasiErgodic (f : α → α) (μ : Measure α) : Prop :=
      (preergodic : PreErgodic f μ)
      (nonsingular : Nonsingular f μ)

  and you already have lemmas

      PreErgodic.iterate (hf : PreErgodic f μ) (n : ℕ) :
        PreErgodic (f^[n]) μ

      Nonsingular.iterate (hf : Nonsingular f μ) (n : ℕ) :
        Nonsingular (f^[n]) μ,

  you would write:

      refine
      { preergodic := ?_,
        nonsingular := ?_, }

      · simpa using hf.preergodic.iterate (n := n.succ)
      · simpa using hf.nonsingular.iterate (n := n.succ)

  Replace `preergodic`, `nonsingular`, and the lemma names with the actual
  ones from your development.
  -/

  -- TODO: replace the following `admit` with the actual construction
  -- of the fields of `QuasiErgodic (f^[n.succ]) μ` using `hf`
  admit

end MeasureTheory