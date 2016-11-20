class Posts extends React.Component {
	constructor(props) {
		super(props)
		this.displayPosts = this.displayPosts.bind(this)
		this.isLast = this.isLast.bind(this)
	}

	isLast(post) {
		let posts = this.props.posts
		return post === posts[posts.length - 1]
	}

	displayPosts() {
		return this.props.posts.map( post => {
			return(
				<div key={`post-${post.id}`}>
					<Post post={post} admin={this.props.admin} last={this.isLast(post)}/>
				</div>
			)
		})
	}

	render() {
		return (
			<div>
			  {this.displayPosts()}
			</div>
		)
	}
}

