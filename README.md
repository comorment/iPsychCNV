# iPsychCNV
Docker and Singularity container for iPsychCNV 

iPsychCNV (https://biopsyk.dk/ipsychcnv/) is an R package software capable of finding copy number variation in amplified DNA from dried blood spots on Illumina SNP array.

This is to show how to run iPsychCNV via Docker and Singularity containers

# Docker

You can directly run

 ```
docker pull bayramalex/ipsychcnv:latest
 ```
 
alternatively you can download repo and build via dockerfile as
 
  ```
docker build -t ipsychcnv .
 ```


# Singularity

Singularity container can be directly built via Docker container as

```
singularity build ipsychcnv.sif docker://bayramalex/ipsychcnv:latest 
```
and run it as 

```
singularity shell --no-home ipsychcnv.sif 

R -e “library(iPsychCNV); LongRoi <- MakeLongMockSample(CNVDistance=1000, Type=c(0,1,2,3,4), Mean=c(-0.6, -0.3, 0.3, 0.6), Size=c(300, 600))”
```

You can also run this container as sandbox (https://sylabs.io/guides/3.0/user-guide/build_a_container.html#creating-writable-sandbox-directories)

```
singularity build --sandbox new.sif ipsychcnv.sif
singulairty shell --no-home --writable new.sif
```

# ToDo

More iPsychCNV specific commands
