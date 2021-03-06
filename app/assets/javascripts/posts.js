$(document).on('turbolinks:load', function() {
	$('#summernote').summernote();

	$('[data-provider="summernote"]').each(function(){
	  $(this).summernote({height: 400});
	})

	// $('#post_btn').click( function(e) {
	// 	e.preventDefault();
	// 	let body = $('#wysiwyg').wysiwyg("getContent");
	// 	let title = $('#post_title').val();
	// 	$.ajax({
	// 		url: '/posts',
	// 		type: 'POST',
	// 		dataType: 'JSON',
	// 		data: { post: { title, body } }
	// 	}).done( post => {
	// 		window.location.replace(`/posts/${post.id}`)
	// 	})
	// })

	$('#delete_post').click(() => {
		$('#post_options').toggle('fast')
		$('#confirm_delete').toggle('fast')
	})

	$('#delete_cancel').click(() => {
		$('#post_options').toggle('fast')
		$('#confirm_delete').toggle('fast')
	})
})


// 	$('#edit_post_btn').click( function(e) {
// 		e.preventDefault();
// 		let body = $('#wysiwyg').wysiwyg("getContent");
// 		let title = $('#post_title').val();
// 		let id = $('#post-id').val()
// 		$.ajax({
// 			url: `/posts/${id}`,
// 			type: 'PUT',
// 			dataType: 'JSON',
// 			data: { post: { title, body } }
// 		}).done( post => {
// 			window.location.replace(`/posts/${post.id}`)
// 		}).fail( response => {
// 			console.log("Failed to update post", response)
// 		})
// 	})


// $(document).ready(function() {
// 	Materialize.updateTextFields();
// 	$('#wysiwyg').wysiwyg({
//     controls: {
//       strikeThrough: { visible: true },
//       underline: { visible: true },
//       subscript: { visible: true },
//       superscript: { visible: true },
//       h1: { visible: true }
//     }
// 	});

// 	$('#post_btn').click( function(e) {
// 		e.preventDefault();
// 		let body = $('#wysiwyg').wysiwyg("getContent");
// 		let title = $('#post_title').val();
// 		$.ajax({
// 			url: '/posts',
// 			type: 'POST',
// 			dataType: 'JSON',
// 			data: { post: { title, body } }
// 		}).done( post => {
// 			window.location.replace(`/posts/${post.id}`)
// 		})
// 	})

// 	$('#edit_post_btn').click( function(e) {
// 		e.preventDefault();
// 		let body = $('#wysiwyg').wysiwyg("getContent");
// 		let title = $('#post_title').val();
// 		let id = $('#post-id').val()
// 		$.ajax({
// 			url: `/posts/${id}`,
// 			type: 'PUT',
// 			dataType: 'JSON',
// 			data: { post: { title, body } }
// 		}).done( post => {
// 			window.location.replace(`/posts/${post.id}`)
// 		}).fail( response => {
// 			console.log("Failed to update post", response)
// 		})
// 	})

// 	$('#delete_post').click(() => {
// 		$('#post_options').toggle('fast')
// 		$('#confirm_delete').toggle('fast')
// 	})

// 	$('#delete_cancel').click(() => {
// 		$('#post_options').toggle('fast')
// 		$('#confirm_delete').toggle('fast')
// 	})
// })