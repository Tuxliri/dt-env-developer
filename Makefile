DT_ENV_DEVELOPER ?= .

all:

	echo "Use 'make setup' to initialize the environment"

setup:
	$(MAKE) setup-develop-nodeps
	$(MAKE) setup-develop

setup-develop-nodeps:
	cd $(DT_ENV_DEVELOPER)/src/aido-agents && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/aido-analyze && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/aido-protocols && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-aido-ros-bridge && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges-cli && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges-runner && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges-server && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-docker-utils && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-serialization && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-shell && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-tokens && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-world && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/gym-duckietown   && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-build-utils && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-docker-utils && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/duckietown-utils && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/aido/challenge-aido_LF-experiment_manager && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/aido/challenge-aido_LF-simulator-gym && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/lib-dt-data-api && python3 setup.py develop --no-deps
	cd $(DT_ENV_DEVELOPER)/src/lib-dt-authentication && python3 setup.py develop --no-deps

setup-develop:
	cd $(DT_ENV_DEVELOPER)/src/aido-agents && python3 setup.py develop 
	cd $(DT_ENV_DEVELOPER)/src/aido-analyze && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/aido-protocols && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-aido-ros-bridge && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges-cli && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges-runner && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-challenges-server && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-docker-utils && python3 setup.py develop 
	cd $(DT_ENV_DEVELOPER)/src/duckietown-serialization && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-shell && python3 setup.py develop 
	cd $(DT_ENV_DEVELOPER)/src/duckietown-tokens && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/duckietown-world && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/src/gym-duckietown   && python3 setup.py develop

	cd $(DT_ENV_DEVELOPER)/src/duckietown-build-utils && python3 setup.py develop 
	cd $(DT_ENV_DEVELOPER)/src/duckietown-docker-utils && python3 setup.py develop 
	cd $(DT_ENV_DEVELOPER)/src/duckietown-utils && python3 setup.py develop 
	cd $(DT_ENV_DEVELOPER)/aido/challenge-aido_LF-experiment_manager  && python3 setup.py develop  
	cd $(DT_ENV_DEVELOPER)/aido/challenge-aido_LF-simulator-gym && python3 setup.py develop 
	cd $(DT_ENV_DEVELOPER)/src/lib-dt-authentication && python3 setup.py develop 





aido-staging:
	z-make -o db-staging --retries 3  AI-DO-5.mk 
aido-production: 
	z-make --retries 3 -o db-production AI-DO-5.mk 