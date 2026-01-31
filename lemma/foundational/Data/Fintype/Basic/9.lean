import Mathlib

open Finset

lemma univ_fin_succ (n : ℕ) :
    (Finset.univ : Finset (Fin (n + 1))) =
      insert 0 ((Finset.univ : Finset (Fin n)).map
        ⟨Fin.succ, Fin.succ_injective (n := n)⟩) := by
  ext x
  constructor
  · intro _
    -- show x is in the RHS by cases on x : Fin (n+1)
    refine Fin.cases ?h0 ?hs x
    · -- case x = 0
      exact Finset.mem_insert_self 0 _
    · -- case x = Fin.succ i
      intro i
      apply Finset.mem_insert_of_mem
      -- show succ i is in the mapped univ
      refine Finset.mem_map.mpr ?_
      refine ⟨i, ?_, rfl⟩
      simp
  · intro _
    -- any x : Fin (n+1) is in univ
    simpa using (Finset.mem_univ x)