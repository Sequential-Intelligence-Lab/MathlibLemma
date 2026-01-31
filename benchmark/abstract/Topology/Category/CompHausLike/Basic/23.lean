import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.compHausLikeToTop_obj_isT2
    (P : TopCat.{u} → Prop) (X : CompHausLike P) :
    T2Space ((CompHausLike.compHausLikeToTop P).obj X) := by
  sorry

/-! ### Epi / mono / isIso characterizations -/
