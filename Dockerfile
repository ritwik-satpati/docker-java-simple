# Pull base images which tools and libraries are required
FROM openjdk:26-oraclelinux9

# Create a work directory where all app code will be stored
WORKDIR /app

# Copy source code from host machine to container work directory
COPY . .
#COPY src/Main.java app/Main.java

# Compile the application code
RUN javac src/Main.java
#RUN javac Main.java

# Run the application
CMD ["java","-cp","src","Main"]  # "-cp" is changing the path to "src"
#CMD ["java","Main"]              # Default entry point, when docker run used. Can be changed.
#ENTRYPOINT ["java","Main"]       # Define the entry point, when docker run used. Cannot be changed.