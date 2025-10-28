import streamlit as st
import requests

API_URL = "https://ps1622-Kisangpt.hf.space/ask"  # your FastAPI Space endpoint

st.set_page_config(page_title="🌾 KisanGPT", page_icon="🌱")

st.title("🌾 KisanGPT - Smart Agricultural Assistant")
st.write("Ask any question related to farming, fertilizers, or crops.")

question = st.text_area("Your Question:")
crop = st.text_input("Crop (optional):")

if st.button("Ask"):
    if not question.strip():
        st.warning("Please enter a question.")
    else:
        with st.spinner("Thinking..."):
            payload = {"question": question, "crop": crop or None}
            response = requests.post(API_URL, json=payload)
            if response.status_code == 200:
                data = response.json()
                st.success(data.get("answer", "No answer received"))
            else:
                st.error(f"Error: {response.status_code} - {response.text}")
