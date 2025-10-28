# 🌾 KisanGPT — AI-Powered Agricultural Assistant

**KisanGPT** is an intelligent agricultural assistant that helps farmers get accurate, crop-specific answers to their queries — in simple Hindi.  
It combines **Retrieval-Augmented Generation (RAG)** with **Google Gemini** to provide contextual, trustworthy, and localized agricultural advice.

This repository contains the **Streamlit frontend** of KisanGPT — the web interface that interacts with the **FastAPI backend** hosted on Hugging Face Spaces.

---

## 🌱 What is KisanGPT?

KisanGPT is designed to act as a digital **Krishi Sahayak (farm assistant)**.  
It allows farmers (or anyone in the agri-domain) to ask queries about:

- 🌾 **Crop cultivation & best practices**  
- 💧 **Irrigation, soil, and climate conditions**  
- 🧪 **Fertilizer dosage recommendations (based on NPK ratios)**  
- 🦠 **Common pest and disease control methods**  
- 🏛️ **Official advisories & information from KCC (Kisan Call Center) documents**

The backend system retrieves verified agricultural data from:

- 🗂️ KCC (Government Call Center) QA dataset  
- 📄 Uploaded research/PDF knowledge documents  
- ⚗️ Fertilizer NPK database with ideal nutrient ratios per crop  

These retrieved documents are combined using **RAG (Retrieval-Augmented Generation)** and passed to **Gemini 2.5 Flash** for generating final responses in Hindi.

---

## ⚙️ How KisanGPT Works

### 🔹 1. Query Understanding
The user enters a question — for example:  
> “गेहूं में यूरिया की मात्रा कितनी डालनी चाहिए?”

KisanGPT automatically detects:
- The crop (e.g., **wheat**)  
- The intent (**fertilizer-related**)  

### 🔹 2. Document Retrieval (RAG)
The query is embedded using **SentenceTransformers (`MiniLM-L6-v2`)**, and relevant content is fetched from:
- **KCC dataset** (stored in Qdrant Cloud)  
- **PDF agricultural reference documents**

### 🔹 3. Context + LLM Response
The context is merged with any detected fertilizer requirements,  
then passed to **Gemini 2.5 Flash** which generates a concise, Hindi explanation.

---

## 🧩 Tech Stack

| Component | Technology |
|------------|------------|
| **Frontend** | Streamlit |
| **Backend API** | FastAPI (deployed on Hugging Face) |
| **LLM** | Google Gemini 2.5 Flash |
| **Vector DB** | Qdrant Cloud |
| **Embeddings** | SentenceTransformers (`MiniLM-L6-v2`) |
| **Language** | Hindi |
| **Deployment** | Streamlit Cloud / Docker |

---

## 🖥️ Run Locally (Frontend Only)

Follow these steps to run the Streamlit interface locally while using the hosted backend:

### 1️⃣ Clone this repository
```bash
git clone https://github.com/Prateeks16/KisanGPT.git
```

### 2️⃣ Install dependencies

```bash
pip install -r requirements.txt
```

### 3️⃣ Run Streamlit app

```bash
streamlit run main.py
```

Now open 👉 [http://localhost:8501](http://localhost:8501)

---

## 🔗 Backend API (Hugging Face)

The Streamlit frontend connects to the FastAPI backend hosted here:

```
https://huggingface.co/spaces/ps1622/Kisangpt
```

If you want to connect to a **local backend** instead (e.g., running via Docker),
edit the API endpoint in `main.py`:

```python
API_URL = "http://localhost:/ask"
```

---

## 🐳 Run with Docker (Optional)

You can also containerize and run the app directly:

```bash
docker build -t kisangpt-ui .
docker run -p 8501:8501 kisangpt-ui
```

Access it at 👉 [http://localhost:8501](http://localhost:8501)

---

## 📜 License

This project is released under the **MIT License**.
You are free to use, modify, and distribute it for both academic and commercial purposes.

---

## 👨‍💻 Author

**Prateek Sahu**
Computer Science Student | Data Science & AI Enthusiast
🔗 [GitHub](https://github.com/Prateeks16)
 
