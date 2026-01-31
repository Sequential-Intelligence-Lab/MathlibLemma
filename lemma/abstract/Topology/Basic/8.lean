import Mathlib


universe u v w x

variable {α β γ X Y Z ι κ : Type*}

-- 1. Basic structural lemmas about open and closed sets

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

lemma isClosed_biInter_of_directed {ι} [Preorder ι] {s : ι → Set X}
    (hd : Directed (· ⊇ ·) s) (h : ∀ i, IsClosed (s i)) :
    IsClosed (⋂ i, s i) := by
  classical
  -- Each complement is open
  have hop : ∀ i, IsOpen ((s i)ᶜ) := fun i => (h i).isOpen_compl
  -- The complement of the intersection is the union of complements, hence open
  have hOpenComplInter : IsOpen ((⋂ i, s i)ᶜ) := by
    simpa [Set.compl_iInter] using isOpen_iUnion hop
  -- The complement of an open set is closed
  have hClosed : IsClosed (((⋂ i, s i)ᶜ)ᶜ) :=
    hOpenComplInter.isClosed_compl
  -- Double complement gives back the intersection
  simpa using hClosed