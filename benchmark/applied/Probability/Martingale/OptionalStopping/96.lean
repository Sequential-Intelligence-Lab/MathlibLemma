import Mathlib

/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open scoped BigOperators
open MeasureTheory

namespace MeasureTheory

-- 99. Expected supremum of stopped martingale bounded by expected supremum at deterministic time
theorem Martingale.expected_sup_stopped_le_sup_det
    {Ω : Type*} [m0 : MeasurableSpace Ω] [MeasureSpace Ω]
    (μ : Measure Ω) [IsFiniteMeasure μ]
    {𝒢 : Filtration ℕ m0} {f : ℕ → Ω → ℝ}
    (hM : Martingale f 𝒢 μ)
    (hnonneg : ∀ n ω, 0 ≤ f n ω)
    {τ : Ω → ℕ∞} (hτ : IsStoppingTime 𝒢 τ)
    {N : ℕ} (hbdd : ∀ ω, τ ω ≤ (N : ℕ∞)) :
    (∫ ω,
        (Finset.range (N + 1)).sup'
          (Finset.nonempty_range_add_one (n := N))
          (fun k => stoppedValue f τ ω)) ≤
    (∫ ω,
        (Finset.range (N + 1)).sup'
          (Finset.nonempty_range_add_one (n := N))
          (fun k => f k ω)) := by
  sorry

end MeasureTheory