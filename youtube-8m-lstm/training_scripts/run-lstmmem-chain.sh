
CUDA_VISIBLE_DEVICES=1 python train.py \
	--train_dir="../model/lstmmemory1024_moe8_chain/" \
	--train_data_pattern="/Youtube-8M/data/frame/train/train*" \
	--moe_num_mixtures=8 \
	--model=LstmMemoryChainModel \
	--frame_features=True \
	--feature_names="rgb,audio" \
	--feature_sizes="1024,128" \
	--lstm_layers=2 \
	--lstm_cells=1024 \
	--multitask=True \
	--num_supports=25 \
	--num_verticals=25 \
	--vertical_file="resources/vertical.tsv" \
	--label_loss=MultiTaskCrossEntropyLoss \
	--base_learning_rate=0.0008 \
	--vertical_loss_percent=0.4 \
	--num_readers=2 \
	--batch_size=96

