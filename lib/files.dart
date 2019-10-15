import 'dart:convert';
import 'dart:io';


void list(String path) {
	try {
		Directory root = new Directory(path);
		if(root.existsSync()) // exists sync includes a future version of Future
			// thing. Batteries included
			{
				for(FileSystemEntity f in root.listSync()) {
					print(f.path);
				}
		}
	}
	
	catch (e) {
		print(e);
	}
}

bool writeFile(String file, String data, FileMode mode) {
	try {
		File f = new File(file);
		RandomAccessFile rf = f.openSync(mode: mode);
		rf.writeStringSync(data);
		rf.flushSync();
		rf.closeSync();
		return true;
	}
	catch (e) {
		print(e.toString());
		return false;
	}
}

main(List<String> arguments) {
	String path = '/';
	list(path);
}
