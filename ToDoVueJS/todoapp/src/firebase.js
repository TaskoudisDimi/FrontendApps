import { initializeApp } from "firebase/app";
import { getFirestore } from "firebase/firestore";

const firebaseConfig = {
    apiKey: "AIzaSyB7PF8D4mS6XoqBjTKFT054s4BwG40aUdE",
    authDomain: "assistantapp-2dff1.firebaseapp.com",
    projectId: "assistantapp-2dff1",
    storageBucket: "assistantapp-2dff1.firebasestorage.app",
    messagingSenderId: "651479797271",
    appId: "1:651479797271:web:448cac5b4f00edd0561652",
    measurementId: "G-LE0QJK4901",
  };
  
  const app = initializeApp(firebaseConfig);
  const db = getFirestore(app);
  
  export { db };