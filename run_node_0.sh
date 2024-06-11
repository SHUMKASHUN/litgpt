
# for single machine trianing
#litgpt pretrain --config configs/openwebmath_mistral.yaml
# for multi-machine training
export GLOO_SOCKET_IFNAME='bond0'
export NCCL_SOCKET_IFNAME='bond0'

fabric run \
    --node-rank=0 \
    --main-address=172.16.23.120 \
    --accelerator=cuda \
    --num-nodes=4 \
    --devices=8 \
    litgpt/pretrain.py  --config configs/openwebmath_mistral.yaml