class PostControls extends React.Component {
	constructor(props) {
		super(props)
		this.state = { delete: false }
		this.toggleDelete = this.toggleDelete.bind(this)
	}

	toggleDelete(e) {
		e.preventDefault();
		this.setState({ delete: !this.state.delete });
	}

	render() {
		if(this.state.delete) {
			return (
				<div>
					<p>Are you sure you want to delete this post?</p>
					<button className="btn red" onClick={this.props.deletePost} style={{marginRight: "20px"}}>Delete</button>
					<button className="btn" onClick={this.toggleDelete}>Cancel</button>
				</div>
			)
		} else {
			return (
				<div>
					<a href={`/posts/${this.props.id}/edit`}>Edit</a> |
					<a href="#" onClick={this.toggleDelete} style={{color: "red"}}> Delete</a> 
				</div>
			)
		}
	}
}