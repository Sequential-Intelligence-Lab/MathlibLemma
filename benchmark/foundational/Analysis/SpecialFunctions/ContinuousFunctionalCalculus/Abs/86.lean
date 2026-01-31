import Mathlib

lemma CFC.abs_mul_star_self_nonneg
    {A} [NonUnitalRing A] [StarRing A] [TopologicalSpace A]
    [PartialOrder A] [StarOrderedRing A]
    (a : A) :
    0 ≤ star a * a := by
  sorry
