**Astrocyte Heterogeneity in Neuronal Activity-Evoked Sodium and Bioenergetics**

Emerging evidence suggests that changes in sodium concentration (Naa) in astrocytes represent a unique form of excitability, tightly linked to ion dynamics, bioenergetics, neurotransmitter uptake, and neurovascular coupling. Our research reveals significant regional differences in Naa transients, with neocortical astrocytes exhibiting larger Naa amplitudes compared to hippocampal astrocytes.

To explore this heterogeneity, we've developed a detailed biophysical model that not only fits experimental Naa changes but also predicts key differences in calcium dynamics and ATP consumption. The model suggests that cortical astrocytes are more vulnerable to Na+ and Ca2+ overload under metabolic stress, primarily due to differential NMDA receptor expression. We validate these predictions with experimental data on glutamate-induced ATP changes in astrocytes.

This work provides deeper insights into astrocyte function and bioenergetics, with implications for understanding metabolic stress in the brain. Please use the following link to read the full paper
**https://www.frontiersin.org/journals/cellular-neuroscience/articles/10.3389/fncel.2023.1035553/full**


![image](https://github.com/user-attachments/assets/886b2579-b0bd-42f8-a136-93f5bee3d553)



# Astrocyte NMDA Heterogeneity Simulation

This Fortran program simulates the heterogeneity of NMDA receptor responses in astrocytes under different physiological or pathological conditions.

## File
- `Astrocyte_NMDA_heterogeneity.f90` — Main simulation code written in Fortran 90.

## Requirements

### Option 1: Intel Fortran Compiler
- Intel oneAPI or Intel Parallel Studio (includes `ifort`)

### Option 2: GNU Fortran Compiler
- `gfortran` (version 9+ recommended)

### Optional (for plotting or data analysis)
- Python with `numpy`, `matplotlib`, etc.

---

## Compilation & Execution

### Using Intel Fortran (`ifort`)

```bash
# Compile
ifort -O2 -o astro_sim Astrocyte_NMDA_heterogeneity.f90

# Run
./astro_sim

# Compile
gfortran -O2 -o astro_sim Astrocyte_NMDA_heterogeneity.f90

# Run
./astro_sim
