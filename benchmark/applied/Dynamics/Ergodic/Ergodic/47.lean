import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

variable {α : Type*} [MeasurableSpace α]

/-- For an ergodic transformation on a probability space, any invariant
random variable with values in a finite type is almost surely constant. -/
lemma Ergodic.ae_const_of_invariant_fintype
    {f : α → α} {μ : Measure α} [IsProbabilityMeasure μ]
    (hf : Ergodic f μ)
    {β : Type*} [MeasurableSpace β] [Fintype β] [MeasurableSingletonClass β]
    {g : α → β} (hg : Measurable g)
    (h_invar : g ∘ f = g) :
    ∃ c : β, g =ᵐ[μ] fun _ => c :=
by
  sorry