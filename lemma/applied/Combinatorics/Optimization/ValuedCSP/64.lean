import Mathlib


variable {α β γ δ ι κ D C R S : Type*}
variable [DecidableEq α] [DecidableEq β]

/-! ### Order / lattice related lemmas -/
lemma Finset.univ_sum_update
    {n} [DecidableEq (Fin n)] [AddCommMonoid β]
    (i : Fin n) (x : β) (f : Fin n → β) :
    (Finset.univ : Finset (Fin n)).sum (fun j => if j = i then x else f j)
      = (Finset.univ.erase i).sum f + x := by
  classical
  -- Define the updated function
  let g : Fin n → β := fun j => if j = i then x else f j

  have hi : i ∈ (Finset.univ : Finset (Fin n)) := by simp

  -- On `univ.erase i`, `g` coincides with `f`
  have hsum :
      (Finset.univ.erase i : Finset (Fin n)).sum g
        = (Finset.univ.erase i : Finset (Fin n)).sum f := by
    refine Finset.sum_congr rfl ?_
    intro j hj
    rcases Finset.mem_erase.mp hj with ⟨hne, _⟩
    simp [g, hne]

  -- Use `sum_erase_add` to split the sum over `univ` at `i`
  have hmain :=
    Finset.sum_erase_add
      (s := (Finset.univ : Finset (Fin n)))
      (a := i)
      (f := g)
      hi
  -- `hmain` : (univ.erase i).sum g + g i = univ.sum g

  have hcalc :
      (Finset.univ : Finset (Fin n)).sum g
        = (Finset.univ.erase i : Finset (Fin n)).sum g + g i := by
    simpa using hmain.symm

  -- Now simplify using `hsum` and the value of `g i`
  calc
    (Finset.univ : Finset (Fin n)).sum (fun j => if j = i then x else f j)
        = (Finset.univ : Finset (Fin n)).sum g := by
          rfl
    _ = (Finset.univ.erase i : Finset (Fin n)).sum g + g i := hcalc
    _ = (Finset.univ.erase i : Finset (Fin n)).sum f + x := by
          simp [hsum, g]