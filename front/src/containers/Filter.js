import { connect } from 'react-redux'
import { setOreNameVisibilityFilter } from '../actions'
import { setOreSecurityLevelFilter } from '../actions'
import { setOreSortParameter } from '../actions'
import { triggerToggleMineralFilter } from '../actions'
import OreFilter from '../components/OreFilter.jsx'

const mapStateToProps = state => {
  return {
     nameFilters : state.oreNameVisibilityFilter,
     securityLevelFilter: state.oreSecurityLevelFilter,
     sortParameter: state.sortParameter,
     mineralFilters: state.mineralFilters
  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    onNameFilterChange: (nameFilters) => {
      dispatch(setOreNameVisibilityFilter(nameFilters))
    },
    onSecurityLevelFilterChange: (securityFilter) => {
      dispatch(setOreSecurityLevelFilter(securityFilter))
    },
    onSortParameterChange: (parameter) => {
      dispatch(setOreSortParameter(parameter))
    },
    onMineralFilterChange: (filter) => {
      dispatch(triggerToggleMineralFilter(filter))
    }
  }
}

const Filter = connect(
  mapStateToProps,
  mapDispatchToProps
)(OreFilter)

export default Filter