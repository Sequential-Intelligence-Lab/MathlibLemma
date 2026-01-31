import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.ofHom_injective
    (P : TopCat.{u} → Prop)
    {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    [CompactSpace X] [CompactSpace Y] [T2Space X] [T2Space Y]
    [CompHausLike.HasProp P X] [CompHausLike.HasProp P Y] :
    Function.Injective (CompHausLike.ofHom P (X := X) (Y := Y)) := by
  -- uses extensionality of morphisms
  intro f g h
  -- `ext` reduces equality of morphisms to pointwise equality of the underlying maps
  ext x
  -- now use the fact that `h` is equality of underlying maps
  simpa using congrArg (fun k => k x) h