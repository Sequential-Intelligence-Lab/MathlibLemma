import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.abs_posPart {A} [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [PartialOrder A] [StarOrderedRing A] [NonnegSpectrumClass ℝ A]
    (a : A) :
    CFC.abs a = a⁺ + a⁻ := by
  have h₁ : (CFC.abs a) * (CFC.abs a) = a * a := by
    sorry
  
  have h₂ : (a⁺ + a⁻) * (a⁺ + a⁻) = a * a := by
    sorry
  
  have h₃ : 0 ≤ CFC.abs a := by
    sorry
  
  have h₄ : 0 ≤ a⁺ + a⁻ := by
    sorry
  
  have h₅ : CFC.abs a = a⁺ + a⁻ := by
    sorry
  
  exact h₅