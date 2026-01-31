import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.toCompHausLike_obj_coe
    {P P' : TopCat.{u} → Prop}
    (h : ∀ X : CompHausLike P, P X.toTop → P' X.toTop)
    (X : CompHausLike P) :
    ((CompHausLike.toCompHausLike h).obj X).toTop = X.toTop := by
  sorry