import numpy as np
import matplotlib.pyplot as plt

# Load the data with whitespace handling
glutamate_mediated_dap = np.genfromtxt('Data.csv', delimiter=None)

# Check the shape of the loaded data
print("Shape of glutamate_mediated_dap:", glutamate_mediated_dap.shape)

# If it's a 1D array, reshape it to be 2D (time and values)
if len(glutamate_mediated_dap.shape) == 1:
    glutamate_mediated_dap = glutamate_mediated_dap.reshape(-1, 2)

# Now, plot the data assuming it's 2D with columns (time, value)
plt.plot(glutamate_mediated_dap[:, 0], glutamate_mediated_dap[:, 1], label='Glutamate Mediated DAP', color='b')
plt.title('Glutamate Mediated DAP')
plt.xlabel('Time')
plt.ylabel('Amplitude')
plt.legend()
plt.show()
