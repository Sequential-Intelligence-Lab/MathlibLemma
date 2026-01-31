import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}
-- 11. Interactions with finite sets / finiteness

lemma isClosed_of_finite_subset_isClosed
    {s : Set X} (hs : s.Finite)
    (hsub : ∀ x ∈ s, IsClosed ({x} : Set X)) :
    IsClosed s := by
  sorry
