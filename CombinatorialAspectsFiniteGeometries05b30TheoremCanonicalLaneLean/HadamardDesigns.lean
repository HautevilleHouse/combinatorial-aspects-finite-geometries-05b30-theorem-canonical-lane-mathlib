import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure HadamardDesignPackage where
  order : Nat
  hadamardMatrix : Matrix (Fin (4*order)) (Fin (4*order)) Int
  normalized : Prop
  designExtracted : Prop

structure HadamardDesignEvidence (H : HadamardDesignPackage) where
  normalizedClosed : H.normalized
  designExtractedClosed : H.designExtracted

def HadamardDesignClosed (H : HadamardDesignPackage) : Prop :=
  H.normalized ∧ H.designExtracted

theorem hadamard_design_closed_from_evidence (H : HadamardDesignPackage) (E : HadamardDesignEvidence H) :
    HadamardDesignClosed H := by
  exact And.intro E.normalizedClosed E.designExtractedClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse