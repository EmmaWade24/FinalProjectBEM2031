# Define file names
SRC = FinalProject.qmd
OUTPUT_PDF = FinalProject.pdf

# Default target
all: $(OUTPUT_PDF)

# Rule to generate PDF from Quarto markdown file
$(OUTPUT_PDF): $(SRC)
	quarto render $(SRC) --to pdf

# Clean up generated files
clean:
	rm -f $(OUTPUT_PDF)

# Force rebuild
force:
	quarto render $(SRC) --to pdf --execute
