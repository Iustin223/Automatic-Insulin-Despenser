# Automatic-Insulin-Despenser

# MATLAB / Simulink Control System

## Overview
This project implements a control system using the Kessler and polls methods for automatic insulin administration.

## Features
- State-space regulator design
- Gain computation (k1, k2, k3) in MATLAB
- Full system simulation in Simulink
- Step response analysis

## Structure
- `matlab/` – scripts for coefficient calculation
- `simulink/` – system models
- `images/` – simulation result and scheme image (the image represents) for a polls method using a linear model that you will find in the documentation.

## Results
The system achieves stable response with controlled overshoot.

## Preview
![Block Diagram](images/block_diagram.png)
![Step Response](images/step_response.png)
