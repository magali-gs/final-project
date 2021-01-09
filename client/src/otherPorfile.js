import { Component } from "react";
import axios from "./axios";

export default class OtherProfile extends Component {
    constructor() {
        super();
        this.state = {
            id: '',
            first: '',
            last: '',
            email: '',
            bio: '',
            image: ''
        };
    }

    componentDidMount() {
        axios.get("/member/" + this.props.match.params.id).then(({ data }) => {
            console.log("res", data);
            if (this.props.match.params.id == data.loggedId) {
                this.props.history.push("/");
            } else {
                this.setState({
                    id: data.id,
                    first: data.first_name,
                    last: data.last_name,
                    email: data.email,
                    bio: data.bio,
                    image: data.profile_pic,
                });
            }
        });
  
    }

    render() {
        return (
            <div className="profile">
                {!this.state.image && (
                    <div className="other image-cropper">
                        <img
                            className="profile-img "
                            src="../default-img.png"
                            alt={`${this.state.first} ${this.state.last}`}
                        />
                    </div>
                )}
                {this.state.image && (
                    <div className="other image-cropper">
                        <img
                            className="profile-img"
                            src={this.state.image}
                            alt={`${this.state.first} ${this.state.last}`}
                        />
                    </div>
                )}
                <div className='bio-cropper'>
                    <h1>
                        {this.state.first} {this.state.last}
                    </h1>
                    <p>{this.state.bio}</p>
                </div>
            </div>
        );
    }
}