import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.compHausLikeToTop_obj_isCompact
    (P : TopCat.{u} → Prop) (X : CompHausLike P) :
    CompactSpace ((CompHausLike.compHausLikeToTop P).obj X) := by
  -- just a registration lemma
  sorry
