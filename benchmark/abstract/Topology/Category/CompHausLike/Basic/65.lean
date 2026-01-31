import Mathlib

universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
open CategoryTheory

lemma CompHausLike.epi_iff_isIso_of_mono
    {P : TopCat.{u} → Prop} {X Y : CompHausLike P}
    (f : X ⟶ Y) (hf_mono : CategoryTheory.Mono f) :
    CategoryTheory.Epi f ↔ CategoryTheory.IsIso f := by
  sorry