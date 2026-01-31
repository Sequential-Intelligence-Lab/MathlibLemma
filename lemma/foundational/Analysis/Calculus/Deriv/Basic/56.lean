import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAtFilter.sub'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜} {L : Filter 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAtFilter f f' x L)
    (hg : HasDerivAtFilter g g' x L) :
    HasDerivAtFilter (fun y => f y - g y) (f' - g') x L := by
  have h_neg_g : HasDerivAtFilter (fun y : 𝕜 => -g y) (-g') x L := by
    have h1 : HasDerivAtFilter g g' x L := hg
    -- Use the fact that if g has a derivative g', then -g has a derivative -g'
    have h2 : HasDerivAtFilter (fun y : 𝕜 => -g y) (-g') x L := by
      apply HasDerivAtFilter.neg h1
    exact h2
  
  have h_add : HasDerivAtFilter (fun y : 𝕜 => f y + -g y) (f' + -g') x L := by
    have h1 : HasDerivAtFilter f f' x L := hf
    have h2 : HasDerivAtFilter (fun y : 𝕜 => -g y) (-g') x L := h_neg_g
    -- Use the fact that if f has derivative f' and -g has derivative -g', then their sum has derivative f' + (-g')
    have h3 : HasDerivAtFilter (fun y : 𝕜 => f y + -g y) (f' + -g') x L := by
      apply HasDerivAtFilter.add h1 h2
    exact h3
  
  have h_final : HasDerivAtFilter (fun y => f y - g y) (f' - g') x L := by
    have h₁ : (fun y : 𝕜 => f y - g y) = (fun y : 𝕜 => f y + -g y) := by
      funext y
      ring
    have h₂ : (f' - g') = (f' + -g') := by ring
    have h₃ : HasDerivAtFilter (fun y : 𝕜 => f y + -g y) (f' + -g') x L := h_add
    have h₄ : HasDerivAtFilter (fun y => f y - g y) (f' - g') x L := by
      convert h₃ using 1
      <;> simp_all [h₁, h₂]
      <;>
      (try ring_nf) <;>
      (try simp_all) <;>
      (try norm_num) <;>
      (try linarith)
    exact h₄
  
  exact h_final