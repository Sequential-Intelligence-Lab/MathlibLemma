import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma CFC.abs_mul_star_self_nonneg
    {A} [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [PartialOrder A] [StarOrderedRing A]
    (a : A) :
    0 ≤ star a * a := by
  -- Use the property of the star ring to show that the product of an element and its adjoint is non-negative.
  simpa using mul_nonneg (star_nonneg a) (star_nonneg a)