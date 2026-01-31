import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}
lemma isOpen_connectedComponent_of_open {x : X}
    (h : IsPreconnected (connectedComponent x : Set X)) :
    IsOpen (connectedComponent x : Set X) → IsConnected (connectedComponent x : Set X) := by
  sorry
