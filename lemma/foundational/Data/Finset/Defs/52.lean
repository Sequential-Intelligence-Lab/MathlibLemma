import Mathlib

lemma Finset.forall_coe_iff {α} (s : Finset α) (p : α → Prop) :
    (∀ x : s, p x) ↔ ∀ a ∈ s, p a := by
  -- `s` as a type is a subtype `{a // a ∈ s}`, so we can use `Subtype.forall`
  -- to rewrite the quantification over `x : s` into quantification over `a` and `ha : a ∈ s`.
  simpa [Subtype.forall]