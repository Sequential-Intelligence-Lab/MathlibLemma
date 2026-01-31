import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter Topology

lemma Tendsto.comp_nhdsWithin_nhdsWithin' 
    {α β γ : Type _} [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]
    {s : Set α} {t : Set β} {a : α} {b : β}
    {f : α → β} {g : β → γ} {l : Filter γ}
    (hf : Filter.Tendsto f (nhds a) (nhdsWithin b t))
    (hg : Filter.Tendsto g (nhdsWithin b t) l) :
    Filter.Tendsto (fun x => g (f x)) (nhds a) l := by
  sorry