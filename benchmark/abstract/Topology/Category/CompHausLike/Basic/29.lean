import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy where
  X : Type

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.iso_of_mono_epi
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} (f : X ⟶ Y)
    (hf_mono : CategoryTheory.Mono (C := CompHausLike P) f)
    (hf_epi  : CategoryTheory.Epi  (C := CompHausLike P) f) :
    CategoryTheory.IsIso (C := CompHausLike P) f := by
  -- uses compact Hausdorff + topological arguments
  sorry

/-! ### `isoOfBijective`, `isoOfHomeo`, `homeoOfIso`, `isoEquivHomeo` properties -/