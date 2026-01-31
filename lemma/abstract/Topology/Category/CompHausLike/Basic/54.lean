import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.forget_faithful
    (P : TopCat.{u} → Prop) :
    (CategoryTheory.forget (CompHausLike P)).Faithful := by
  infer_instance