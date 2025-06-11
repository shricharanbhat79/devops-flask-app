import sys
import os

# Add parent directory to the system path
sys.path.append(os.path.dirname(os.path.abspath(__file__)) + "/..")

from app import create_app

app = create_app()

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
