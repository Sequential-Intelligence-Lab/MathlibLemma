import Mathlib


/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 43. Kernel of leftRegular norm is G-invariant submodule
lemma Representation.leftRegular_ker_norm_invariant
    {k G : Type*} [CommSemiring k] [Group G] [Fintype G] :
    ∀ g : G,
      LinearMap.ker (Representation.leftRegular k G).norm ≤
        (LinearMap.ker (Representation.leftRegular k G).norm).comap
          (Representation.leftRegular k G g) := by
  sorry
