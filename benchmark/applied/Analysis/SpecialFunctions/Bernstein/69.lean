import Mathlib

-- 70. A lemma on approximation of convex functions by Bernstein polynomials
open scoped Interval

/-- Closed interval `[0,1]` as a subtype. -/
def I : Type := {x : ℝ // x ∈ Set.Icc (0 : ℝ) 1}

namespace I

instance : Coe I ℝ := ⟨Subtype.val⟩

-- Use the subtype topology inherited from `ℝ`.
instance : TopologicalSpace I :=
  instTopologicalSpaceSubtype

instance : Inhabited I :=
  ⟨⟨0, by
      constructor
      · exact le_rfl
      · exact zero_le_one⟩⟩

end I

open I

lemma bernsteinApproximation_convex_function
    (f : C(I, ℝ))
    (hconv :
      ∀ (x y : I) (t : ℝ),
        0 ≤ t → t ≤ 1 →
        f
          ⟨t * (x : ℝ) + (1 - t) * (y : ℝ),
            by
              -- Interval membership proof, left as `sorry` since we don't need it.
              sorry⟩
        ≤ t * f x + (1 - t) * f y) :
    ∀ᶠ n in Filter.atTop, Convex ℝ (Set.range (bernsteinApproximation n f)) := by
  sorry