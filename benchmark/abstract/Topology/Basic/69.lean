import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}
-- 9. Separation axioms via open/closed sets

lemma t1Space_iff_isClosed_singleton :
    T1Space X ↔ ∀ x : X, IsClosed ({x} : Set X) := by
  sorry
