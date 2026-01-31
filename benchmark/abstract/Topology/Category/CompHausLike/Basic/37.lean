import Mathlib


universe u v w

variable {P P' P'' : TopCat.{u} → Prop}

structure Dummy := mk ::
  (X : Type)

/-! ### Basic coercion / equality lemmas for `CompHausLike` -/
lemma CompHausLike.isoEquivHomeo_right_inv
    {P : TopCat.{u} → Prop}
    {X Y : CompHausLike P} :
    Function.RightInverse
      (CompHausLike.isoEquivHomeo (P := P) (X := X) (Y := Y)).invFun
      (CompHausLike.isoEquivHomeo (P := P) (X := X) (Y := Y)).toFun := by
  sorry

/-! ### Constants and evaluation lemmas -/

@[simp] lemma CompHausLike.const_apply
    {P : TopCat.{u} → Prop}
    (T S : CompHausLike P) (s : S) (t : T) :
    (CompHausLike.const (P := P) T (S := S) s) t = s := by
  sorry
