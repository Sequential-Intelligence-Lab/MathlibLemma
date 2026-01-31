import Mathlib

open scoped BigOperators
open MeasureTheory

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

/-- 14. Lᵖ maximal inequality from Doob for `p > 1` (statement only). -/
theorem maximal_ineq_Lp_norm
    {Ω : Type*} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    [IsFiniteMeasure μ]
    (𝒢 : Filtration ℕ m0)
    (f : ℕ → Ω → ℝ)
    (hsub : MeasureTheory.Submartingale f 𝒢 μ)
    (hnonneg : ∀ n, 0 ≤ f n)
    (p : ℝ) (hp : 1 < p) (n : ℕ) :
    ∫ ω, ((Finset.range (n + 1)).sup'
      (by
        -- `Finset.range (n+1)` is nonempty because it contains `n`
        simpa [Nat.succ_eq_add_one] using
          (Finset.nonempty_range_succ (n := n)))
      (fun k => f k ω)) ^ p ∂μ
      ≤ ((p / (p - 1)) ^ p) * ∫ ω, (f n ω) ^ p ∂μ := by
  sorry