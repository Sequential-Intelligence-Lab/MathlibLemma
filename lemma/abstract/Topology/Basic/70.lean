import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

lemma t1Space_iff_isOpen_compl_singleton :
    T1Space X ↔ ∀ x : X, IsOpen ({x}ᶜ : Set X) := by
  constructor
  · intro hT1 x
    -- Use the T1Space structure as an instance
    haveI : T1Space X := hT1
    -- Singletons are closed in a T1 space, hence their complements are open
    simpa using (isClosed_singleton (x := x)).isOpen_compl
  · intro hOpen
    -- Build a T1Space structure from openness of complements of singletons
    refine (⟨?_⟩ : T1Space X)
    intro x
    have hxOpen : IsOpen ({x}ᶜ : Set X) := hOpen x
    -- The complement of an open set is closed; ({x}ᶜ)ᶜ = {x}
    simpa [compl_compl] using hxOpen.isClosed_compl