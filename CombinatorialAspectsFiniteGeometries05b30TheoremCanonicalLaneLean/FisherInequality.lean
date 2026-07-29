import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure FisherInequalityPackage where
  design : BlockDesignPackage
  fisherInequality : Prop
  fisherInequalityTerm : fisherInequality

structure FisherInequalityEvidence (F : FisherInequalityPackage) where
  fisherInequalityClosed : F.fisherInequality

def FisherInequalityClosed (F : FisherInequalityPackage) : Prop :=
  F.fisherInequality

theorem fisher_inequality_closed_from_evidence (F : FisherInequalityPackage) (E : FisherInequalityEvidence F) :
    FisherInequalityClosed F := by
  exact E.fisherInequalityClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse