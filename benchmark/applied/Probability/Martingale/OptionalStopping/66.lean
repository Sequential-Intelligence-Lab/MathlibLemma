import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open MeasureTheory

-- 69. Maximal inequality in probability (Kolmogorov inequality style)
theorem maximal_ineq_probability_version
    {Ω : Type*}
    {m0 : MeasurableSpace Ω}
    {μ : Measure Ω}
    [IsProbabilityMeasure μ]
    {𝒢 : Filtration ℕ m0}
    {f : ℕ → Ω → ℝ}
    (hM : Martingale f 𝒢 μ)
    (hL2 : ∀ n, Integrable (fun ω => (f n ω)^2) μ)
    (ε : ℝ) (hε : 0 < ε) (n : ℕ) :
    μ {ω |
        (Finset.range (n + 1)).sup'
          (by
            classical
            simpa [Nat.succ_eq_add_one] using
              (Finset.nonempty_range_succ n))
          (fun k => |f k ω|) ≥ ε} ≤
      ENNReal.ofReal (((1 : ℝ) / ε^2) * ∫ ω, (f n ω)^2 ∂μ) := by
  sorry