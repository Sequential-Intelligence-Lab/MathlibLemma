import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


variable {α β γ ι κ : Type*}

open Set Filter Bornology
theorem isBounded_of_bounded_union {s : ι → Set α} [Bornology α]
    (hs : IsBounded (⋃ i, s i)) {t : Set ι} (ht : (⋃ i ∈ t, s i) = ⋃ i, s i) :
    (∀ i ∈ t, IsBounded (s i)) := by
  intro i hi
  have h1 : s i ⊆ (⋃ i, s i) := by
    apply Set.subset_iUnion
  exact IsBounded.subset hs h1