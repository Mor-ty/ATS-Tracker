# ATS Tracker Using Google Gemini API

This project is an Applicant Tracking System (ATS) tracker built using the Google Gemini API and Streamlit. The tool allows users to upload their CV and input a job description. It then leverages the gemini-1.5-flash model to provide valuable insights about the CV, including a percentage match score for the job profile.

## Features

- *CV Upload*: Easily upload your CV in PDF or DOCX format.
- *Job Description Input*: Add a job description against which the CV is evaluated.
- *Google Gemini Integration*: The tool uses the gemini-1.5-flash model for powerful natural language processing and insights.
- *CV Analysis*: Get insights on how well your CV aligns with the job description.
- *Match Percentage*: The tool calculates a percentage match score between the CV and the job profile.
- *Streamlit Interface*: User-friendly and interactive interface built with Streamlit.

## How It Works

1. *Upload Your CV*: Upload your resume in supported formats.
2. *Add Job Description*: Provide a job description for analysis.
3. *API Call*: The system makes an API call to the gemini-1.5-flash model.
4. *Receive Insights*: Get real-time insights, including strengths, weaknesses, and relevant suggestions.
5. *Percentage Match*: View the match percentage to understand how well your CV fits the job profile.

## Installation

1. Clone the repository:

    bash
    git clone https://github.com/Mor-ty/ATS-Tracker.git
    

2. Navigate to the project directory:

    bash
    cd ats-tracker-gemini
    

3. Install the required dependencies:

    bash
    pip install -r requirements.txt
    

4. Run the Streamlit app:

    bash
    streamlit run app.py
    

## API Configuration

Make sure to add your API key and other configuration details in a .env file or directly in the code.

## Dependencies

- Python 3.8+
- Streamlit
- Requests
- Google Gemini API (gemini-1.5-flash)

## Usage

1. Open the Streamlit app in your browser after running the above commands.
2. Upload your CV and add the job description.
3. Click on the 'Analyze' button to receive insights and match percentage.


## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or feature suggestions.


Feel free to reach out for any questions or support!
