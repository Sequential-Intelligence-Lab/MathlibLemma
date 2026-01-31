import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory
open scoped BigOperators

-- 22. Conditional expectation of stopped martingale at bounded stopping equals initial
namespace Martingale

variable {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}

/-- Conditional expectation of a stopped martingale at a bounded stopping time
    with respect to the σ-algebra at time 0 equals the conditional expectation
    of the initial value. -/
theorem condexp_stopped_eq_initial
    [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ} (hf : Martingale f 𝒢 μ)
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    {N : ℕ} (hbdd : ∀ ω, τ ω ≤ (N : ℕ∞)) :
    μ[stoppedValue f τ | 𝒢 0] =ᵐ[μ] μ[f 0 | 𝒢 0] := by
  sorry

end Martingale