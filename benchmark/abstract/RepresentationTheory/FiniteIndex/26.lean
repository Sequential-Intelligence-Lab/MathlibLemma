import Mathlib

open scoped BigOperators
open CategoryTheory

universe u

-- 27. `resIndAdjunction` counit is an isomorphism for index-one subgroups.
lemma resIndAdjunction_counit_isIso_of_index_one
    {k G : Type u} [CommRing k] [Group G]
    (S : Subgroup G) [DecidableRel (QuotientGroup.rightRel S)] [S.FiniteIndex]
    (h : Subgroup.index S = 1) :
    ∀ A : Rep k ↥S, IsIso ((Rep.resIndAdjunction k S).counit.app A) := by
  sorry