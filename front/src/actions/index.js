

export const setOreNameVisibilityFilter = nameFilters => {
  return {
    type: 'SET_ORE_NAME_FILTER',
    nameFilters
  }
}

export const setOreSecurityLevelFilter = securityFilter =>{
	return{
		type:'SET_SECURITY_LEVEL_FILTER',
		securityFilter
	}
}

