import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- If `f` is ergodic on a probability space, then the σ-algebra of
`f`-invariant sets is trivial. -/
lemma Ergodic.invariant_sigmaAlgebra_prob_trivial
    {α : Type*} [MeasurableSpace α]
    {f : α → α} {μ : Measure α} [IsProbabilityMeasure μ]
    (hf : Ergodic f μ) :
    ∀ s, MeasurableSet s → (f ⁻¹' s = s) → μ s = 0 ∨ μ sᶜ = 0 :=
by
  sorry