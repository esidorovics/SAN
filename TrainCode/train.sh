python main.py --data_train lala --n_train 82355 --scale 2 --dir_data /home/ubuntu/data/sr/patches 
            --data_test lala --patch_size=96 --n_resgroups 20 --n_resblocks 10 --n_feats 64  
            --reset --chop --save_results --print_model --load=test

python main.py --data_train lala --n_train 82355 --scale 2 --dir_data /home/ubuntu/data/sr/patches 
            --data_test lala --patch_size=96 --n_resgroups 20 --n_resblocks 10 --n_feats 64  
            --reset --chop --save_results --print_model --load=test --test_only



python main.py --data_train lala --scale 2 --dir_data /home/ubuntu/data/sr/patches --data_test lala --patch_size=96 --n_resgroups 20 --n_resblocks 10 --n_feats 64 --chop --save_results --print_model --test_only --pre_train ../experiment/test/model/model_latest.pt

python main.py  --model san --data_test MyImage  --save `save_name`  --scale 2 --n_resgroups 20 
            --n_resblocks 10 --n_feats 64 --reset --chop --save_results --test_only --testpath 'your path' 
            --testset Set5  --pre_train ../experiment/test/model/model_best.pt  