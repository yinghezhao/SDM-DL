function matlabbatch = Batch_PreProcess_SR_3echoes(dir_funcraw1, dir_func1, dir_funcraw2, dir_func2, dir_funcraw3, dir_func3)
matlabbatch{1}.spm.util.split.vol = {[dir_funcraw1 ',1']};
matlabbatch{1}.spm.util.split.outdir = {dir_func1};
matlabbatch{2}.spm.util.split.vol = {[dir_funcraw2 ',1']};
matlabbatch{2}.spm.util.split.outdir = {dir_func2};
matlabbatch{3}.spm.util.split.vol = {[dir_funcraw3 ',1']};
matlabbatch{3}.spm.util.split.outdir = {dir_func3};
matlabbatch{4}.spm.spatial.realign.estimate.data{1}(1) = cfg_dep('4D to 3D File Conversion: Series of 3D Volumes', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','splitfiles'));
matlabbatch{4}.spm.spatial.realign.estimate.eoptions.quality = 0.9;
matlabbatch{4}.spm.spatial.realign.estimate.eoptions.sep = 4;
matlabbatch{4}.spm.spatial.realign.estimate.eoptions.fwhm = 5;
matlabbatch{4}.spm.spatial.realign.estimate.eoptions.rtm = 1;
matlabbatch{4}.spm.spatial.realign.estimate.eoptions.interp = 2;
matlabbatch{4}.spm.spatial.realign.estimate.eoptions.wrap = [0 0 0];
matlabbatch{4}.spm.spatial.realign.estimate.eoptions.weight = '';
matlabbatch{5}.spm.temporal.st.scans{1}(1) = cfg_dep('4D to 3D File Conversion: Series of 3D Volumes', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','splitfiles'));
matlabbatch{5}.spm.temporal.st.scans{2}(1) = cfg_dep('4D to 3D File Conversion: Series of 3D Volumes', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','splitfiles'));
matlabbatch{5}.spm.temporal.st.scans{3}(1) = cfg_dep('4D to 3D File Conversion: Series of 3D Volumes', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','splitfiles'));
matlabbatch{5}.spm.temporal.st.nslices = 34;
matlabbatch{5}.spm.temporal.st.tr = 2;
matlabbatch{5}.spm.temporal.st.ta = 1.94;
matlabbatch{5}.spm.temporal.st.so = [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34];
matlabbatch{5}.spm.temporal.st.refslice = 17;
matlabbatch{5}.spm.temporal.st.prefix = 'a';
matlabbatch{6}.spm.spatial.realign.write.data(1) = cfg_dep('Slice Timing: Slice Timing Corr. Images (Sess 1)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','files'));
matlabbatch{6}.spm.spatial.realign.write.roptions.which = [2 1];
matlabbatch{6}.spm.spatial.realign.write.roptions.interp = 4;
matlabbatch{6}.spm.spatial.realign.write.roptions.wrap = [0 0 0];
matlabbatch{6}.spm.spatial.realign.write.roptions.mask = 1;
matlabbatch{6}.spm.spatial.realign.write.roptions.prefix = 'r';
matlabbatch{7}.spm.spatial.realign.write.data(1) = cfg_dep('Slice Timing: Slice Timing Corr. Images (Sess 2)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{2}, '.','files'));
matlabbatch{7}.spm.spatial.realign.write.roptions.which = [2 1];
matlabbatch{7}.spm.spatial.realign.write.roptions.interp = 4;
matlabbatch{7}.spm.spatial.realign.write.roptions.wrap = [0 0 0];
matlabbatch{7}.spm.spatial.realign.write.roptions.mask = 1;
matlabbatch{7}.spm.spatial.realign.write.roptions.prefix = 'r';
matlabbatch{8}.spm.spatial.realign.write.data(1) = cfg_dep('Slice Timing: Slice Timing Corr. Images (Sess 3)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{3}, '.','files'));
matlabbatch{8}.spm.spatial.realign.write.roptions.which = [2 1];
matlabbatch{8}.spm.spatial.realign.write.roptions.interp = 4;
matlabbatch{8}.spm.spatial.realign.write.roptions.wrap = [0 0 0];
matlabbatch{8}.spm.spatial.realign.write.roptions.mask = 1;
matlabbatch{8}.spm.spatial.realign.write.roptions.prefix = 'r';
matlabbatch{9}.spm.util.cat.vols(1) = cfg_dep('Realign: Reslice: Resliced Images', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rfiles'));
matlabbatch{9}.spm.util.cat.name = '4D_Realigned.nii';
matlabbatch{9}.spm.util.cat.dtype = 0;
matlabbatch{9}.spm.util.cat.RT = NaN;
matlabbatch{10}.spm.util.cat.vols(1) = cfg_dep('Realign: Reslice: Resliced Images', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rfiles'));
matlabbatch{10}.spm.util.cat.name = '4D_Realigned.nii';
matlabbatch{10}.spm.util.cat.dtype = 0;
matlabbatch{10}.spm.util.cat.RT = NaN;
matlabbatch{11}.spm.util.cat.vols(1) = cfg_dep('Realign: Reslice: Resliced Images', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','rfiles'));
matlabbatch{11}.spm.util.cat.name = '4D_Realigned.nii';
matlabbatch{11}.spm.util.cat.dtype = 0;
matlabbatch{11}.spm.util.cat.RT = NaN;
end