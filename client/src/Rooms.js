import React from 'react';

export default function Rooms(props) {
  const { rooms } = props;

  const roomItems = rooms.map((room, idx) => {
    const { nickname, number } = room;

    return (
      <div key={idx} className='room'>
        <span className='nickname'>{nickname}</span>
        <span className='number'>{number}</span>
      </div>
    )
  });

  return (
    <div className='rooms'>
      {roomItems}
    </div>
  )
};
