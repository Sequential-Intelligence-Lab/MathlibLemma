import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/

open Topology Filter

lemma Tendsto.comp_nhdsWithin_nhdsWithin
    {α β γ : Type _} [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]
    {s : Set α} {t : Set β} {a : α} {b : β}
    {f : α → β} {g : β → γ} {l : Filter γ}
    (hf : Tendsto f (𝓝[s] a) (𝓝[t] b))
    (hg : Tendsto g (𝓝[t] b) l) :
    Tendsto (fun x => g (f x)) (𝓝[s] a) l := by
  sorry