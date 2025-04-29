```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Schizophrenia and Marijuana Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        #quiz-container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        button {
            padding: 10px 20px;
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        #feedback {
            margin-top: 10px;
            font-weight: bold;
        }
        #score {
            margin-top: 20px;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div id="quiz-container">
        <h1>Schizophrenia and Marijuana Quiz</h1>
        <p id="question"></p>
        <div id="options"></div>
        <p id="feedback"></p>
        <p id="score"></p>
    </div>

    <script>
        const questions = [
            {
                question: "What is a common symptom of schizophrenia mentioned in our presentation?",
                options: ["Fever", "Delusions", "Weight gain", "Nausea"],
                correct: 1,
                feedback: "Correct! Delusions are a positive symptom of schizophrenia (Slide 2).",
                wrong: "Incorrect. Delusions, like false beliefs, are common in schizophrenia (Slide 2)."
            },
            {
                question: "Which brain area does marijuana’s THC affect, per our slides?",
                options: ["Cerebellum", "Prefrontal cortex", "Spinal cord", "Pituitary gland"],
                correct: 1,
                feedback: "Correct! THC affects the prefrontal cortex, impacting decision-making (Slide 4).",
                wrong: "Incorrect. THC targets the prefrontal cortex via CB1 receptors (Slide 4)."
            },
            {
                question: "Who is most at risk for schizophrenia from marijuana use?",
                options: ["Elderly users", "Occasional adult users", "Teens with family history", "Non-users"],
                correct: 2,
                feedback: "Correct! Teens with a family history are at high risk (Slide 6).",
                wrong: "Incorrect. Early use and family history increase risk most (Slide 6)."
            },
            {
                question: "How much more likely are marijuana users to develop psychosis?",
                options: ["No risk", "2–5 times", "10 times", "50 times"],
                correct: 1,
                feedback: "Correct! Users are 2–5 times more likely to develop psychosis (Slide 9).",
                wrong: "Incorrect. Research shows a 2–5x higher psychosis risk (Slide 9)."
            },
            {
                question: "What can help prevent marijuana-related schizophrenia?",
                options: ["Daily use", "Delaying first use", "High-THC strains", "Early teen use"],
                correct: 1,
                feedback: "Correct! Delaying use past teen years lowers risk (Slide 11).",
                wrong: "Incorrect. Delaying first use is a key prevention strategy (Slide 11)."
            }
        ];

        let currentQuestion = 0;
        let score = 0;

        function loadQuestion() {
            const q = questions[currentQuestion];
            document.getElementById('question').innerText = q.question;
            const optionsDiv = document.getElementById('options');
            optionsDiv.innerHTML = '';
            q.options.forEach((option, index) => {
                const btn = document.createElement('button');
                btn.innerText = option;
                btn.onclick = () => checkAnswer(index);
                optionsDiv.appendChild(btn);
            });
            document.getElementById('feedback').innerText = '';
        }

        function checkAnswer(selected) {
            const q = questions[currentQuestion];
            const feedback = document.getElementById('feedback');
            if (selected === q.correct) {
                score++;
                feedback.innerText = q.feedback;
            } else {
                feedback.innerText = q.wrong;
            }
            currentQuestion++;
            if (currentQuestion < questions.length) {
                setTimeout(loadQuestion, 1500);
            } else {
                document.getElementById('question').innerText = 'Quiz Complete!';
                document.getElementById('options').innerHTML = '';
                document.getElementById('score').innerText = `Your score: ${score}/${questions.length}`;
                document.getElementById('feedback').innerText = 'Thanks for playing! Discuss: Why do teens face higher risks?';
            }
        }

        loadQuestion();
    </script>
</body>
</html>
```
