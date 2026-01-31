import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.finite_discrete_compactHausLike
    {P : TopCat.{u} → Prop}
    (α : Type u) [Fintype α]
    [TopologicalSpace α] [DiscreteTopology α]
    [CompactSpace α] [T2Space α]
    [CompHausLike.HasProp P α] :
    Nonempty (CompHausLike P) := by
  sorry
