import { useState } from "react";
import { BrowserProvider, Contract } from "ethers";

const contractAddress = "0x5FbDB2315678afecb367f032d93F642f64180aa3";
const abi = [
    {
        "inputs": [
            { "internalType": "string", "name": "_greet", "type": "string" }
        ],
        "stateMutability": "nonpayable",
        "type": "constructor"
    },
    {
        "inputs": [],
        "name": "greet",
        "outputs": [
            { "internalType": "string", "name": "", "type": "string" }
        ],
        "stateMutability": "view",
        "type": "function"
    },
    {
        "inputs": [
            { "internalType": "string", "name": "_newGreet", "type": "string" }
        ],
        "name": "setGreet",
        "outputs": [],
        "stateMutability": "nonpayable",
        "type": "function"
    }
];

function App() {
    const [greeting, setGreeting] = useState("");
    const [newGreeting, setNewGreeting] = useState("");

    const fetchGreeting = async () => {
        try {
            const provider = new BrowserProvider(window.ethereum);
            const contract = new Contract(contractAddress, abi, provider);
            const greet = await contract.greet();
            setGreeting(greet);
        } catch (error) {
            console.error("Error fetching greeting:", error);
        }
    };

    const updateGreeting = async () => {
        try {
            const provider = new BrowserProvider(window.ethereum);
            const signer = await provider.getSigner();
            const contract = new Contract(contractAddress, abi, signer);
            const tx = await contract.setGreet(newGreeting);
            await tx.wait();
            alert("Greeting updated!");
        } catch (error) {
            console.error("Error updating greeting:", error);
        }
    };

    return (
        <div>
            <h1>Basic Functions Frontend</h1>
            <button onClick={fetchGreeting}>Get Greeting</button>
            <p>Greeting: {greeting}</p>
            <input
                type="text"
                placeholder="New greeting"
                value={newGreeting}
                onChange={(e) => setNewGreeting(e.target.value)}
            />
            <button onClick={updateGreeting}>Set Greeting</button>
        </div>
    );
}

export default App;
