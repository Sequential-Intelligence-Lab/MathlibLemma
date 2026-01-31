import Mathlib

open scoped MeasureTheory

namespace MeasureTheory

variable {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

/-- A version of a standard submartingale lemma: the conditional expectation of the increment
is almost surely nonnegative. Proof omitted. -/
theorem Submartingale.condExp_sub_nonneg_nat'
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ}
    (hf : Submartingale f 𝒢 μ) (n : ℕ) :
    0 ≤ᵐ[μ] μ[(f (n + 1) - f n) | 𝒢 n] := by
  sorry

end MeasureTheory