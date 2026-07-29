import canonicalLaneMathlib.AdmissibleClass

/-!
# Crossed Product Decomposition Package
-/

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure CrossedProductDecompositionPackage (G : BrauerAdmittedObject) where
  centralSimpleAlgebra : Type u
  galoisExtension : Type v
  crossedProductIsomorphism : Prop
  indexPeriodRelation : Prop

structure CrossedProductDecompositionEvidence
    (G : BrauerAdmittedObject) (C : CrossedProductDecompositionPackage G) where
  crossedProductIsomorphismClosed : C.crossedProductIsomorphism
  indexPeriodRelationClosed : C.indexPeriodRelation

def CrossedProductDecompositionClosed (G : BrauerAdmittedObject)
    (C : CrossedProductDecompositionPackage G) : Prop :=
  C.crossedProductIsomorphism ∧ C.indexPeriodRelation

theorem crossed_product_decomposition_closed_from_evidence
    (G : BrauerAdmittedObject) (C : CrossedProductDecompositionPackage G)
    (E : CrossedProductDecompositionEvidence G C) :
    CrossedProductDecompositionClosed G C := by
  exact And.intro E.crossedProductIsomorphismClosed E.indexPeriodRelationClosed

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse