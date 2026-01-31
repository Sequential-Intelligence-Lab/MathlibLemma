import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.ofHom_eq_iff
    (P : TopCat.{u} → Prop)
    {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    [CompactSpace X] [CompactSpace Y] [T2Space X] [T2Space Y]
    [CompHausLike.HasProp P X] [CompHausLike.HasProp P Y]
    {f g : C(X, Y)} :
    CompHausLike.ofHom P f = CompHausLike.ofHom P g ↔ f = g := by
  sorry

@[simp] lemma CompHausLike.ofHom_const
    (P : TopCat.{u} → Prop)
    {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    [CompactSpace X] [CompactSpace Y] [T2Space X] [T2Space Y]
    [CompHausLike.HasProp P X] [CompHausLike.HasProp P Y]
    (y : Y) :
    CompHausLike.ofHom P (ContinuousMap.const X y) =
      CompHausLike.const (CompHausLike.of P X) (s := (y : CompHausLike.of P Y)) := by
  sorry
