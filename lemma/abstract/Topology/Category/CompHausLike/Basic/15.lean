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
  constructor
  · intro h
    -- compare as functions X → Y
    ext x
    -- apply equality of morphisms, then evaluate at x
    have := congrArg (fun φ =>
        ((φ : CompHausLike.of P X ⟶ CompHausLike.of P Y) :
          X → Y) x) h
    -- simplify both sides to f x and g x
    simpa using this
  · intro h
    -- rewrite and use reflexivity
    simpa [h]


@[simp] lemma CompHausLike.ofHom_const
    (P : TopCat.{u} → Prop)
    {X Y : Type u} [TopologicalSpace X] [TopologicalSpace Y]
    [CompactSpace X] [CompactSpace Y] [T2Space X] [T2Space Y]
    [CompHausLike.HasProp P X] [CompHausLike.HasProp P Y]
    (y : Y) :
    CompHausLike.ofHom P (ContinuousMap.const X y) =
      CompHausLike.const (CompHausLike.of P X) (s := (y : CompHausLike.of P Y)) := by
  -- reduce to equality of underlying continuous maps
  apply (CompHausLike.ofHom_eq_iff P).mpr
  -- show both continuous maps are the same constant map
  ext x
  simp