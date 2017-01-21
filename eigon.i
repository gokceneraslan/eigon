%module(directors="1") eigon

%feature("director");

%{
#include <Eigen/Core>
%}

#define __GNUC__

/* ugly hack to ignore __attribute__s */
#define __attribute__(x)

%include "Eigen/Core"

%include "Eigen/src/Core/util/Macros.h"
%include "Eigen/src/Core/util/Constants.h"
%include "Eigen/src/Core/util/ForwardDeclarations.h"
%include "Eigen/src/Core/util/Memory.h"
%include "Eigen/src/Core/util/XprHelper.h"
%include "Eigen/src/Core/GlobalFunctions.h"

%include "Eigen/src/Core/Array.h"
%include "Eigen/src/Core/EigenBase.h"
%include "Eigen/src/Core/DenseCoeffsBase.h"
%include "Eigen/src/Core/DenseBase.h"
%include "Eigen/src/Core/MatrixBase.h"
%include "Eigen/src/Core/PlainObjectBase.h"
%include "Eigen/src/Core/Matrix.h"


%template(EigenBaseXd) Eigen::EigenBase< Eigen::MatrixXd >;
%template(DenseCoeffsBaseXdRw) Eigen::internal::DenseCoeffsBase< Eigen::MatrixXd, Eigen::DirectWriteAccessors >;
%template(DenseCoeffsBaseXdRo) Eigen::internal::DenseCoeffsBase< Eigen::MatrixXd, Eigen::ReadOnlyAccessors >;
%template(DenseCoeffsBaseXd) Eigen::internal::DenseCoeffsBase< Eigen::MatrixXd, Eigen::WriteAccessors >;
%template(DenseBaseXd) Eigen::internal::DenseBase< Eigen::MatrixXd >;

%template(DenseXprXd) Eigen::internal::dense_xpr_base< Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic> >;
typedef Eigen::MatrixXd Eigen::internal::dense_xpr_base< Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic> >::type;
%template(DenseXprMatrixXd) Eigen::internal::dense_xpr_base< Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic>, Eigen::MatrixXpr >;

%template(PlainObjectBaseMatrixXd) Eigen::PlainObjectBase< DenseXprXd >;
%template(MatrixBaseXd) Eigen::MatrixBase< Eigen::MatrixXd >;
%template(MatrixXd) Eigen::Matrix< double, Eigen::Dynamic, Eigen::Dynamic >;


/*%template(Matrix2i) Matrix<int, 2, 2>;*/
/*%template(Matrix2f) Matrix<float, 2, 2>;*/
/*%template(Matrix2d) Matrix<double, 2, 2>;*/

/*%template(Vector2i) Matrix<int, 2, 1>;*/
/*%template(Vector2f) Matrix<float, 2, 1>;*/
/*%template(Vector2d) Matrix<double, 2, 1>;*/

/*%template(RowVector2i) Matrix<int, 1, 2>;*/
/*%template(RowVector2f) Matrix<float, 1, 2>;*/
/*%template(RowVector2d) Matrix<double, 1, 2>;*/

/*%template(Matrix3i) Matrix<int, 3, 3>;*/
/*%template(Matrix3f) Matrix<float, 3, 3>;*/
/*%template(Matrix3d) Matrix<double, 3, 3>;*/

/*%template(MatrixXi) Matrix<int, Dynamic, Dynamic>;*/
/*%template(MatrixXf) Matrix<float, Dynamic, Dynamic>;*/

