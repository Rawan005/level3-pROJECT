init: 
	kubectl create -f role.yaml -n test 
	kubectl create -f secret.yaml  -n test 
	kubectl create -f serviceA.yaml -n test 
	kubectl create -f rbac.yaml -n test 
	kubectl create namespace test 
	kubectl create namespace prod 
	kubectl create namespace logging 
	kubectl create namespace monitor
front-end-run: 
	kubectl create -f front-end/resource.yaml -n test
	kubectl create -f front-end/task.yaml -n test
	kubectl create -f front-end/task-dep.yaml -n test
	kubectl create -f front-end/pipeline.yaml -n test
	kubectl create -f front-end/pipelineRun.yaml -n test
queue-master-run:	
	kubectl create -f queue-master/tekton/resource.yaml -n test  
	 kubectl create -f queue-master/tekton/task.yaml -n test	
	 kubectl create -f queue-master/tekton/task-dep.yaml -n test
	kubectl create -f queue-master/tekton/pipeline.yaml -n test
	 kubectl create -f queue-master/tekton/pipelineRun.yaml -n test
catalogue-db-run:
	kubectl create -f catalogue/tekton-db/resource.yaml -n test 
	kubectl create -f catalogue/tekton-db/task.yaml -n test
	kubectl create -f catalogue/tekton-db//task-dep.yaml -n test
	kubectl create -f catalogue/tekton-db//pipeline.yaml -n test
	kubectl create -f catalogue/tekton-db//pipelineRun.yaml -n test
catalogue-run:
	kubectl create -f catalogue/resource.yaml -n test 
	kubectl create -f catalogue/task.yaml -n test
	kubectl create -f catalogue/task-dep.yaml -n test
	kubectl create -f catalogue/pipeline.yaml -n test
	kubectl create -f catalogue/pipelineRun.yaml -n test
user-db-run:
	kubectl create -f user/tekton-db/resource.yaml -n test 
	kubectl create -f user/tekton-db/task.yaml -n test
	kubectl create -f user/tekton-db/task-dep.yaml -n test
	kubectl create -f user/tekton-db/pipeline.yaml -n test
	kubectl create -f user/tekton-db/pipelineRun.yaml -n test
user-run:
	kubectl create -f user/resource.yaml -n test 
	kubectl create -f user/task.yaml -n test	
	kubectl create -f user/task-dep.yaml -n test
	kubectl create -f user/pipeline.yaml -n test
	kubectl create -f user/pipelineRun.yaml -n test
carts-run:
	kubectl create -f carts/tekton/resource.yaml -n test 
	kubectl create -f carts/tekton/task.yaml -n test        
	kubectl create -f carts/tekton/task-dep.yaml -n test
	kubectl create -f carts/tekton/pipeline.yaml -n test
	kubectl create -f carts/tekton/pipelineRun.yaml -n test
load-test-run:
	kubectl create -f load-test/tekton/resource.yaml -n test 
	kubectl create -f load-test/tekton/task.yaml -n test        
	kubectl create -f load-test/tekton/task-dep.yaml -n test
	kubectl create -f load-test/tekton/pipeline.yaml -n test
	kubectl create -f load-test/tekton/pipelineRun.yaml -n test
payment-run:
	kubectl create -f payment/resource.yaml -n test 
	kubectl create -f payment/task.yaml -n test        
	kubectl create -f payment/task-dep.yaml -n test	
	kubectl create -f payment/pipeline.yaml -n test
	kubectl create -f payment/pipelineRun.yaml -n test
order-run:
	kubectl create -f orders/resource.yaml -n test 
	kubectl create -f orders/task.yaml -n test        
	kubectl create -f orders/task-dep.yaml -n test 
	kubectl create -f orders/pipeline.yaml -n test	
	kubectl create -f orders/pipelineRun.yaml -n test
shipping-run:
	kubectl create -f shipping/resource.yaml -n test 
	kubectl create -f shipping/task.yaml -n test        	
	kubectl create -f shipping/task-dep.yaml -n test
	kubectl create -f shipping/pipeline.yaml -n test
	kubectl create -f shipping/pipelineRun.yaml -n test
e2e-run: 
	kubectl create -f e2e-js-test/resource.yaml -n test
	kubectl create -f e2e-js-test/e2e-task-build-push.yaml -n test
	kubectl create -f e2e-js-test/e2e-task-run.yaml -n test 
	kubectl create -f e2e-js-test/pipeline.yaml -n test
	kubectl create -f e2e-js-test/pipelineRun.yaml -n test
grafana:
	cd grafana &&
	./grafana.sh
elf:
	cd elf &&
	./elf.sh
