import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.abs_eq_sqrt_star_mul_self
    {A} [NonUnitalNormedRing A] [StarRing A] [CStarRing A]
    [PartialOrder A] [StarOrderedRing A]
    [Module ℝ A] [SMulCommClass ℝ A A] [IsScalarTower ℝ A A]
    [NonUnitalContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
    [NonnegSpectrumClass ℝ A]
    (a : A) :
    CFC.abs a = CFC.sqrt (star a * a) := by
  -- Use the property that the absolute value is the square root of the star product of an element with itself.
  rw [CFC.abs]
  -- Simplify the expression using the properties of the star operation and the square root function.
  <;> simp [CFC.sqrt]
  -- Normalize the expression to ensure it matches the expected form.
  <;> ring_nf
  -- Simplify all expressions to confirm the equality.
  <;> simp_all