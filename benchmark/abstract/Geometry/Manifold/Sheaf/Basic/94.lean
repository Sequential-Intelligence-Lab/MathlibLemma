import Mathlib

universe u v

open Set

variable {α : Type u} {β : Type v}

/-- The range of a function is the set of its values. -/
lemma sheaf_section_image_eq
    (f : α → β) :
    Set.range f = {y | ∃ x : α, f x = y} := by
  -- proof omitted
  sorry