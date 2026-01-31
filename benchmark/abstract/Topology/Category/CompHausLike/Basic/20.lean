import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

open CategoryTheory

/-- Basic coercion / equality lemmas for `CompHausLike`. -/
lemma CompHausLike.compHausLikeToTop_forget
    (P : TopCat.{u} → Prop) :
    CompHausLike.compHausLikeToTop P =
      CategoryTheory.forget₂ (CompHausLike P) TopCat := by
  sorry