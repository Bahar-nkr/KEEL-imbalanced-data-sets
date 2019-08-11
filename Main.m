clear all;clc
dataset_name = 'KEEL';
ktimes = 5; % 5FCV,fixed
index = 75; % number of data sets in KEEL file
for i_index = 1:length(index)
    load([KEEL,'.mat']);
    file_name = eval([KEEL,'{',num2str(index(i_index)),',1}']); % reads the data set's name
    for i_cv = 1:ktimes %iteration on 5 folds
        train_all = eval([dataset_name,'{',num2str(index(i_index)),',3}{',num2str(i_cv),',1}']);
        test_all = eval([dataset_name,'{',num2str(index(i_index)),',3}{',num2str(i_cv),',2}']);
        train_all(:,end) = train_all(:,end);
        test_all(:,end) = test_all(:,end);
        train=train_all(:,1:end-1);train_labels=train_all(:,end);
        test=test_all(:,1:end-1);test_labels=test_all(:,end);
        
        %%%%%%%%%%%%%%%%%%%%%%%%%% The algorithm comes here %%%%%%%%%%%%%%%%%%%%%%%%%%
    end
end


