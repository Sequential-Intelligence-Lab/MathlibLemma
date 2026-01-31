import Mathlib

open Matrix

lemma diagonal_mul_inv
    (n : Type _) [DecidableEq n] [Fintype n]
    (α : Type _) [DivisionRing α]
    (d : n → α)
    (h : ∀ i, d i ≠ 0) :
    (Matrix.diagonal d : Matrix n n α) *
      (Matrix.diagonal fun i => (d i)⁻¹) =
    (1 : Matrix n n α) := by
  classical
  -- Step 1: product of diagonals is diagonal of pointwise product
  have hmul :
      (Matrix.diagonal d : Matrix n n α) *
        Matrix.diagonal (fun i => (d i)⁻¹)
      = Matrix.diagonal (fun i => d i * (d i)⁻¹) := by
    simpa using
      (Matrix.diagonal_mul_diagonal d (fun i => (d i)⁻¹))
  -- Step 2: pointwise simplification d i * (d i)⁻¹ = 1
  have hfun : (fun i => d i * (d i)⁻¹) = fun _ : n => (1 : α) := by
    funext i
    simp [h i]
  -- Step 3: conclude the product is the identity matrix
  calc
    (Matrix.diagonal d : Matrix n n α) *
        Matrix.diagonal (fun i => (d i)⁻¹)
      = Matrix.diagonal (fun i => d i * (d i)⁻¹) := hmul
    _ = Matrix.diagonal (fun _ : n => (1 : α)) := by
          simp [hfun]
    _ = (1 : Matrix n n α) := Matrix.diagonal_one

lemma inv_mul_diagonal
    (n : Type _) [DecidableEq n] [Fintype n]
    (α : Type _) [DivisionRing α]
    (d : n → α)
    (h : ∀ i, d i ≠ 0) :
    (Matrix.diagonal (fun i => (d i)⁻¹) : Matrix n n α) *
      (Matrix.diagonal d) =
    (1 : Matrix n n α) := by
  classical
  -- Step 1: product of diagonals (reversed order)
  have hmul :
      (Matrix.diagonal (fun i => (d i)⁻¹) : Matrix n n α) *
        Matrix.diagonal d
      = Matrix.diagonal (fun i => (d i)⁻¹ * d i) := by
    simpa using
      (Matrix.diagonal_mul_diagonal (fun i => (d i)⁻¹) d)
  -- Step 2: pointwise simplification (d i)⁻¹ * d i = 1
  have hfun : (fun i => (d i)⁻¹ * d i) = fun _ : n => (1 : α) := by
    funext i
    simp [h i]
  -- Step 3: conclude the product is the identity matrix
  calc
    (Matrix.diagonal (fun i => (d i)⁻¹) : Matrix n n α) *
        Matrix.diagonal d
      = Matrix.diagonal (fun i => (d i)⁻¹ * d i) := hmul
    _ = Matrix.diagonal (fun _ : n => (1 : α)) := by
          simp [hfun]
    _ = (1 : Matrix n n α) := Matrix.diagonal_one