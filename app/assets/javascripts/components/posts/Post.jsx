class Post extends React.Component {
	constructor(props) {
		super(props)
		this.state = { hidden: false }
		this.displayDate = this.displayDate.bind(this)
		this.displayHr = this.displayHr.bind(this)
		this.displayControls = this.displayControls.bind(this)
	}

	displayDate() {
		let date = this.props.post.created_at
		let year = /^.{4}/g.exec(date)[0]
		let month = /-.{2}/g.exec(date)[0]
		let day = /-.{2}/g.exec(date)[1]
		return(<i>{`${month} ${day}, ${year}`}</i>)
	}

	displayHr() {
		if(!this.props.last) {
			return(<hr />)
		}
	}

	deletePost() {
		$.ajax({
			url: `/posts/${this.props.post.id}`,
			type: 'DELETE',
			dataType: 'JSON'
		}).done( response => {
			this.setState({ hidden: true })
		}).fail( response => {
			console.log("Failed to delete", response)
		})
	}

	displayControls() {
		if (this.props.admin) {
			return( <PostControls id={this.props.post.id} deletePost={this.deletePost.bind(this)}/> )
		}
	}

	render() {
		if(this.state.hidden) {
			return(<div></div>)
		} else {
			return(
				<div>
					<a href={`/posts/${this.props.post.id}`}><h3>{this.props.post.title}</h3></a>
					<i>{this.displayDate()}</i>
					<div dangerouslySetInnerHTML={ { __html: this.props.post.body } } className="preview" />
					{this.displayControls()}
					{this.displayHr()}
				</div>
			)
		}
	}
}