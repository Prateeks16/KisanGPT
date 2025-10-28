# 🌾 KisanGPT

KisanGPT is an open-source smart agricultural advisor that uses retrieval-augmented generation (RAG) on crop-centric data (KCC + PDF docs) and integrates with the SentenceTransformer model + Google GenerativeAI (Gemini) plus a vector store Qdrant backend.  
It aims to help farmers by answering queries related to crops, fertilizers, pests, diseases and more — in Hindi and English.

---

## 🚀 Features

- Understands natural language queries like _“गेहूं के लिए उर्वरक की मात्रा बताएं”_ or _“What fertilizer should I use for paddy?”_  
- Performs crop-detection (from query or optional hint)  
- Retrieves relevant context from a large dataset (KCC master + additional PDF docs) via vector search  
- Optionally provides fertilizer recommendations based on crop  
- Provides answers in actionable Hindi sentences via LLM  
- Frontend built with Streamlit for easy user interaction

---

## 🧱 Project Structure

