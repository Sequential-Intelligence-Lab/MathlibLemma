import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Martingale.sub_martingale {Ω ι} [Preorder ι]
    {m0 : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
    {ℱ : MeasureTheory.Filtration ι m0} {f g : ι → Ω → ℝ}
    (hf : MeasureTheory.Martingale f ℱ μ)
    (hg : MeasureTheory.Martingale g ℱ μ) :
    MeasureTheory.Martingale (fun i ω => f i ω - g i ω) ℱ μ := by
  -- We need to show that the difference f - g satisfies the martingale conditions.
  refine' MeasureTheory.Martingale.sub hf hg
  -- This is a direct application of the `sub` lemma for martingales, which states that the difference of two martingales is also a martingale.
  <;> simp_all [MeasureTheory.Martingale]
  -- Simplify the expressions and verify the conditions using the `simp_all` tactic.
  <;> aesop