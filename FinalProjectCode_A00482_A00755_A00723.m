smkf = smk(smk.smoking == 0.0, :);
smkt = smk(smk.smoking == 1.0, :);
%%
part1 = cvpartition(height(smk), "HoldOut", 0.50)
idxtest1 = test(part1)
smkNew = smk(idxtest1, :)
%% 
% Undersampling for 0

part = cvpartition(height(smkf), "HoldOut", 0.58)

idxtest = test(part)

smkFalseNew = smkf(idxtest, :)

smkUnderSample = vertcat(smkt, smkFalseNew)