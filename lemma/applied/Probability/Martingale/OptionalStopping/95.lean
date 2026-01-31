import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-
The following are brainstormed lemma statements that might be useful in Mathlib,
inspired by the optional stopping theorem file and its interactions with other areas.
They are intentionally left with `sorry` proofs.
-/

open scoped BigOperators
open MeasureTheory

-- 98. Markov inequality applied to maximal function of submartingale
theorem markov_ineq_maximal_submartingale
    {Ω : Type*} {m0 : MeasurableSpace Ω} (μ : Measure Ω)
    {𝒢 : Filtration ℕ m0} [IsFiniteMeasure μ]
    {f : ℕ → Ω → ℝ}
    (hsub : Submartingale f 𝒢 μ) (hnonneg : ∀ n ω, 0 ≤ f n ω)
    (ε : ℝ) (hε : 0 < ε) (n : ℕ) :
    (μ {ω | (Finset.range (n+1)).sup'
      (Finset.nonempty_range_succ (n := n)) (fun k => f k ω) ≥ ε}).toReal ≤
      (1 / ε) * ∫ ω, f n ω ∂μ := by
  sorry