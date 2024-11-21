// Select DOM Elements
const habitForm = document.getElementById('add-habit-form');
const habitTitleInput = document.getElementById('habit-title');
const habitDescriptionInput = document.getElementById('habit-description');
const habitsContainer = document.getElementById('habits-container');

// Initialize Habits Array
let habits = [];

// Event Listener for Form Submission
habitForm.addEventListener('submit', function (e) {
  e.preventDefault(); // Prevent Page Reload

  // Get Form Values
  const title = habitTitleInput.value.trim();
  const description = habitDescriptionInput.value.trim();

  if (title && description) {
    // Add Habit to the Array
    const newHabit = {
      id: Date.now(),
      title,
      description,
      streak: 0, // Default streak value
    };
    habits.push(newHabit);

    // Clear Form Fields
    habitTitleInput.value = '';
    habitDescriptionInput.value = '';

    // Render Updated Habits List
    renderHabits();
  }
});

// Function to Render Habits
function renderHabits() {
  // Clear Container
  habitsContainer.innerHTML = '';

  // Render Each Habit
  habits.forEach(habit => {
    const habitCard = document.createElement('div');
    habitCard.classList.add('habit-card');

    habitCard.innerHTML = `
      <h3>${habit.title}</h3>
      <p>${habit.description}</p>
      <p><strong>Streak:</strong> ${habit.streak} days</p>
      <button onclick="incrementStreak(${habit.id})">+1 Day</button>
      <button onclick="deleteHabit(${habit.id})">Delete</button>
    `;

    habitsContainer.appendChild(habitCard);
  });
}

// Function to Increment Habit Streak
function incrementStreak(id) {
  const habit = habits.find(habit => habit.id === id);
  if (habit) {
    habit.streak += 1;
    renderHabits();
  }
}

// Function to Delete a Habit
function deleteHabit(id) {
  habits = habits.filter(habit => habit.id !== id);
  renderHabits();
}
