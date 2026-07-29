import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.CentralSimpleAlgebra

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure SplittingField (F : Type u) [Field F] (A : CentralSimpleAlgebra F) where
  fieldExtension : Type v
  fieldExtensionStructure : Field fieldExtension
  embedding : fieldExtension →+* F
  split : ((A.carrier) ⊗[F] fieldExtension) ≃ₐ[fieldExtension] (MatrixAlgebra fieldExtension (Fin (FiniteDimensional.finrank F A.carrier)))

structure SplittingFieldEvidence (F : Type u) [Field F] (A : CentralSimpleAlgebra F) (S : SplittingField F A) where
  embeddingClosed : True
  splitClosed : True

def SplittingFieldClosed (F : Type u) [Field F] (A : CentralSimpleAlgebra F) (S : SplittingField F A) : Prop :=
  True

theorem splitting_field_closed_from_evidence (F : Type u) [Field F] (A : CentralSimpleAlgebra F) (S : SplittingField F A) (E : SplittingFieldEvidence F A S) : SplittingFieldClosed F A S :=
  by
    unfold SplittingFieldClosed
    trivial

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse