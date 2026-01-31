import Mathlib

/-! ### Order / lattice related lemmas -/

/-- Boolean predicate version, with a nonconflicting name. -/
lemma perm_filterBool
    {α : Type*}
    (p : α → Bool)
    {l₁ l₂ : List α}
    (h : List.Perm l₁ l₂) :
    List.Perm (l₁.filter p) (l₂.filter p) := by
  sorry

/-- Another Boolean predicate version with a slightly different argument order. -/
lemma perm_filterBool'
    {α : Type*}
    {l₁ l₂ : List α}
    (p : α → Bool)
    (h : List.Perm l₁ l₂) :
    List.Perm (l₁.filter p) (l₂.filter p) := by
  sorry

/-- Prop-valued predicate version, also with a nonconflicting name. -/
lemma perm_filterProp
    {α : Type*}
    (p : α → Prop) [DecidablePred p]
    {l₁ l₂ : List α}
    (h : List.Perm l₁ l₂) :
    List.Perm (l₁.filter p) (l₂.filter p) := by
  sorry