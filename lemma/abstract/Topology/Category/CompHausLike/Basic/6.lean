import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.t2Space_iff {P : TopCat.{u} → Prop} (X : CompHausLike P) :
    T2Space X ↔ True := by
  constructor
  · intro _; exact True.intro
  · intro _; infer_instance