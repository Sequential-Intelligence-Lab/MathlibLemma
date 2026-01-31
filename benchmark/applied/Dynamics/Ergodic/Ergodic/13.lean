import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.

  The following lemma is intentionally left without proof (`sorry`).
-/

/-- If `f` is ergodic with respect to a probability measure and
`g` is a measurable function invariant under `f`, then `g` is almost everywhere constant.

This is a speculative lemma; it is stated without proof.
-/
lemma ergodic_ae_const_of_invariant
    {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
    {f : α → α} {μ : Measure α} [IsProbabilityMeasure μ]
    (hf : Ergodic f μ) {g : α → β} [MeasurableSingletonClass β]
    (hg : Measurable g)
    (h_invar : g ∘ f = g) :
    ∃ c : β, g =ᵐ[μ] fun _ => c :=
by
  sorry