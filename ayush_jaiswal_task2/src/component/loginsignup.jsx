import React, { useState } from 'react';
import Home from './home';
import { NavLink } from 'react-router-dom';
function LoginSignup() {
    const [isLogin, setIsLogin] = useState(true);

    const toggleForm = () => setIsLogin(!isLogin);

    return (
        <div className="flex justify-center items-center h-screen w-screen bg-gray-100">
            <div className="bg-white p-8 rounded shadow-lg w-full max-w-md">
                <h2 className="text-2xl font-semibold flex justify-center mb-4">{isLogin ? 'Login' : 'Sign Up'}</h2>
                <form >
                    <input
                        type="email"
                        placeholder="Email"
                        className="border p-2 mb-4 w-full rounded-full"
                        required
                    />
                    <input
                        type="password"
                        placeholder="Password"
                        className="border p-2 mb-4 w-full rounded-full"
                        required
                    />
                    {!isLogin && (
                        <>
                            <input
                                type="text"
                                placeholder="Name"
                                className="border p-2 mb-4 w-full rounded-full"
                                required />
                            <input
                                type="text"
                                placeholder="Username"
                                className="border p-2 mb-4 w-full rounded-full"
                                required />
                            <input
                                type="password"
                                placeholder="Confirm Password"
                                className="border p-2 mb-4 w-full rounded-full"
                                required />
                                
                        </>
                    )}
                    <button type="submit" className="bg-blue-500 text-white py-2 rounded-full w-full ">
                        {isLogin ? 'Login' : 'Sign Up'}
                    </button>
                </form>
                <button
                    onClick={toggleForm}
                    className="text-blue-500 mt-4 underline "   >
                    {isLogin ? 'Need an account? Sign up' : 'Already have an account? Login'}
                </button>
            </div>
        </div>
    );
}

export default LoginSignup;
