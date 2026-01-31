import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.const_injective
    {P : TopCat.{u} → Prop}
    (T S : CompHausLike P) :
    Function.Injective (fun s : S => (CompHausLike.const (P := P) T (S := S) s)) := by
  sorry
