import Mathlib

/-
The lemmas below are intentionally left with `by sorry`.
They are meant as potential additions to mathlib and are not proved here.
-/
-- 98. Right regular representation via ofMulAction with right action
def Representation.rightRegular
    (k G : Type*) [CommSemiring k] [Group G] :
    Representation k G (G →₀ k) := by
  sorry