import 'dart:convert';
import 'dart:io';


String list(String path) {
	try {
		Directory root = new Directory(path);
		String newPath = "";
		if(root.existsSync()) // exists sync includes a future version of Future
			// thing. Batteries included
			{
				for(FileSystemEntity f in root.listSync()) {
					newPath += f.path;
				}
		}
		return newPath;
		
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

String readFile(String file){
	try {
		File f = new File(file);
		return f.readAsStringSync();
	}
	catch (e){
		print(e.toString());
	}
}

List<String> readLines(String file){
	try {
		File f = new File(file);
		return f.readAsLinesSync();
	}
	
	catch (e) {
		print(e.toString());
	}
}

main(List<String> arguments) {
	String path = '/';
	
	String txt = "/home/angeloem/Videos/test.txt";
	
	if (writeFile(txt, list(path)+ "\n", FileMode.append)) {
		print(readFile(txt));
		List<String> list = readLines(txt);
		print(list.length);
	}
}
