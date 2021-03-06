import React from 'react';
import OreList from '../components/OreList.jsx';
import VisibleOreList from '../containers/VisibleOreList.js';
import Filter from '../containers/Filter.js';
import {Tabs, Tab} from 'react-bootstrap-tabs';


class OreComparator extends React.Component {
  propTypes:{
        onTypeFilterChange: PropTypes.func,
        oreList: PropTypes.array,
        mineralList: PropTypes.array
  }
  constructor(props) {
        super(props);
        this.onTabSelect = this.onTabSelect.bind(this);
  }
  onTabSelect(index, label){
    this.props.onTypeFilterChange(index + 1);
  }

  render() {
    var selectedTab = this.props.oreTypeFilter - 1;
    var oreLabel = <span> <img src='/media/ore/icons/23_64_5.png' className="icon" alt='' /> Ore</span>
    var moonOreLabel = <span> <img src='/media/ore/icons/23_64_12.png' className="icon" alt='' /> Moon Ore</span>
    var iceLabel = <span> <img src='/media/ore/icons/51_64_5.png' className="icon" alt='' /> Ice</span>
    var fullerenesLabel = <span> <img src='/media/ore/icons/62_64_10.png' className="icon" alt='' /> Fullerenes</span>

    return 	<div>
                <div className="mb-3">
                    <Tabs onSelect={this.onTabSelect} selected={selectedTab}>
                        <Tab label={oreLabel}></Tab>
                        <Tab label={moonOreLabel}></Tab>
                        <Tab label={iceLabel}></Tab>
                        <Tab label={fullerenesLabel}></Tab>
                    </Tabs>
                </div>
    			<div className="ore-filters">
    				<Filter mineralList = {this.props.mineralList} oreList={this.props.oreList} />
    			</div>

    			<div>
    				<VisibleOreList oreList={this.props.oreList} reprocessingStats={this.props.reprocessingStats} />
    			</div>

    		</div>
  }
}

export default OreComparator