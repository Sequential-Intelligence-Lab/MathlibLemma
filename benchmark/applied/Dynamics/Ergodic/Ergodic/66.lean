import Mathlib

open MeasureTheory

/-!
  Additional speculative lemmas about `PreErgodic`, `Ergodic`, `QuasiErgodic`
  and their interaction with other measure-theoretic structures.
-/

/-- If `f` is ergodic for `μ` and `μ` is finite, then any measurable function with bounded
Birkhoff sums must have zero integral.

This statement is intentionally left with `sorry` and is only meant to compile.
-/
lemma Ergodic.integral_zero_of_bounded_birkhoff_sums
    {α : Type*} [MeasurableSpace α] {f : α → α} {μ : Measure α} [IsFiniteMeasure μ]
    (hf : MeasurePreserving f μ μ) (h_erg : Ergodic f μ)
    {g : α → ℝ} (hg_meas : Measurable g)
    (hbounded :
      ∃ C : ℝ, ∀ n : ℕ,
        (∀ᵐ x ∂μ,
          |(Finset.range (n + 1)).sum (fun k => g (f^[k] x))| ≤ C)) :
    ∫ x, g x ∂μ = 0 :=
by
  sorry