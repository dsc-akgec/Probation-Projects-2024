import React from "react";
import profile from '../assets/profile.jpg'

const Create = () => {

    const loadfile = (event) => {
        var output = document.getElementById('output');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function(){
            URL.revokeObjectURL(output.src);
        };
    };

    return (
        <><div className="createPost max-w-[500px] m-3 m-auto border border-solid-[rgb(173,173,173)] rounded ">
            <div className="post-header flex flex-row justify-center ">
                <h4 className="m-1 m-auto ">Create new post</h4>
                <button id="post-btn" className="border-none text-[#339ce3] bg-none font-medium cursor-pointer mx-2 right-4 ">Share</button>
            </div>
            <div className="main-div border-t border-t-1 border-solid-[rgb(173,173,173)] m-[10px]">
                <img id="output" ></img>
                <input type="file" accept="image/*" onChange={(event) => { loadfile(event) }} />
            </div>
            <div className="details border-t border-t-1 border-solid-[rgb(173,173,173)]flex justify-center items-center ">
                <div className="card-header flex flex-row gap-[5px] items-center m-[5px]">
                    <div className="card-pic">
                        <img src={profile} className='w-10 rounded-full p-[2px] border-2 border-blue-600 cursor-pointer '></img>
                    </div>

                    <h5>Cybernerd</h5>
                </div>
                <textarea type="text" placeholder="type a caption" className="w-[90%] border-none focus:border-none focus:outline-none flex justify-center items-center"> </textarea>
            </div>
        </div >
        </>
    )
}

export default Create;