import Mathlib

namespace List

variable {α β : Type*}

/-! ### Order / lattice related lemmas -/
lemma Perm.comp_right {l₁ l₂ : List α} (h : l₁ ~ l₂) (f : α → β) :
    l₁.map f ~ l₂.map f := by
  sorry

end List