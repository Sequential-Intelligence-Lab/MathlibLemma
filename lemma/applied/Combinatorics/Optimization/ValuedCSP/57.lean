import Mathlib

/-! ### Order / lattice related lemmas -/

/-- Boolean predicate version, with a nonconflicting name. -/
lemma perm_filterBool
    {α : Type*}
    (p : α → Bool)
    {l₁ l₂ : List α}
    (h : List.Perm l₁ l₂) :
    List.Perm (l₁.filter p) (l₂.filter p) := by
  induction h with
  | nil =>
      simp
  | @cons x l₁ l₂ h ih =>
      by_cases hx : p x = true
      · -- x is kept by the filter on both sides
        simp [List.filter, hx, ih]
      · -- x is dropped on both sides
        simp [List.filter, hx, ih]
  | @swap x y l =>
      -- Handle all four possibilities for `p x` and `p y`
      by_cases hx : p x = true
      · by_cases hy : p y = true
        · -- both kept: use `List.Perm.swap` and then symmetry
          have hswap :
              List.Perm (x :: y :: List.filter p l) (y :: x :: List.filter p l) :=
            List.Perm.swap _ _ _
          have hswap' :
              List.Perm (y :: x :: List.filter p l) (x :: y :: List.filter p l) :=
            hswap.symm
          simpa [List.filter, hx, hy] using hswap'
        · -- x kept, y dropped: both sides reduce to the same list
          have hrefl :
              List.Perm (x :: List.filter p l) (x :: List.filter p l) :=
            List.Perm.refl _
          simpa [List.filter, hx, hy] using hrefl
      · by_cases hy : p y = true
        · -- x dropped, y kept: both sides reduce to the same list
          have hrefl :
              List.Perm (y :: List.filter p l) (y :: List.filter p l) :=
            List.Perm.refl _
          simpa [List.filter, hx, hy] using hrefl
        · -- both dropped: both sides reduce to the same list
          have hrefl :
              List.Perm (List.filter p l) (List.filter p l) :=
            List.Perm.refl _
          simpa [List.filter, hx, hy] using hrefl
  | @trans l₁ l₂ l₃ h₁₂ h₂₃ ih₁₂ ih₂₃ =>
      exact ih₁₂.trans ih₂₃

/-- Another Boolean predicate version with a slightly different argument order. -/
lemma perm_filterBool'
    {α : Type*}
    {l₁ l₂ : List α}
    (p : α → Bool)
    (h : List.Perm l₁ l₂) :
    List.Perm (l₁.filter p) (l₂.filter p) := by
  exact perm_filterBool p h

/-- Prop-valued predicate version, also with a nonconflicting name. -/
lemma perm_filterProp
    {α : Type*}
    (p : α → Prop) [DecidablePred p]
    {l₁ l₂ : List α}
    (h : List.Perm l₁ l₂) :
    List.Perm (l₁.filter p) (l₂.filter p) := by
  -- Use the existing `List.Perm.filter` lemma from Mathlib
  simpa using h.filter p