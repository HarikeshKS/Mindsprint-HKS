function Home() {
    return (
        <div>
            <div
                id="carouselExampleCaptions"
                className="carousel slide"
                data-bs-ride="carousel"
            >
                <ol className="carousel-indicators">
                    <li
                        data-bs-target="#carouselExampleCaptions"
                        data-bs-slide-to="0"
                        className="active"
                    ></li>
                    <li
                        data-bs-target="#carouselExampleCaptions"
                        data-bs-slide-to="1"
                    ></li>
                    <li
                        data-bs-target="#carouselExampleCaptions"
                        data-bs-slide-to="2"
                    ></li>
                </ol>
                <div className="carousel-inner">
                    <div className="carousel-item active">
                        <img
                            src="https://images.pexels.com/photos/1166209/pexels-photo-1166209.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
                            className="d-block w-100"
                            height="350"
                            alt="bg1"
                        />
                        <div className="carousel-caption d-none d-md-block">
                            <h5>First slide label</h5>
                            <p>
                                Nulla vitae elit libero, a pharetra augue mollis
                                interdum.
                            </p>
                        </div>
                    </div>
                    <div className="carousel-item">
                        <img
                            src="https://images.pexels.com/photos/383640/pexels-photo-383640.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
                            className="d-block w-100"
                            height="350"
                            alt="bg2"
                        />
                        <div className="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur
                                adipiscing elit.
                            </p>
                        </div>
                    </div>
                    <div className="carousel-item">
                        <img
                            src="https://images.pexels.com/photos/2101187/pexels-photo-2101187.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
                            className="d-block w-100"
                            height="350"
                            alt="bg3"
                        />
                        <div className="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>
                                Praesent commodo cursus magna, vel scelerisque
                                nisl consectetur.
                            </p>
                        </div>
                    </div>
                </div>
                <a
                    className="carousel-control-prev"
                    href="#carouselExampleCaptions"
                    role="button"
                    data-bs-slide="prev"
                >
                    <span
                        className="carousel-control-prev-icon"
                        aria-hidden="true"
                    ></span>
                    <span className="sr-only">Previous</span>
                </a>
                <a
                    className="carousel-control-next"
                    href="#carouselExampleCaptions"
                    role="button"
                    data-bs-slide="next"
                >
                    <span
                        className="carousel-control-next-icon"
                        aria-hidden="true"
                    ></span>
                    <span className="sr-only">Next</span>
                </a>
            </div>
            <h3>This is Home Component</h3>
        </div>
    );
}

export default Home;
