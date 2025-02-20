import axios from "axios";
import { useEffect, useState } from "react";
import { Link } from "react-router-dom";

function Users() {
    const [users, setUsers] = useState([]);

    const fetchData = async () => {
        try {
            const res = await axios.get("http://localhost:3000/users");
            // console.log(res);
            setUsers(res.data);
        } catch (error) {
            console.log(error);
        }
    };

    // deleting the user
    const deleteUser = async (id) => {
        try {
            const response = await axios.delete(
                `http://localhost:3000/users/${id}`
            );
            if (response.status == 200) {
                alert("User Deleted Successfully!");
                setUsers(users.filter((user) => user.id !== id));
            }
        } catch (error) {
            console.log(error);
        }
    };
    // This effect will execute only once when the component loads
    useEffect(() => {
        fetchData();
    }, []);

    return (
        <div>
            <h3>Users List</h3>
            <table className="table table-striped table-bordered table-dark table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Operations</th>
                    </tr>
                </thead>
                <tbody>
                    {users.map((user) => (
                        <tr>
                            <td>{user.id}</td>
                            <td>{user.name}</td>
                            <td>{user.email}</td>
                            <td>{user.address}</td>
                            <td>
                                <button
                                    className="btn btn-danger"
                                    onClick={() => deleteUser(user.id)}
                                >
                                    X
                                </button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}

export default Users;
