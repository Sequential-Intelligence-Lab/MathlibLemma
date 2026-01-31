import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

lemma isOpen_compl_singleton_of_t1 [T1Space X] (x : X) :
    IsOpen ({x}ᶜ : Set X) := by
  -- In a T1 space, singletons are closed
  -- so their complements are open.
  simpa using (isClosed_singleton (x := x)).isOpen_compl

-- 3. Interaction with continuous maps and embeddings

variable {sX : Set X} {sY : Set Y}