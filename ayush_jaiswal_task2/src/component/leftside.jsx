import React, { useState } from 'react'
import instalogo from '../assets/instalogo.png'
import profile from '../assets/profile.jpg'
import HomeIcon from '@mui/icons-material/Home';
import SearchIcon from '@mui/icons-material/Search';
import ExploreIcon from '@mui/icons-material/Explore';
import MovieCreationSharpIcon from '@mui/icons-material/MovieCreationSharp';
import MailOutlineIcon from '@mui/icons-material/MailOutline';
import FavoriteBorderIcon from '@mui/icons-material/FavoriteBorder';
import AddBoxIcon from '@mui/icons-material/AddBox';
import MenuIcon from '@mui/icons-material/Menu';

const Leftside = () => {
    return (
        <div className=' fixed h-screen w-[15%]  border-[#e1e1e1] border-r-2  '>
            <div className='w-[110px] h-[37px] ml-1 mr-4 py-12 justify-center items-center max-1115:hidden '>
                <img src={instalogo} alt='instagram logo'></img>
            </div>

            {/* max-720:flex max-720:flex-row max-720:place-items-end max-720:justify-start */}

            <div className='flex flex-col my-10 pr-4  '>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2 px-1' >
                    <HomeIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>Home</div>
                </div>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2 px-1' >
                    <SearchIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>Search</div>
                </div>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2  px-1' >
                    <ExploreIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>Explore</div>
                </div>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2 px-1' >
                    <MovieCreationSharpIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>Reels</div>
                </div>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2 px-1' >
                    <MailOutlineIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>Messages</div>
                </div>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2 px-1' >
                    <FavoriteBorderIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>Notifications</div>
                </div>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2 px-1' >
                    <AddBoxIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>Create</div>
                </div>
                <div className='flex flex-row rounded mr-2 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-2 px-1' >
                    <img src={profile} alt='profile pic' className='h-8 w-8 rounded-full mr-6 ' ></img>
                    <div className='font-semibold max-1115:hidden'>Profile</div>
                </div>

            </div>
            <div className='mt-16 mr-2' >
                <div className='flex flex-row rounded mr-4 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-3 px-1' >
                    <img src={profile} alt='profile pic' className='h-8 w-8 rounded-full mr-6 ' ></img>
                    <div className='font-semibold max-1115:hidden'>Threads</div>
                </div>
                <div className='flex flex-row rounded mr-4 hover:bg-[#ededed] cursor-pointer h-9 items-center py-2 mb-3 px-1' >
                    <MenuIcon sx={{ fontSize: "30px", margin: "0 30px 0 0" }} />
                    <div className='font-semibold max-1115:hidden'>More</div>
                </div>
            </div>
        </div>
    )
}

export default Leftside