import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A : Set (Set X)} {f : X → Y} {g : Y → Z}

-- 10. Misc: countability, bases, etc.

lemma isOpen_of_isTopologicalBasis_mem
    {B₀ : Set X → Prop}
    (hB : TopologicalSpace.IsTopologicalBasis B₀)
    {s : Set X}
    (hs : B₀ s) :
    IsOpen s := by
  sorry