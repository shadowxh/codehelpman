import os
import os.path
rootdir="./other";

for parent,dirnames,filenames in os.walk(rootdir):
	for filename in filenames:
		id=filename[5:-5];
		lines=[];
		fp=open(os.path.join(parent,filename),"r");
		for line in fp:
			if '<li class="active"><a href="other/index0.html">主页</a></li>' in line:
				lines.append('<li class="active"><a href="other/index'+str(int(id)+1)+'.html">主页</a></li>');
			else:
				lines.append(line);
		fp.close();
		fp=open(os.path.join(parent,filename),"w");
		fp.writelines(lines);
