import React, { Component } from 'react';
import { Card, CardImg, CardImgOverlay, CardText, CardBody, CardTitle } from 'reactstrap';

function RenderDish({dish}) {
		if(dish) {
			return (
				<div className="col-12 col-md-5 m-1">
					<Card>
						<CardImg width="100%" src={dish.image} alt={dish.name} />
						<CardBody>
							<CardTitle>{dish.name}</CardTitle>
							<CardText>{dish.description}</CardText>
						</CardBody>
					</Card>
				</div>
				
			);
		}
		return (
			<div></div>
		);
}


function RenderComments({comments}) {
	if(comments) {
		return (
			<div className="col-12 col-md-5 m-1">
				<h4>Comments</h4>
				<ul className="list-unstyled">
					{comments.map((comment) => {
						return(
							<li key={comment.id}>
								<p>{comment.comment}</p>
								<p>>-- {comment.author} , {new Intl.DateTimeFormat('en-US', { year: 'numeric', month: 'short', day: '2-digit'}).format(new Date(Date.parse(comment.date)))}</p>
							</li>
						);
					})}
				</ul>
			</div>
		);
	}

	return (
		<div></div>
	);
}

class DishDetail extends Component {

	render() {
		const dish = this.props.dish;
		return(
			<div className="row">
				<RenderDish dish={dish}/>
				<RenderComments comments={dish.comments} />
			</div>
		);
	}
}


export default DishDetail;