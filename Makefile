.PHONY: help
help:
	@echo "\nmake help starting."
	@echo "Make targets are:"
	@echo "  make help - shows this message"
	@echo "  make install - Installs all the package."
	@echo "  make opencv - Installs Opencv-3.3."
	@echo "  make dependencies - Installs all the dependencies for linux."
	@echo "  make keras - Installs keras with tensorflow"


.PHONY: install
install: prereqs opencv dependencies keras
	@echo "\nmake all install starting."


.PHONY: prereqs
prereqs:
	@chmod +x install_opencv.sh
	@chmod +x install_dependencies.sh
	@chmod +x install_tf_keras.sh

.PHONY: opencv
opencv: prereqs 
	@echo "\nmake opencv install starting."
	./install_opencv.sh

.PHONY: dependencies
dependencies: prereqs
	@echo "\nmake linux dependencies install starting."
	./install_dependencies.sh

.PHONY: keras
keras: prereqs
	@echo "\nmake keras install starting."
	./install_tf_keras.sh
