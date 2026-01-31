import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.of_injective {P : TopCat.{u} → Prop}
    (X : Type u) [TopologicalSpace X] [CompactSpace X] [T2Space X]
    [CompHausLike.HasProp P X] :
    Function.Injective (fun _ : Unit => (CompHausLike.of P X)) := by
  -- silly, but nontrivial structurally
  sorry
