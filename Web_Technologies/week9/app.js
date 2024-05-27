firebase.initializeApp({
    apiKey: "AIzaSyA7oht-0Marw3uA-AKTpGEUq0WAvYLVmh4",
    authDomain: "hhyu-87d96.firebaseapp.com",
    projectId: "hhyu-87d96"
});

const db = firebase.firestore();

function addTask() {
    const taskInput = document.getElementById('task-input').value;
    const task = taskInput.value.trim();
    if (task !== '') {
    db.collection('tasks').add({
        task: task,
        timestamp: firebase.firestore.FieldValue.serverTimestamp(),
    });
    taskInput.value = '';
    }
}

function renderTasks() {
    const tasksList = document.getElementById('tasks-list');
    const taskItem = document.createElement('li');
    taskItem.className = 'task-item';
    taskItem.innerHTML = `
        <span class="task-text"></span>
        <button onclick="deleteTask('${doc.id}')">Delete</button>
    `;
    tasksList.appendChild(taskItem);
    });
    });
}

db.collection('tasks').orderBy('timestamp', 'desc').onSnapshot(() => {
    const changes = snapshot.docChanges();
    changes.forEach(cahnge => {
        if (change.type === 'added') {
            renderTasks(change.doc);
        }
    });
});

function deleteTask(id) {
    db.collection('tasks').doc(id).delete();
}