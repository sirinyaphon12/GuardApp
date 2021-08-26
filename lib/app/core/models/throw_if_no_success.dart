
class ThrowIfNoSuccess {
  late int? status;
  late Result? result;
  late String? message;
  late int? code;
  late String? path;
  late String? method;
  late String? timestamp;

  ThrowIfNoSuccess(
      {  this.status,
          this.result,
          this.message,
         this.code,
         this.path,
         this.method,
         this.timestamp});

  ThrowIfNoSuccess.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    result =
    (json['result'] != null ? new Result.fromJson(json['result']) : null)!;
    message = json['message'];
    code = json['code'];
    path = json['path'];
    method = json['method'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['message'] = this.message;
    data['code'] = this.code;
    data['path'] = this.path;
    data['method'] = this.method;
    data['timestamp'] = this.timestamp;
    return data;
  }
}


class Result {
  // Error error;
  late Object error;
  Result({required this.error});

  Result.fromJson(Map<String, dynamic> json) {
    // error = json['error'] != null ? new Error.fromJson(json['error']) : null;
    if(json['error'] is String){
      error = json['error'];
    }else{
      error = (json['error'] != null ? new Error.fromJson(json['error']) : null)!;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    return data;
  }
}

class Error {
  late String response;
  late int status;
  late String message;

  Error({required this.response, required this.status, required this.message});

  Error.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    status = json['status'];
    message = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['status'] = this.status;
    data['error'] = this.message;
    return data;
  }
}

