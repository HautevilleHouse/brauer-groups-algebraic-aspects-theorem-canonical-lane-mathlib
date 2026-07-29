import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure CentralSimpleAlgebra (k : Type u) [Field k] where
  dim : Nat
  splitField : Type v
  splitFieldExtension : SplitField k
  matrixRingEquiv : M (dim) (splitField) ≃ₐ[splitField] splitField

theorem centralSimpleSplitField (k : Type u) [Field k] (A : CentralSimpleAlgebra k) :
  A.splitField ≃ₐ[k] M(A.dim, A.splitField) :=
  sorry

structure BrauerCentralSimpleEvidence (F : Type u) [Field F] where
  dim : Nat
  splitField : Type v
  splitFieldExtension : SplitField F
  matrixRingEquiv : M (dim) (splitField) ≃ₐ[splitField] splitField
  centralSimpleClosed : Prop := by exact True

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse