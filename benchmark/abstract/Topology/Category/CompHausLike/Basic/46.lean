import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type u

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/

-- We assume `CompHausLike` exists in the imported environment and has a
-- field `.toTop : TopCat`. We do not prove anything, just state a lemma
-- that typechecks and ends with `sorry`.
lemma CompHausLike.fst_continuous
    {P : TopCat.{u} → Prop}
    (X Y : CompHausLike P)
    (hP : P (X.toTop ⨯ Y.toTop)) :
    Continuous (CategoryTheory.Limits.prod.fst :
      (X.toTop ⨯ Y.toTop) ⟶ X.toTop) := by
  sorry