import Mathlib

-- We add local notation/typeclass assumptions so that `upcrossingStrat` is fully applied
-- and the lemma statement typechecks. The proof is left as `sorry`.

open MeasureTheory

variable {Ω : Type _} [MeasurableSpace Ω]

lemma upcrossingStrat_support_subset
    {a b : ℝ} {f : ℕ → Ω → ℝ} {N : ℕ} (ω : Ω) :
    {n | upcrossingStrat (a := a) (b := b) (f := fun n => f n) (N := N) n ω ≠ 0}
      ⊆ Set.Icc (0 : ℕ) N := by
  sorry