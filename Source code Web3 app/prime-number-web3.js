const { Web3 } = require('web3');


const providerUrl = 'wss://mainnet.infura.io/v3/YOUR_INFURA_PROJECT_ID';

// Create a new Web3 instance with the provider URL
const web3 = new Web3(providerUrl);


// Function to check if a number is prime
function isPrime(num) {
  if (num <= 1) return false;
  if (num <= 3) return true;
  if (num % 2 === 0 || num % 3 === 0) return false;
  let i = 5;
  while (i * i <= num) {
    if (num % i === 0 || num % (i + 2) === 0) return false;
    i += 6;
  }
  return true;
}

// Function to interact with the blockchain
async function interactWithBlockchain(primeNumber) {
  try {
    const accounts = await web3.eth.getAccounts();
    const firstAccount = accounts[0];
    console.log('Sending transaction with prime number:', primeNumber);
    
    const txHash = await web3.eth.sendTransaction({
      from: firstAccount,
      to: '0x...', 
      value: primeNumber, 
    });
    console.log('Transaction hash:', txHash);
  } catch (error) {
    console.error('Error interacting with blockchain:', error);
  }
}


const numberToCheck = 3243894821803240283438417;

if (isPrime(numberToCheck)) {
  console.log(`${numberToCheck} is a prime number.`);
  interactWithBlockchain(numberToCheck); 
} else {
  console.log(`${numberToCheck} is not a prime number.`);
}
