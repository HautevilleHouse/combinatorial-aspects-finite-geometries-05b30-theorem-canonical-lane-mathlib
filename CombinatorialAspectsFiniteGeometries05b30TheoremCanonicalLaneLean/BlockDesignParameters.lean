import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure BlockDesignParametersPackage where
  v : ℕ
  k : ℕ
  λ : ℕ
  r : ℕ
  b : ℕ
  parameterRelations : Prop

structure BlockDesignParametersEvidence (D : BlockDesignParametersPackage) where
  parameterRelationsClosed : D.parameterRelations

def BlockDesignParametersClosed (D : BlockDesignParametersPackage) : Prop :=
  D.parameterRelations

theorem block_design_parameters_closed_from_evidence (D : BlockDesignParametersPackage) (E : BlockDesignParametersEvidence D) :
    BlockDesignParametersClosed D := by
  exact E.parameterRelationsClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse