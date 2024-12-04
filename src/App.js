import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Welcome To Ashish website...!!
          This webiste is build using ReactJS Framework!!
        </p>
        <a
          className="App-link"
          href="https://ashishit.com/"
          target="_blank"
          rel="noopener noreferrer"
        >
         Visit Our Website
        </a>
      </header>
    </div>
  );
}

export default App;
