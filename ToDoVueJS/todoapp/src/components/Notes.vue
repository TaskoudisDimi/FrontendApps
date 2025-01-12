<template>
  <!-- The main container that holds everything within. -->
  <div class="app-container">
    <!-- Displays the title, which is "Todo App". -->
    <h1 class="app-title">{{ title }}</h1>

    <!-- Input Form -->
    <!-- Holds the input fields and the add button. -->
    <div class="input-container">
      <!-- An input field where the user can type the note's description. -->
      <input
        v-model="newNote"
        placeholder="Enter a new note"
        class="note-input"
      />
      <!-- An input field for selecting a date. -->
      <input
        v-model="newNoteDate"
        placeholder="Enter a new Date"
        type="date"
        class="date-input"
      />
      <!-- The button to add a new note, which triggers the addNote method. -->
      <button @click="addNote" class="add-button">Add Note</button>
    </div>

    <!-- Displays the list of notes. -->
    <!-- Notes List -->
    <ul class="notes-list">
      <!-- Loops through each note in the notes array and displays it. -->
      <li v-for="note in notes" :key="note.id" class="note-item">
        <div>
          <span class="note-description">{{ note.description }}</span>
          <span class="note-date">{{ note.date }}</span>
        </div>
        <!-- A button to delete each note, which triggers the deleteNote method. -->
        <button @click="deleteNote(note.id)" class="delete-button">Delete</button>
      </li>
    </ul>
  </div>
</template>

<script>
//  Imports Vue's reactive ref and lifecycle hook onMounted to manage reactive data and lifecycle behavior.
import { ref, onMounted } from "vue";
// Imports necessary functions from Firebase for handling Firestore (database) operations.
import { collection, getDocs, addDoc, deleteDoc, doc } from "firebase/firestore";
// Imports the Firebase Firestore instance from the firebase.js configuration file.
import { db } from "../firebase";

// This is a Vue component setup function, where all reactive data and methods are defined.
export default {
  name: "TodoNotes",
  setup() {
    // Creates a reactive reference to the title, "Todo App".
    const title = ref("Todo App");
    // Initializes an empty reactive array to store the notes.
    const notes = ref([]);
    // Initializes a reactive reference for the new note’s description.
    const newNote = ref("");
    // Initializes a reactive reference for the new note’s date.
    const newNoteDate = ref(""); // For the custom date input

    // Fetches data from Firestore and updates the notes array.
    const refreshData = async () => {
      notes.value = [];
      try {
        // References the "Notes" collection in Firestore.
        const querySnapshot = await getDocs(collection(db, "Notes"));
        // Iterates over each document in the collection, fetching data (description and date).
        querySnapshot.forEach((doc) => {
          const data = doc.data();
          // Adds each note with its description and formatted date to the notes array.
          notes.value.push({
            description: data.Description,
            date: data.Date
              ? data.Date.toDate().toLocaleDateString()
              : "No Date Available", // Format the date
            id: doc.id,
          });
        });
      } catch (error) {
        console.error("Error fetching notes: ", error);
      }
    };

    // Adds a new note to Firestore.
    const addNote = async () => {
      // Checks if the note description is empty.
      if (newNote.value.trim() === "") {
        alert("Note description cannot be empty!");
        return;
      }
      // Ensures a date is selected before adding the note.
      if (newNoteDate.value === "") {
        alert("Please select a date for the note!");
        return;
      }
      try {
        // Sends the new note to the Firestore database with the description and selected date.
        await addDoc(collection(db, "Notes"), {
          Description: newNote.value.trim(),
          Date: new Date(newNoteDate.value), // Use the selected date
        });
        newNote.value = ""; // Clear the description input
        newNoteDate.value = ""; // Clear the date input
        refreshData(); // Refresh the notes list
      } catch (error) {
        console.error("Error adding note: ", error);
      }
    };

    // Deletes a note from Firestore.
    const deleteNote = async (id) => {
      try {
        // Deletes the note with the provided id.
        await deleteDoc(doc(db, "Notes", id));
        refreshData();
      } catch (error) {
        console.error("Error deleting note: ", error);
      }
    };

    // Refresh the data every 15 seconds
    setInterval(() => {
      refreshData();
    }, 10000); // 10 seconds

    // The lifecycle hook that triggers refreshData() when the component is mounted.
    onMounted(() => {
      refreshData();
    });

    return { title, notes, newNote, newNoteDate, addNote, deleteNote };
  },
};
</script>
<style scoped>
/* Global Styles */
.app-container {
  max-width: 90%;
  margin: 20px auto;
  padding: 20px;
  background-color: #f9f9f9;
  border-radius: 10px;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  text-align: center;
}

/* Title Styles */
.app-title {
  font-size: 2.5rem;
  margin-bottom: 20px;
  color: #333;
}

/* Input Container */
.input-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 10px; /* Space between elements */
  margin-bottom: 20px;
}

/* Input Field Styles */
.note-input,
.date-input {
  flex: 1;
  min-width: 150px;
  padding: 10px;
  font-size: 1rem;
  border: 2px solid #ddd;
  border-radius: 5px;
  outline: none;
  transition: border-color 0.3s;
}

.note-input:focus,
.date-input:focus {
  border-color: #007bff;
}

/* Add Button Styles */
.add-button {
  padding: 10px 20px;
  font-size: 1rem;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s, transform 0.2s;
}

.add-button:hover {
  background-color: #0056b3;
}

.add-button:active {
  transform: scale(0.98);
}

/* Notes List */
.notes-list {
  list-style-type: none;
  padding: 0;
}

.note-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #ffffff;
  padding: 10px 15px;
  margin-bottom: 10px;
  border: 1px solid #ddd;
  border-radius: 5px;
  transition: box-shadow 0.3s;
}

.note-item:hover {
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Note Description */
.note-description {
  font-size: 1rem;
  color: #333;
}

.note-date {
  font-size: 0.8rem;
  color: #666;
  margin-left: 10px;
}

/* Delete Button */
.delete-button {
  padding: 5px 10px;
  font-size: 0.9rem;
  color: white;
  background-color: #dc3545;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s, transform 0.2s;
}

.delete-button:hover {
  background-color: #c82333;
}

.delete-button:active {
  transform: scale(0.98);
}

/* Responsive Design */
@media (max-width: 768px) {
  .app-title {
    font-size: 2rem;
  }

  .input-container {
    flex-direction: column;
    align-items: stretch;
  }

  .note-input,
  .date-input {
    min-width: 100%; /* Make inputs full width on small screens */
    margin-bottom: 10px;
  }

  .add-button {
    width: 100%; /* Make button full width */
  }

  .note-item {
    flex-direction: column;
    align-items: flex-start;
  }

  .note-description,
  .note-date {
    display: block;
    margin-bottom: 5px;
  }

  .delete-button {
    align-self: flex-end; /* Align delete button to the right */
  }
}
</style>

