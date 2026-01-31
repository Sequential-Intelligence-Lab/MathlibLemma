import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

lemma isClosed_iInter_of_antitone {s : ι → Set X}
    [Preorder ι]
    (hmono : Antitone s) (h : ∀ i, IsClosed (s i)) :
    IsClosed (⋂ i, s i) := by
  -- The antitone hypothesis is not needed; we can use the general lemma
  simpa using isClosed_iInter h