import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Tendsto.comp_nhdsWithin_nhdsWithin' 
    {α β γ : Type _} [TopologicalSpace α] [TopologicalSpace β] [TopologicalSpace γ]
    {s : Set α} {t : Set β} {a : α} {b : β}
    {f : α → β} {g : β → γ} {l : Filter γ}
    (hf : Filter.Tendsto f (nhds a) (nhdsWithin b t))
    (hg : Filter.Tendsto g (nhdsWithin b t) l) :
    Filter.Tendsto (fun x => g (f x)) (nhds a) l := by
  -- Use the fact that the limit of g(y) as y approaches b within t is l.
  have h1 : Filter.Tendsto g (nhdsWithin b t) l := hg
  -- Use the fact that the limit of f(x) as x approaches a is b within t.
  have h2 : Filter.Tendsto f (nhds a) (nhdsWithin b t) := hf
  -- Combine the two limits to get the limit of g(f(x)) as x approaches a.
  have h3 : Filter.Tendsto (fun x => g (f x)) (nhds a) l := h1.comp h2
  -- Conclude the proof.
  exact h3