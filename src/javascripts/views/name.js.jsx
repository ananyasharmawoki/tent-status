/** @jsx React.DOM */

(function () {
"use strict";

Micro.Views.Name = React.createClass({
	displayName: "Micro.Views.Name",

	getInitialState: function () {
		return {
			name: null
		};
	},

	getDefaultProps: function () {
		return {
			profiles: {}
		};
	},

	componentWillMount: function () {
		var profile = this.props.profiles[this.props.entity];
		if (profile) {
			this.__handleChange(profile);
		} else {
			TentContacts.find(this.props.entity, this.__handleChange);
		}
		TentContacts.onChange(this.props.entity, this.__handleChange);
	},

	componentWillUnmount: function () {
		TentContacts.offChange(this.props.entity, this.__handleChange);
	},

	render: function () {
		return (
			<span>{this.state.name}</span>
		);
	},

	__handleChange: function (profile) {
		this.setState({
			name: profile.name
		});
	}
});

})();