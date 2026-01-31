import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

namespace List

variable {α β : Type*}

lemma Perm.comp_right {l₁ l₂ : List α} (h : l₁ ~ l₂) (f : α → β) :
    l₁.map f ~ l₂.map f := by
  have h_main : ∀ {l₁ l₂ : List α}, l₁ ~ l₂ → (l₁.map f) ~ (l₂.map f) := by
    intro l₁ l₂ h
    induction h using Perm.recOn
    · -- Case: rfl
      simp
    · -- Case: cons
      simp_all [List.map_cons]
      <;>
      try simp_all [Perm.cons]
      <;>
      try aesop
    · -- Case: swap
      simp [List.map_cons, Perm.swap]
      <;>
      try simp_all [Perm.cons, Perm.swap]
      <;>
      try aesop
    · -- Case: trans
      exact Perm.trans ‹_› ‹_›
  
  apply h_main
  exact h

end List