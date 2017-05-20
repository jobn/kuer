import React, { Component } from 'react';
import Client from './Client';
import Rooms from './Rooms';

class App extends Component {
  state = {
    rooms: [],
  }

  componentDidMount() {
    Client.rooms((rooms) => {
      this.setState({
        rooms: rooms
      })
    });
  }

  render() {
    const { rooms } = this.state;

    return (
      <div className="App">
        <Rooms rooms={rooms} />
      </div>
    );
  }
}

export default App;
