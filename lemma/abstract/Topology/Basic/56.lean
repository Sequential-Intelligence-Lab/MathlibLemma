import Mathlib

universe u v w x

variable {α β γ X Y Z ι κ : Type*}

variable [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z]
variable {s t u : Set X} {A B : Set (Set X)} {f : X → Y} {g : Y → Z}

open Filter

lemma lim_map_of_comp_equiv {f : X → Y} {e : X ≃ X}
    (he : Continuous e) (he' : Continuous e.symm)
    {l : Filter X} :
    Tendsto (f ∘ e) l (Filter.map f (Filter.map e l)) := by
  -- We only need filter-theoretic facts; continuity and equivalence are unused.
  unfold Tendsto
  -- Goal: map f (map e l) ≤ map (f ∘ e) l
  -- Use functoriality of `map` on filters.
  -- `Filter.map_map` says: map f (map e l) = map (fun x => f (e x)) l
  -- which is map f (map e l) = map (f ∘ e) l.
  simpa [Filter.map_map, Function.comp]