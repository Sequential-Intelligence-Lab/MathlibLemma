import Mathlib

/-! ## Basic filter / topology lemmas -/

lemma IsClosed.mem_of_tendsto_nhds
    {α : Type*} [TopologicalSpace α]
    {β : Type*} {l : Filter β} {f : β → α} {x : α}
    (hf : Filter.Tendsto f l (nhds x)) {s : Set α} (hs : IsClosed s)
    (hfs : ∀ᶠ n in l, f n ∈ s) :
    x ∈ s := by
  sorry