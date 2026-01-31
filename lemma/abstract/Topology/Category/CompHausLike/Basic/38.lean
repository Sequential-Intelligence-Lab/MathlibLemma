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
  -- This lemma, as stated, is in general false: a constant function is injective
  -- only if the domain is a subsingleton. Without an assumption like
  -- `[Subsingleton S]`, there is no way to prove this in Lean.
  --
  -- Any attempt to prove it would require showing that the underlying type of `S`
  -- is a subsingleton, which is not derivable from the data of `CompHausLike P`
  -- alone. The earlier error message about failing to synthesize a
  -- `Subsingleton` instance reflects precisely this issue.
  --
  -- Thus, this lemma cannot be completed as stated.
  --
  -- A correct, provable version would be:
  --
  -- lemma CompHausLike.const_injective'
  --     {P : TopCat.{u} → Prop}
  --     (T S : CompHausLike P) [Subsingleton S] :
  --     Function.Injective (fun s : S =>
  --       (CompHausLike.const (P := P) T (S := S) s)) := by
  --   intro s₁ s₂ _
  --   exact Subsingleton.elim _ _
  --
  -- Since we must keep the exact statement, we leave it as `sorry`.
  sorry