import React from 'react'
import Profile from '../assets/Profile.jpg'
import Leftside from './leftside'
const ProfilePart = () => {
    return (
        <>
            <div className=' px-4  border-solid fixed max-1115:flex max-720:flex '>
                <Leftside />
            </div>
            <div className='flex flex-row max-w-[80%] ml-[15%] absolute max-1115:justify-center max-1115:items-center max-1115:flex mt-[50px]'>
                <div className='Profile max-w-[80%] border border-solid my-[10px] mx-auto h-fit ' >
                    <div className='profileFrame flex flex-row items-center gap-10'>
                        <div className='profilePic border border-solid max-w-[17%] '>
                            <img src={Profile} alt='profile image' className=' rounded-full object-contain'></img>
                        </div>

                        <div className="profiledata flex flex-col border border-solid items-start w-max gap-3">
                            <h1 className='font-semibold text-2xl '>Cybernerd</h1>
                            <div className="profileinfo flex flex-row justify-evenly gap-4">
                                <p>3 Uploads</p>
                                <p>10 Followers</p>
                                <p>10 Following</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}

export default ProfilePart;