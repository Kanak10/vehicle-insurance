from src.pipline.training_pipeline import TrainPipeline
import os
from dotenv import load_dotenv

load_dotenv(override=True)
pipline = TrainPipeline()
pipline.run_pipeline()